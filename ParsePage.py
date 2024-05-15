import re
#import requests
import json

# Open the file
with open('Page1.txt', 'r', encoding='UTF8') as file1, open('Page2.txt', 'r', encoding='UTF8') as file2:
    data = file1.read() + file2.read()

# Define the regular expression for getting list of Destinations
regex = r'vAUKO.*?<span.*?<span.*?<span'

# Find matches
matches = re.findall(regex, data)

# Parse matches and clean data
destinations = ''
destinations_list = []
for match in matches:
    indexEnd = match.rfind(r'<span')
    indexStart = match.rfind(r'</span') + len(r'</span') + 1
    destination = match[indexStart:indexEnd]
    destination = destination.replace("&amp;amp;", "&")
    destination = destination.replace("&amp;#x27;", "'")
    destinations = destinations + destination + '\n'
    destinations_list.append(destination)

with open('Destinations.txt', 'w', encoding='UTF8') as file:
    file.write(destinations)

# Call Location Search API from TripAdvisor to get location id, use location id to call Location Details API and get all location related information
location_search = ""
location_details = ""
for destination in destinations_list:
    destination = destination.replace(" ", "%20")
    url = "https://api.content.tripadvisor.com/api/v1/location/search?searchQuery=" + destination + "&address=New%20York%20City&language=en&key=91E90DEA06AF41CD92C898236D3D26AD"
    headers = {"accept": "application/json"}
    response = requests.get(url, headers=headers)
    data = json.loads(response.text)
    location_id = data['data'][0]['location_id']
    location_search = location_search + ',\n' + response.text

    url = "https://api.content.tripadvisor.com/api/v1/location/" + location_id + "/details?language=en&currency=USD&key=91E90DEA06AF41CD92C898236D3D26AD"
    headers = {"accept": "application/json"}
    response = requests.get(url, headers=headers)
    location_details = location_details + ',\n' + response.text    

location_search = location_search[1:]
location_details = location_details[1:]

with open('Location_Search.txt', 'w', encoding='UTF8') as file1, open('Location_Details.txt', 'w', encoding='UTF8') as file2:
    file1.write(location_search)
    file2.write(location_details)

co_ordinates = {}
destination_str = ''
with open('Location_Details.txt', 'r', encoding='UTF8') as file1:
    data = file1.read()
    data = "[" + data + "]"
    jsonData = json.loads(data)
    for destination in jsonData:
        co_ordinates[destination['name']] = [destination["latitude"], destination["longitude"]]
        destination_str += destination['name'] + "\t" + destination["latitude"] + "\t" + destination["longitude"] + "\n"

with open('Destinations.txt', 'w', encoding='UTF8') as file1:
    file1.write(destination_str)
