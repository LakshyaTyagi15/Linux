# Use this if internet speed on Arch linux is low

sudo pacman -S reflector

sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak

sudo reflector --verbose --latest 10 --protocol https --sort rate --save /etc/pacman.d/mirrorlist

# Use Mirror closer to India
sudo reflector --country IN --country SG --country DE --protocol https --sort rate --save /etc/pacman.d/mirrorlist

# Increase time limit of Mirror
sudo reflector --verbose --latest 20 --protocol https --sort rate --save /etc/pacman.d/mirrorlist --download-timeout 15
