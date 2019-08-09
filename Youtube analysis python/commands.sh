Top 5 categories


hadoop fs -mkdir /bdaLab82/youtube_analysis
hadoop fs -put /home/hduser082/Desktop/youtubedata.txt /bdaLab82/youtube_analysis
hadoop jar ./Desktop/top5categories.jar Top5_categories /bdaLab82/youtube_analysis/youtubedata.txt /bdaLab82/youtube_analysis/top5categories_output
hadoop fs -cat /bdaLab82/youtube_analysis/top5categories_output/part-r-00000
