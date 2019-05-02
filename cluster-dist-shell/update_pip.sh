#pip install --upgrade pip
sudo pip install pyYaml
sudo pip install six
sudo yum install -y ant
wget https://pypi.python.org/packages/e2/e1/600326635f97fee89bf8426fef14c5c29f4849c79f68fd79f433d8c1bd96/psutil-5.4.3.tar.gz#md5=3b291833dbea631db9d271aa602a169a
tar zxvf psutil-5.4.3.tar.gz
cd psutil-5.4.3
sudo python setup.py install
cd ..
ccm create pcgtest --install-dir=/localfs/xyao/cassandra-trunk
ccm populate -n 8
echo "run -b org.apache.cassandra.service:type=PCGLatency enableConsistencyPredictionLogging" | java -jar ../benchmark/jmxterm-1.0-alpha-4-uber.jar -l 127.0.0.1:7100
./tools/bin/cassandra-stress write n=100000 -schema "replication(strategy=SimpleStrategy, factor=3)" -node 127.0.0.1 -port JMX=7100
./tools/bin/cassandra-stress read n=100000 -schema "replication(strategy=SimpleStrategy, factor=3)" -node 127.0.0.1 -port JMX=7100
ccm stop
