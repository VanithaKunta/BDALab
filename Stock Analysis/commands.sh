# create directory in HDFS file system

hadoop fs -mkdir /bdaLab82
hadoop fs -mkdir /bdaLab82/stockanalysis

# To put input file in hdfs file system

hadoop fs -put /home/hduser082/Desktop/stocks.txt /bdaLab82/stockanalysis/

# Execute jar file

hadoop jar ./Desktop/stockanalysis.jar MaxClosePrice /bdaLab82/stockanalysis/stocks.txt /bdaLab82/stockanalysis/output

# To display contents of output file

hadoop fs -cat /bdaLab82/stockanalysis/output/part-r-00000
