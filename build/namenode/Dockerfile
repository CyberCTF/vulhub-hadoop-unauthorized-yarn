# Vulhub's hadoop/unauthorized-yarn (in ../../app/) runs the namenode from vulhub/hadoop:2.8.1
# with these environment values and command in its compose file. Isoloom has no
# `environment:` nor `command:`, so this image bakes the same values in. Nothing else differs.
FROM vulhub/hadoop:2.8.1
ENV HDFS_CONF_dfs_namenode_name_dir=file:///hadoop/dfs/name \
    CLUSTER_NAME=vulhub \
    HDFS_CONF_dfs_replication=1
CMD ["/namenode.sh"]
