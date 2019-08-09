Question 1: how many hits were made to the page /assets/js/the-associates.js ?
    my_mapper_by_page.py 
    my_reducer.py
    
  - hadoop fs -mkdir /bdaLab82/Weblog-py
  - cd Desktop/
  - hadoop fs -put test_access_log /bdaLab82/Weblog-py
  - hadoop jar /usr/local/hadoop/share/hadoop/tools/lib/hadoop-streaming-2.7.3.jar -file my_mapper_by_page.py -mapper my_mapper_by_page.py -file my_reducer.py -reducer my_reducer.py -input /bdaLab82/Weblog-py/test_access_log -output /bdaLab82/Weblog-py/output
  - hadoop fs -cat /bdaLab82/Weblog-py/output/part-00000

