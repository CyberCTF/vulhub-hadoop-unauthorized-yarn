# Vulhub's hadoop/unauthorized-yarn (in ../../app/) runs the nodemanager from vulhub/hadoop:2.8.1
# with these environment values and command in its compose file. Isoloom has no
# `environment:` nor `command:`, so this image bakes the same values in. Nothing else differs.
FROM vulhub/hadoop:2.8.1
ENV CORE_CONF_fs_defaultFS=hdfs://namenode:8020 \
    YARN_CONF_yarn_resourcemanager_hostname=resourcemanager \
    YARN_CONF_yarn_log___aggregation___enable=true \
    YARN_CONF_yarn_nodemanager_remote___app___log___dir=/app-logs
CMD ["/nodemanager.sh"]
