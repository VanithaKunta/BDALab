
# create directory in HDFS file system

hadoop fs -mkdir /bdaLab82
hadoop fs -mkdir /bdaLab82/HighestTemperature

# To put input file in hdfs file system

hadoop fs -put /home/hduser082/Desktop/TemperatureDataset /bdaLab82/HighestTemperature/

# Execute jar file

hadoop jar ./Desktop/highesttemperature.jar HighestDriver /bdaLab82/HighestTemperature/TemperatureDataset /bdaLab82/HighestTemperature/output

# To display contents of output file

hadoop fs -cat /bdaLab82/HighestTemperature/output/part-00000
