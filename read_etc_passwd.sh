#! /bin/bash

FILE=/etc/passwd
read -p "Grep user: " username
infos=$(grep "$username" $FILE)

# echo "$userinfo"
old_IFS=$IFS
IFS=$'\n'

for info in $infos; do
    echo "*******************"
    IFS=$:
    read user password uid gid fullname home shell <<<"$info"
    echo "user -> $user"
    echo "password -> $password"
    echo "uid -> $uid"
    echo "gid -> $gid"
    echo "fullname -> $fullname"
    echo "home -> $home"
    echo "shell -> $shell"
    IFS=$'\n'
done

IFS=$old_IFS