#! /usr/bin/bash

function create_users {
  password="test"
  usernames=(steve bill robert don john)
  for user in ${usernames[@]}
  do
    # create user
    useradd $user

    # set user password
    echo "$user:$password" | chpasswd
  done
}

function delete_users {
  usernames=(steve bill robert don john)
  for user in ${usernames[@]}
  do
    # delete user
    userdel -r $user
  done
}

while true
do
  echo "your options are:"
  echo "1. create users"
  echo "2. delete users"
  echo "3. exit"
  read choice
  case $choice in
    1)
      create_users
      ;;

    2)
      delete_users
      ;;

    *)
      echo "bye bye.."
      break
  esac
done
