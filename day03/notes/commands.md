# users and groups

## searching in the file

```bash

# search a pattern in a file
> cat /etc/group | grep group1
> grep group1 /etc/group

```

## users

```bash

# check if user exists
> id user1

# add a new user
> sudo useradd -d /home/user1 user1

# delete a user
> sudo userdel -r user1

# modify user to add a supplementary group
# -a: append
# -G: supplementary group
> sudo usermod -aG <group name>



```

## groups

```bash

# create a new group
> sudo groupadd group1

```
