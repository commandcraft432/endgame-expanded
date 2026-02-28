import json
import sys
import os

# Currently only works on my system

os.chdir('/home/zach/Desktop/Prism Launcher Instances/25w43a/minecraft/saves/New World/datapacks/Endgame Expanded/assets/endgame_expanded/models/sphere')
print(os.getcwd())
full_file_count = int(input("Number of files to process: "))

def remove_shade(data):
	decompiled_data = json.loads(data)
	decompiled_data['elements'][0]['shade'] = False
	return json.dumps(decompiled_data, indent=2)

for i in range(full_file_count):
	filename = str(i) + ".json"
	with open(filename, 'r') as file:
		global data
		data = file.read()
	with open(filename, 'w') as file:
		file.write(remove_shade(data))
	print(f"{i+1}/{full_file_count}")
	

print("Done!")