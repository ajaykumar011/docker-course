  
#!/bin/bash

__create_user() {
# Create a user to SSH into as.
USER_NAME=ajay
useradd $USER_NAME
SSH_USERPASS=iaviiavi
SSH_ROOTPASS=redhat
echo -e "$SSH_USERPASS\n$SSH_USERPASS" | (passwd --stdin $USER_NAME)
echo -e "$SSH_ROOTPASS\n$SSH_ROOTPASS" | (passwd --stdin root)
echo ssh $USER_NAME password: $SSH_USERPASS
echo ssh root password: $SSH_ROOTPASS
}

# Call all functions
__create_user