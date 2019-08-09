# copy word.txt, mapper.py, reducer.py to Desktop

touch word.txt

# create  directory in hdfs file system
    hadoop fs -mkdir -p /bdaLab82/WordCount-py

# copy local file to hdfs file system
    hadoop fs -copyFromLocal word.txt /bdaLab82/WordCount-py

# exceute jar file
    hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -file mapper.py -mapper mapper.py -file reducer.py -reducer reducer.py -input /bdaLab82/WordCount-py/word.txt -output /bdaLab82/WordCount-py/output


# to display contents of ouput file
    hadoop fs -cat /bdaLab82/WordCount-py/output/part-00000
