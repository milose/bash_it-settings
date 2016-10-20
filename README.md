# bash_it-settings
Custom themes (with bash_it) and aliases for development and vm boxes. To sync aliases just run `bsync` after installing.

## Install `bash_it`
Clone the repository to get it:
```bash
git clone --depth=1 https://github.com/Bash-it/bash-it.git ~/.bash_it
~/.bash_it/install.sh
```

Or, if you already have `bash_it`, pull it to update:
```bash
cd ~/.bash_it && git pull
```

## Get custom bash settings and aliases
Clone my repository or fork it and make your changes and customisations.
```bash
cd ~/.bash_it/custom
git init .
git remote add origin https://github.com/milose/bash_it-settings.git
git pull origin master
```
<!--
Link the custom.bash to the custom bash_it directory
```bash
ln -s ~/.bash_it-settings/custom.bash ~/.bash_it/custom/custom.bash
```

Optionally, link the mac.bash (with Mac specific aliases)
```bash
ln -s ~/.bash_it-settings/mac.bash ~/.bash_it/custom/mac.bash
```

Optionally, link the pi.bash (with Raspberry Pi specific aliases)
```bash
ln -s ~/.bash_it-settings/pi.bash ~/.bash_it/custom/pi.bash
``` -->

Reload the profile
```bash
reload
# # Debian / Ubuntu
# source ~/.bashrc
# # Some other distros
# source ~/.profile
# # Mac
# source ~/.bash_profile
```

Updating ailases
```bash
bsync
```
