node("Central Park", 11) .
node("The National 9/11 Memorial & Museum", 24) .
node("The Metropolitan Museum of Art", 20) .
node("Empire State Building", 23) .
node("The High Line", 19) .
node("Broadway", 10) .
node("Top of the Rock", 27) .
node("Brooklyn Bridge", 9) .
node("Statue of Liberty", 14) .
node("Grand Central Terminal", 22) .
edge("Stony Brook", "Grand Central Terminal", 90).
edge("Central Park", "The National 9/11 Memorial & Museum", 71) .
edge("Central Park", "The Metropolitan Museum of Art", 2) .
edge("Central Park", "Empire State Building", 32) .
edge("Central Park", "The High Line", 47) .
edge("Central Park", "Broadway", 24) .
edge("Central Park", "Top of the Rock", 22) .
edge("Central Park", "Brooklyn Bridge", 71) .
edge("Central Park", "Statue of Liberty", 100) .
edge("Central Park", "Grand Central Terminal", 27) .
edge("The National 9/11 Memorial & Museum", "Central Park", 71) .
edge("The National 9/11 Memorial & Museum", "The Metropolitan Museum of Art", 71) .
edge("The National 9/11 Memorial & Museum", "Empire State Building", 38) .
edge("The National 9/11 Memorial & Museum", "The High Line", 25) .
edge("The National 9/11 Memorial & Museum", "Broadway", 46) .
edge("The National 9/11 Memorial & Museum", "Top of the Rock", 49) .
edge("The National 9/11 Memorial & Museum", "Brooklyn Bridge", 12) .
edge("The National 9/11 Memorial & Museum", "Statue of Liberty", 29) .
edge("The National 9/11 Memorial & Museum", "Grand Central Terminal", 45) .
edge("The Metropolitan Museum of Art", "Central Park", 2) .
edge("The Metropolitan Museum of Art", "The National 9/11 Memorial & Museum", 71) .
edge("The Metropolitan Museum of Art", "Empire State Building", 32) .
edge("The Metropolitan Museum of Art", "The High Line", 47) .
edge("The Metropolitan Museum of Art", "Broadway", 24) .
edge("The Metropolitan Museum of Art", "Top of the Rock", 21) .
edge("The Metropolitan Museum of Art", "Brooklyn Bridge", 70) .
edge("The Metropolitan Museum of Art", "Statue of Liberty", 99) .
edge("The Metropolitan Museum of Art", "Grand Central Terminal", 26) .
edge("Empire State Building", "Central Park", 32) .
edge("Empire State Building", "The National 9/11 Memorial & Museum", 38) .
edge("Empire State Building", "The Metropolitan Museum of Art", 32) .
edge("Empire State Building", "The High Line", 17) .
edge("Empire State Building", "Broadway", 8) .
edge("Empire State Building", "Top of the Rock", 10) .
edge("Empire State Building", "Brooklyn Bridge", 39) .
edge("Empire State Building", "Statue of Liberty", 67) .
edge("Empire State Building", "Grand Central Terminal", 7) .
edge("The High Line", "Central Park", 47) .
edge("The High Line", "The National 9/11 Memorial & Museum", 25) .
edge("The High Line", "The Metropolitan Museum of Art", 47) .
edge("The High Line", "Empire State Building", 17) .
edge("The High Line", "Broadway", 22) .
edge("The High Line", "Top of the Rock", 26) .
edge("The High Line", "Brooklyn Bridge", 31) .
edge("The High Line", "Statue of Liberty", 52) .
edge("The High Line", "Grand Central Terminal", 24) .
edge("Broadway", "Central Park", 24) .
edge("Broadway", "The National 9/11 Memorial & Museum", 46) .
edge("Broadway", "The Metropolitan Museum of Art", 24) .
edge("Broadway", "Empire State Building", 8) .
edge("Broadway", "The High Line", 22) .
edge("Broadway", "Top of the Rock", 4) .
edge("Broadway", "Brooklyn Bridge", 47) .
edge("Broadway", "Statue of Liberty", 75) .
edge("Broadway", "Grand Central Terminal", 7) .
edge("Top of the Rock", "Central Park", 22) .
edge("Top of the Rock", "The National 9/11 Memorial & Museum", 49) .
edge("Top of the Rock", "The Metropolitan Museum of Art", 21) .
edge("Top of the Rock", "Empire State Building", 10) .
edge("Top of the Rock", "The High Line", 26) .
edge("Top of the Rock", "Broadway", 4) .
edge("Top of the Rock", "Brooklyn Bridge", 49) .
edge("Top of the Rock", "Statue of Liberty", 78) .
edge("Top of the Rock", "Grand Central Terminal", 5) .
edge("Brooklyn Bridge", "Central Park", 71) .
edge("Brooklyn Bridge", "The National 9/11 Memorial & Museum", 12) .
edge("Brooklyn Bridge", "The Metropolitan Museum of Art", 70) .
edge("Brooklyn Bridge", "Empire State Building", 39) .
edge("Brooklyn Bridge", "The High Line", 31) .
edge("Brooklyn Bridge", "Broadway", 47) .
edge("Brooklyn Bridge", "Top of the Rock", 49) .
edge("Brooklyn Bridge", "Statue of Liberty", 36) .
edge("Brooklyn Bridge", "Grand Central Terminal", 44) .
edge("Statue of Liberty", "Central Park", 100) .
edge("Statue of Liberty", "The National 9/11 Memorial & Museum", 29) .
edge("Statue of Liberty", "The Metropolitan Museum of Art", 99) .
edge("Statue of Liberty", "Empire State Building", 67) .
edge("Statue of Liberty", "The High Line", 52) .
edge("Statue of Liberty", "Broadway", 75) .
edge("Statue of Liberty", "Top of the Rock", 78) .
edge("Statue of Liberty", "Brooklyn Bridge", 36) .
edge("Statue of Liberty", "Grand Central Terminal", 74) .
edge("Grand Central Terminal", "Central Park", 27) .
edge("Grand Central Terminal", "The National 9/11 Memorial & Museum", 45) .
edge("Grand Central Terminal", "The Metropolitan Museum of Art", 26) .
edge("Grand Central Terminal", "Empire State Building", 7) .
edge("Grand Central Terminal", "The High Line", 24) .
edge("Grand Central Terminal", "Broadway", 7) .
edge("Grand Central Terminal", "Top of the Rock", 5) .
edge("Grand Central Terminal", "Brooklyn Bridge", 44) .
edge("Grand Central Terminal", "Statue of Liberty", 74) .
start("Central Park") .
end("The Metropolitan Museum of Art") .
:- cost(C), C > 60 .
:- money(M), M > 44 .
