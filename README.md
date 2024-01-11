# Command-Line-QOL
Lab presentation on improving command-line quality of life (QOL) (Jan 15th)


# Part 1: Customizing your Command-Line

## ssh shortcuts

Have your ssh login informatoin on hand. (i.e. username, ip address, and Alliance host such as Graham, Beluga, Narval, etc..)
1. Open your linux or mac terminal
2. Open or create an ssh config (with your favorite editor):

`vim ~/.ssh/config`

In your file, input a modifed format of: 
```
Host beluga
    HostName beluga.alliancecan.ca
    User justb11
```

Restart / exit command line

## Customizing command line aesthetic
Open your bashrc

`vim ~/.bashrc`

Copy paste this line:

`PS1="[\[\033[1;31m\]\u\[\033[1;37m\]@\[\033[1;33m\]\h: \[\033[1;32m\]\w\[\033[1;37m\]\[\033[1;32m\]\n\[\033[1;37m\] \[\033[1;94m\]\d \t \[\033[1;32m\]\$\[\033[0m\]] "`

Restart your bashrc

`source ~/.bashrc`

To add ll alias: 

`vim ~/.bashrc`

Copy paste this line:

`alias ll =‘ls –alF’`

Restart bashrc

`source ~/.bashrc`

# Part 2: Tmux and Multiplexers

### Starting and attaching a tmux session 

A great ressource is the tmux cheat sheet : https://tmuxcheatsheet.com/

Look to see if you have any tmux sessions

`tmux ls`

Create and join a tmux session

`tmux new -s mysession`

Detach from session with the command "ctrl & b + d"

Attach to new session

`tmux a -t mysession`

### Once in tmux, explore basic functionality.

Before any command, you need to press ctrl & b simultaneously. (Mac might be command + b, I'm not sure)

There's a lot of functionality to Tmux, here are some I use the most:

```
ctrl & b + c    # create a new window. You now have two windows available.
ctrl & b + ,    # rename the current window you're on
ctrl & b + &    # close the current window
ctrl & b + n    # go to next window
ctrl & b + p    # go to previous window
``` 

Now that you have windows, you can split the windows into panes.

```
ctrl & b + %            # create a pane split vertically.
ctrl & b + "            # create a pane split horizontally
ctrl & b + arrow keys   # navigate through panes
ctrl & b + space        # change layout of panes
```


You can change these bindings in the ~/.tmux_config, like the ~/.bashrc we've seen before.

# Part 3: Slurm / Alliance Compute Clusters

Check the memory usage in your cluster
`diskusage_report --per-user`

Create an interactive job
`salloc --time=00:15:00 --mem=1G --account=def-gsarah`

Submit a batch job with contents in submit_job_test.sh file
`sbatch submit_job_test.sh`


Summary of common SBATCH options

```
--nodes, -N         # > 1 if using more than 32 cores.
--ntasks            # > 1 if using MPI / openMP (distributed memory parallelism)
--ntasks-per-core   # super specific allocation, should be done automatically by --ntasks
--ntasks-per-node   # same as above
--cpus-per-task     # > 1 if you want >2 threads
--mem               # > 256M if needed
--mem-per-cpu       # > 256M if using multiple cpu cores.
```

Time limits for dedicated resource partitions
```
--time=02:58:58 # 3 hours or less
--time=11:58:58 # 12 hours or less
--time=23:58:58 # 24 hours (1 day) or less
--time=71:58:58 # 72 hours (3 days) or less
--time=6-23:58  # 7 days or less
--time=27-23:58 # 28 days or less (only on cedar)
```

Arrays are a useful tool to save time for your processes via parallelization, or launching many jobs at once.

This script will create text files with names output1.txt, output2.txt, ... , output8.txt with the job ID inside in the current directory. It will also send you an email when is output is finished if you put your information (sorry)
`sbatch submit_array_test.sh`

If you're using Beluga or Narval, you can see your job submission status online!
- https://portail.beluga.calculquebec.ca/
- https://portail.narval.calculquebec.ca/ 

# Fairshare, htop and top











