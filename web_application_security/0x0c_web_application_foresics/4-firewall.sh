#!/bin/bash
grep 'iptables -A INPUT' auth.log | grep -E '(--dport | -j ACCEPT)' | wc -l