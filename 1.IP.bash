#!/bin/bash
ifconfig|grep broadcast|awk -F" " '{print $2}'