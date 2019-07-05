# When NameNode is not found in jps

stop-dfs.sh
hadoop namenode -format
start-dfs.sh


/* jps
8897 SecondaryNameNode
5749 NodeManager
8455 NameNode
5402 ResourceManager
8652 DataNode
9036 Jps */

