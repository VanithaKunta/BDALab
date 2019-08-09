how many hits were made by the IP address 10.99.99.186 ?

 my_mapper_by_ip.py
 my_reducer.py

  - hadoop fs -mkdir /bdaLab82/Weblog-py
  - cd Desktop/
  - hadoop fs -put test_access_log /bdaLab82/Weblog-py
  - hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -file my_mapper_by_ip.py -mapper my_mapper_by_ip.py -file my_reducer.py -reducer my_reducer.py -input /bdaLab82/Weblog-py/test_access_log -output /bdaLab82/Weblog-py/output2
  - hadoop fs -cat /bdaLab82/Weblog-py/output2/part-00000
