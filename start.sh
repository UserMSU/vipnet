#!/bin/bash
export LOG="root"
export VIP="192.168.16.5"
export PASS="1"
expect ./1vipnet $LOG $VIP $PASS
