bplist00�_WebMainResource�	
^WebResourceURL_WebResourceFrameName_WebResourceData_WebResourceMIMEType_WebResourceTextEncodingName_�https://gist.githubusercontent.com/ericson-cepeda/158c2493bd564f4a1fc1/raw/b0e23705fc99b33b009d462bafddbe3a6486e4b7/bash-history-to-zsh-history.pyPO<html><head></head><body><pre style="word-wrap: break-word; white-space: pre-wrap;">#!/usr/bin/env python
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
</pre></body></html>Ztext/plainUUTF-8    ( 7 N ` v �)*@K                           Q