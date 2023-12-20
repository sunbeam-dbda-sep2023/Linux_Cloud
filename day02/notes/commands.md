# linux

## exercise 1

```bash

# create the following hierarchy
- /
  - tmp
    - files
      - audio
        - hindi
        - english
      - video
        - hindi
        - english
      - images
        - natures
        - cars

# go to the cars directory using
# - absolute path: /tmp/files/images/cars
# - relative path

```

## exercise 2

```bash

# create 3 users
# - ana with password ana
# - elsa with password elsa
# - olaf with password olaf

# set the login shell to bash
# login with each user and print the currently logged in user's name

# delete all the users

```

## users

```bash

# get the details of a user or check if user exists
> id <user name>

# create a new user
> sudo useradd <user name>

# change your password
> passwd

# change the password for a user
> sudo passwd <username>

# login with a user
> su <username>

# remove the user
# note: you can not delete the currently logged in user
> sudo userdel <username>

```

## process related commands

```bash

# get the list of processes
> ps aux

# kill a process by using its process id
> sudo kill <process id>

```
