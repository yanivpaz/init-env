# Quick script to install relevant software in cloudshell 
# run the following command :

sudo pip3 install  awscli --upgrade 

if [ ! -f /usr/local/bin/scheduler-cli ]
then
 sudo pip3 install --upgrade --force-reinstall setuptools
 sudo  pip3 install testresources --upgrade
 curl -LO https://s3.amazonaws.com/solutions-reference/aws-instance-scheduler/latest/scheduler-cli.zip
 unzip -o scheduler-cli.zip
 sudo -E python3 setup.py install
 rm -f scheduler-cli.zip
fi 

if [ ! -f /usr/local/bin/awslogs ]
then
 echo "Installing awslogs"
 sudo pip3 install awslogs --upgrade
fi

# example
# awslogs get scheduler-instance-logs -S  -G --timestamp -w

