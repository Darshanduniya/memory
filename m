# Open the input file for reading and the output file for writing
with open("input.txt", "r") as infile, open("output.txt", "w") as outfile:
  # Keep track of seen wbnames
  seen_wbnames = set()
  for line in infile:
    # Split the line based on whitespace
    parts = line.split()
    # Extract the wbname (everything before the first .)
    wbname = parts[0]
    if wbname not in seen_wbnames:
      # Not a duplicate, write the line to the output file
      outfile.write(line)
      seen_wbnames.add(wbname)



++++++++++++++++++
# Dictionary to store occurrences of wbnames
wbnames = {}

# Open the input file for reading
with open('input_data.txt', 'r') as file:
    lines = file.readlines()

    # Iterate through each line in the file
    for line in lines:
        # Extract the wbname
        wbname = line.split('.')[0]

        # Check if this wbname has occurred before
        if wbname in wbnames:
            # If it has occurred, ignore this line
            continue
        else:
            # If it's a new wbname, store it and write the line to the output file
            wbnames[wbname] = True
            with open('non_duplicate_input_data.txt', 'a') as output_file:
                output_file.write(line)
