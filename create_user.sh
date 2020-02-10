#!/bin/bash
# Execute with sudo


# Create User <USERNAME>
dscl . -create /Users/<USERNAME>
dscl . -create /Users/<USERNAME> UserShell /bin/bash
dscl . -create /Users/<USERNAME> RealName “<REALNAME>”
dscl . -create /Users/<USERNAME> UniqueID <USER_ID>
dscl . -create /Users/<USERNAME> PrimaryGroupID <USER_ID>
dscl . -create /Users/<USERNAME> NFSHomeDirectory /Users/<USERNAME>

# Create group <USERNAME>
dscl . -create /Groups/<USERNAME>
dscl . -create /Groups/<USERNAME> gid <GROUP_ID>

# Append user to group membership
dscl . -append /Groups/<USERNAME> GroupMembership <USERNAME>

# Set a password for <USERNAME> (keep this stored somewhere)
passwd <USERNAME> # (enter password twice)
