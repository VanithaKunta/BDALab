# to create a directory
hadoop fs -mkdir /dir1

# to create a file
sudo gedit hello.txt

# to display contents of file
cat hello.txt

# to display files 
ls

# to move file from home directory to hadoop directory 
hadoop fs -put hello.txt /dir1
