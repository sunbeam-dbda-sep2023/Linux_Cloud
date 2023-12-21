## exercise 1

```bash

# create 3 users
> sudo useradd user1
> sudo useradd user2
> sudo useradd user3

# create a group
> sudo groupadd group1
> sudo groupadd group2

# set group1 as supplementary group for all these users
> sudo usermod -aG group1 user1
> sudo usermod -aG group1 user2
> sudo usermod -aG group1 user3

# change primary group of user to group2
> sudo usermod -g group2 user1
> sudo usermod -g group2 user2
> sudo usermod -g group2 user3

```

## exercise 2

```bash

# create a group named frozen
> sudo groupadd frozen

# create three users name ana, elsa and olaf
> sudo useradd ana
> sudo useradd elsa
> sudo useradd olaf

# change the supplementary groups of all these users to frozen
> sudo usermod -aG frozen ana
> sudo usermod -aG frozen elsa
> sudo usermod -aG frozen olaf

# create group name boys and set it as primary group of olaf
> sudo groupadd boys
> sudo usermod -g boys olaf

# create group named girls and set it as primary group of ana and elsa
> sudo groupadd girls
> sudo usermod -g girls ana
> sudo usermod -g girls elsa

# delete all the users and groups
> sudo userdel ana
> sudo userdel elsa
> sudo userdel olaf
> sudo groupdel boys
> sudo groupdel girls
> sudo groupdel frozen


```
