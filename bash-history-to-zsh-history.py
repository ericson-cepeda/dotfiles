# -*- coding: utf-8 -*-
# 
# This is how I used it:
# $ cat ~/.bash_history | python bash-history-to-zsh-history.py &gt;&gt; ~/.zsh_history

import sys
import time

def main():
    timestamp = int(time.time())
    for line in sys.stdin.readlines():
        line = line.rstrip('\n')
        sys.stdout.write(': %s:0;%s\n' % (timestamp, line))
        timestamp += 1

if __name__ == '__main__':
    main()