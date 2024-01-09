# Command-Line-QOL
Lab presentation on improving command-line quality of life (QOL) (Jan 15th)


# Part 1: Customizing your Command-Line

## ssh shortcuts

### 1. Have your ssh login informatoin on hand. (i.e. username, ip address, and Alliance host such as Graham, Beluga, Narval, etc..)
### 2. Open your linux or mac terminal
### 3. Open or create an ssh config (with your favorite editor):
vim ~/.ssh/config

### 4. In your file, input a modifed format of: 
Host beluga
    HostName beluga.alliancecan.ca
    User justb11

### 5. Restart / exit command line

## Customizing command line aesthetic
### 1. Open your bashrc
vim ~/.bashrc

### Copy paste this line:
PS1="[\[\033[1;31m\]\u\[\033[1;37m\]@\[\033[1;33m\]\h: \[\033[1;32m\]\w\[\033[1;37m\]\[\033[1;32m\]\n\[\033[1;37m\] \[\033[1;94m\]\d \t \[\033[1;32m\]\$\[\033[0m\]] "

### Restart your bashrc
source ~/.bashrc

### To add ll alias: 
vim ~/.bashrc

### Copy paste this line:
alias ll =‘ls –alF’

### Restart bashrc
source ~/.bashrc

# Part 2: Tmux and Multiplexers
