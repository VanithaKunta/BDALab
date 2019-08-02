# create directory in HDFS file system

hadoop fs -mkdir /bdaLab82
hadoop fs -mkdir /bdaLab82/wordcount

# To put input file in hdfs file system

hadoop fs -put /home/hduser082/Desktop/wordcount.txt /bdaLab82/wordcount/

# Execute jar file

hadoop jar ./Desktop/wordcount.jar WordCount /bdaLab82/wordcount/wordcount.txt /bdaLab82/wordcount/output

# To display contents of output file

hadoop fs -cat /bdaLab82/wordcount/output/part-r-00000
