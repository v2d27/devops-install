#!/bin/bash

echo expanding ubuntu disk
parted /dev/sda print
parted /dev/sda resizepart 3 100%
parted /dev/sda print

echo expanding vmware disk
lvextend --size +10g --resizefs /dev/ubuntu-vg/ubuntu-lv
