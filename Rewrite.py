import csv
import random

# This script was used to add random values to the previous input as cost 

destinations = []
with open('Destinations.txt', 'r') as file:
    reader = csv.reader(file, delimiter='\t')
    for index, row in enumerate(reader):
        if index > 9:
            break
        # if len(row) == 0:
        #     continue
        # destinations.append(row)
        print(row)
print(destinations)