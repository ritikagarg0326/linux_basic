#!/bin/bash

# Print the current directory (pwd)
echo "Current Directory:"
pwd
echo

# List files and directories (ls)
echo "Listing Files and Directories:"
ls
echo

# Change directory (cd) to /tmp and print the new directory
echo "Changing Directory to /tmp:"
cd /tmp
pwd
echo

# Make a new directory (mkdir)
echo "Creating Directory 'new_folder':"
mkdir new_folder
echo

# Create a new file (touch)
echo "Creating File 'new_file.txt':"
touch new_file.txt
echo

# Copy the file (cp)
echo "Copying 'new_file.txt' to 'new_folder/':"
cp new_file.txt new_folder/
echo

# Move or rename the file (mv)
echo "Renaming 'new_file.txt' to 'renamed_file.txt':"
mv new_file.txt renamed_file.txt
echo

# Remove the copied file (rm)
echo "Removing the copied file in 'new_folder':"
rm new_folder/new_file.txt
echo

# Display contents of a file (cat)
echo "Displaying contents of 'renamed_file.txt':"
echo "Hello, World!" > renamed_file.txt
cat renamed_file.txt
echo

# Change file permissions (chmod)
echo "Changing permissions of 'renamed_file.txt' to 755:"
chmod 755 renamed_file.txt
ls -l renamed_file.txt
echo

# Change file ownership (chown) - requires sudo, skipped for this example
# echo "Changing ownership of 'renamed_file.txt' to 'root':"
# sudo chown root:root renamed_file.txt
# ls -l renamed_file.txt
# echo

# Display active processes (ps)
echo "Displaying active processes:"
ps aux | head -n 5
echo

# Kill a process (kill) - Requires a valid PID, skipped for this example
# echo "Killing a process with PID 1234 (example, won't actually kill):"
# kill 1234

# Show disk usage (df)
echo "Showing disk space usage:"
df -h
echo

# Show system processes (top) - Running it for 2 seconds then exiting
echo "Displaying system processes:"
top -b -n 1 | head -n 10
echo

# Cleanup
echo "Cleaning up created files and directories:"
rm renamed_file.txt
rmdir new_folder
echo "Done."
