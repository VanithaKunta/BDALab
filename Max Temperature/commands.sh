# create directory in HDFS file system

hadoop fs -mkdir /bdaLab82
hadoop fs -mkdir /bdaLab82/maxTemperature

# To put input file in hdfs file system

hadoop fs -put /home/hduser082/Desktop/maxTemperature.txt /bdaLab82/maxTemperature/

# Execute jar file

hadoop jar ./Desktop/maxTemperature.jar MaxTempDriver /bdaLab82/maxTemperature/maxTemperature.txt /bdaLab82/maxTemperature/output

# To display contents of output file

hadoop fs -cat /bdaLab82/maxTemperature/output/part-r-00000
