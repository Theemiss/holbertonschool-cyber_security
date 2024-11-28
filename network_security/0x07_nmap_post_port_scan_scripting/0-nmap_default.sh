#!/bin/bash
nmap  -sC  $1
nmap --script=default $1
nmap --script default $1

