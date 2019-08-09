what is the most popular file on the website (the file whose path occurs most often in access_log)? The number of occurrences?
  my_mapper_by_page2.py
  my_reducer2.py


  - hadoop fs -mkdir /bdaLab82/Weblog-py
  - cd Desktop/
  - hadoop fs -put test_access_log /bdaLab82/Weblog-py
  - hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -file my_mapper_by_page2.py -mapper my_mapper_by_page2.py -file my_reducer2.py -reducer my_reducer2.py -input /bdaLab82/Weblog-py/test_access_log -output /bdaLab82/Weblog-py/output3
  - hadoop fs -cat /bdaLab82/Weblog-py/output3/part-00000
