# Vulhub's hadoop/unauthorized-yarn (in ../../app/) runs the datanode from vulhub/hadoop:2.8.1
# with these environment values and command in its compose file. Isoloom has no
# `environment:` nor `command:`, so this image bakes the same values in. Nothing else differs.
FROM vulhub/hadoop:2.8.1
ENV HDFS_CONF_dfs_datanode_data_dir=file:///hadoop/dfs/data \
    CORE_CONF_fs_defaultFS=hdfs://namenode:8020 \
    CLUSTER_NAME=vulhub \
    HDFS_CONF_dfs_replication=1
CMD ["/datanode.sh"]
