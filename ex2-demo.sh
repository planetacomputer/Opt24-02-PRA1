if [ ! -f /usr/local/bin/cockroach ]; then
    sudo wget -O /usr/local/bin/cockroachdb-v24-3-6.tgz https://binaries.cockroachdb.com/cockroach-v24.3.6.linux-amd64.tgz
    sudo tar -xvzf /usr/local/bin/cockroachdb-v24-3-6.tgz -C /usr/local/bin --strip-components=1
    source ~/.bashrc
    sudo rm -rf /usr/local/bin/cockroachdb-v24-3-6.tgz
fi
cockroach demo --nodes=9 --demo-locality=region=us-east,zone=us-east-1:region=us-east,zone=us-east-2:region=us-east,zone=us-east-3:region=us-west,zone=us-west-1:region=us-west,zone=us-west-2:region=us-west,zone=us-west-3:region=europe-west,zone=europe-west-1:region=europe-west,zone=europe-west-2:region=europe-west,zone=europe-west-3 --no-example-database
