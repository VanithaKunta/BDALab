# create directory in HDFS file system

hadoop fs -mkdir /bdaLab82
hadoop fs -mkdir /bdaLab82/WeblogAnalyzer

# To put input file in hdfs file system

hadoop fs -put /home/hduser082/Desktop/weblog-data-mr.txt /bdaLab82/WeblogAnalyzer/

# Execute jar file

hadoop jar ./Desktop/webloganalyzer.jar WeblogAnalyzer /bdaLab82/WeblogAnalyzer/stocks.txt /bdaLab82/WeblogAnalyzer/output

# To display contents of output file

hadoop fs -cat /bdaLab82/WeblogAnalyzer/output/part-r-00000
