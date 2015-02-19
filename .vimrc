set nocompatible              " be iMproved, required
filetype off                  " required

syntax on

au VimLeavePre * :!echo exit $(date +\%s) % >> /home/ejalbert/.vimTimes 
au VimLeave * :!python /home/ejalbert/vimTimesCount.py
au TermResponse * :!echo open $(date +\%s) % >> /home/ejalbert/.vimTimes

