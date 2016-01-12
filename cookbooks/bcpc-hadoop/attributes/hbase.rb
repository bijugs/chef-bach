default["bcpc"]["hadoop"]["hbase"]["repl"]["enabled"] = false
default["bcpc"]["hadoop"]["hbase"]["repl"]["peer_id"] =  node.chef_environment.gsub("-","_")
default["bcpc"]["hadoop"]["hbase"]["repl"]["target"] = ""
default["bcpc"]["hadoop"]["hbase"]["superusers"] = ["hbase"]
# Interval in milli seconds when HBase major compaction need to be run. Disabled by default
default["bcpc"]["hadoop"]["hbase"]["major_compact"]["time"] = 0
default["bcpc"]["hadoop"]["hbase"]["bucketcache"]["enabled"] = false
default["bcpc"]["hadoop"]["hbase_rs"]["coprocessor"]["abortonerror"] = true
default["bcpc"]["hadoop"]["hbase_rs"]["xmn"]["size"] = 256
default["bcpc"]["hadoop"]["hbase_rs"]["xms"]["size"] = 1024
default["bcpc"]["hadoop"]["hbase_rs"]["xmx"]["size"] = 1024
default["bcpc"]["hadoop"]["hbase_rs"]["mx_dir_mem"]["size"] = 256
default["bcpc"]["hadoop"]["hbase_rs"]["hdfs_dir_mem"]["size"] = 128
default["bcpc"]["hadoop"]["hbase_rs"]["memstore"]["upperlimit"] = 0.4
default["bcpc"]["hadoop"]["hbase_rs"]["memstore"]["lowerlimit"] = 0.2
default["bcpc"]["hadoop"]["hbase_rs"]["storefile"]["refresh"]["all"] = false
default["bcpc"]["hadoop"]["hbase_rs"]["storefile"]["refresh"]["period"] = 30000
default["bcpc"]["hadoop"]["hbase"]["blockcache"]["size"] = 0.4
default["bcpc"]["hadoop"]["hbase"]["bucketcache"]["size"] = 1434
default["bcpc"]["hadoop"]["hbase"]["bucketcache"]["ioengine"] = "offheap"
default["bcpc"]["hadoop"]["hbase"]["bucketcache"]["combinedcache"]["percentage"] = 0.71
default["bcpc"]["hadoop"]["hbase"]["shortcircuit"]["read"] = false
default["bcpc"]["hadoop"]["hbase"]["region"]["replication"]["enabled"] = false
default["bcpc"]["hadoop"]["hbase"]["region"]["replica"]["storefile"]["refresh"]["memstore"]["multiplier"] = 4
default["bcpc"]["hadoop"]["hbase"]["region"]["replica"]["wait"]["for"]["primary"]["flush"] = true
default["bcpc"]["hadoop"]["hbase"]["hregion"]["memstore"]["block"]["multiplier"] = 8
default["bcpc"]["hadoop"]["hbase"]["ipc"]["client"]["specificthreadforwriting"] = true
default["bcpc"]["hadoop"]["hbase"]["client"]["primarycalltimeout"]["get"] = 100000
default["bcpc"]["hadoop"]["hbase"]["client"]["primarycalltimeout"]["multiget"] = 100000
default["bcpc"]["hadoop"]["hbase"]["meta"]["replica"]["count"] = 3
default["bcpc"]["hadoop"]["hbase"]["ipc"]["warn"]["responsetime"] = 250
default["bcpc"]["hadoop"]["hbase_master"]["hfilecleaner"]["ttl"] = 3600000
default["bcpc"]["hadoop"]["hbase_master"]["jmx"]["port"] = 10101
default["bcpc"]["hadoop"]["hbase_rs"]["jmx"]["port"] = 10102
