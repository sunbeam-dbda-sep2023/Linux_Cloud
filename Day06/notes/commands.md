# AWS

## linux

```bash

# get the distribution release information
> lsb_release -a

```

## EC2

- Elastic Compute Cloud
- virtual machine using Type I virtualization (VMWare ESXi)
- EC2 instance => virtual machine
- AMI
  - Amazon Machine Image
  - disk image which contains the operating system
  - types
    - community (free)
      - Amazon Linux: centos based customized linux
        - username: ec2-user
      - Ubuntu 22.04 Server
        - username: ubuntu
    - paid

```bash

# attribute
# - name: MyVM
# - AMI: Ubuntu 22.04 Server
# - Architecture: 64-bit x86
# - instance type: t2.micro
# - key pair
#   - name: dbda-sept-2023
#   - type: RSA
#   - format: .pem
#   - this will download dbda-sept-2023.pem in your ~/Downloads directory
# - volume
#   - size: 8 GB
#   - type: gp2 SSD

# change the permissions of pem file
# > chmod 400 <pem file name>
> chmod 400 ~/Downloads/dbda-sept-2023.pem

# connect to the ec2 instance
# > ssh -i <pem file> <username>@<public ip address>
> ssh -i ~/Downloads/dbda-sept-2023.pem ubuntu@52.23.208.181

```

## SSH configuration

```bash

# install openssh
> sudo apt-get install openssh-server

# get the status of open ssh server
> sudo systemctl status sshd

# get the failure logs
# > sudo journalctl -xeu <service name>
> sudo journalctl -xeu sshd

# start the open ssh server
> sudo systemctl start sshd

# enable the open ssh server to start at booting
> sudo systemctl enable sshd

# connect to the other machine
# password-based login
# > ssh <username>@<ip address>
> ssh user1@172.18.4.87

# ssh password-less authentication
# make sure that you are on your own machine by using hostname
# generate a pair of keys (private and public keys)
> ssh-keygen
# notes: do not enter any passphrase
# this will create a pair of keys in ~/.ssh
# with name: id_rsa (private) and id_rsa.pub (public key)

# transfer your public key to the destination machine
> ssh-copy-id <user name>@<machine ip address>

```

## instance configuration

```bash

# update the apt cache
> sudo apt-get update

# install pip3
> sudo apt-get install python3-pip

# install mysql
> sudo apt-get install mysql-server

```

## sample flask application

```bash

# install flask
> pip3 install flask

```

```python

from flask import Flask

# create flask application
app = Flask(__name__)

# add the routes
@app.route("/", methods=["GET"])
def root():
    return "welcome to my python application"

# start the flask server
app.run(host="0.0.0.0", port=4000, debug=True)

```

```bash

# security group
# - firewall implemented by AWS to protect the EC2 instance
# - by default it works with the policy: implicit deny
# - to open the required port:
#   - select instance on management console
#   - go to the security tab and select the security group
#   - click the button "Edit Inbound Rules"
#   - add a rule
#     - type: custom TCP
#     - port range: 4000
#     - source: Anywhere ipv4
```

```bash

# run the application
> python3 server.py

# test the application in other tab
> curl http://localhost:4000

```

## deployment

```bash

# please please please execute these commands from your LOCAL machine

# archive the files
# -c: create
# -v: verbose
# -f: file name
# > tar -cvf <file name>.tar <list of files or directories>
> tar -cvf ui.tar ui

# upload the file to the server
# > scp -i <pem file> <source file> <username>@<public ip>:<destination>
> scp -i ~/Downloads/dbda-sept-2023.pem ui.tar ubuntu@52.55.97.155:~/

# please please please execute the following commands from ec2 instance
# (connect to the ec2 instance using ssh command - refer line no 50)

# untar or unarchive the file
# -x: extract
# > tar -xvf <file name>
> tar -xvf ui.tar

# install required packages
> pip3 install numpy pandas scikit-learn

# start the application
> cd ui
> python3 server.py

```
