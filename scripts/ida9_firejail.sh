#!/bin/sh
firejail --noprofile --net=none $HOME/idapro-9.0/ida64 &
disown
