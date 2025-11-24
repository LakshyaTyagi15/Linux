# chown is used to change ownership 
# chown [options] user:group file
# user → the new owner
# group → the new group
# file → the file/directory to modify

#Example:-
sudo chown root:root /opt/visual-studio-code/chrome-sandbox


# chmod is used to change mode or permission
# Linux divides permissions into three groups:
# User (u) → the owner of the file
# Group (g) → users who belong to the file’s group\
# Others (o) → everyone else
# And each of them can be given permissions:
# r → read
# w → write
# x → execute

# Example:-
sudo chmod 4755 /opt/visual-studio-code/chrome-sandbox
