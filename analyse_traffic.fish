#!/bin/env fish

# https://github.com/nsntrace/nsntrace


# nsntrace.pcap


# nsntrace@if2
# nsntrace@if2
# nsntrace@if2

# 172.16.42.254
# 172.16.42.254
# 172.16.42.254

# nsntrace IP addresses
# ```
# 172.16.42.254
# 172.16.42.255
# ```

# 172.16.42.254
# 172.16.42.255

# 256

# pcap
# tree

# sudo nsntrace -d eth1 wget www.google.com
# name: nsntrace

# snap install --edge nsntrace --classic
# nsntrace
# ip addr
#   wlp0s20f3
# sudo nsntrace -d wlp0s20f3 --use-public-dns wget google.com
# sudo nsntrace -d eth1 wget www.google.com
# tshark -r nsntrace.pcap -Y 'http.response or http.request'

# TShark (Wireshark) 3.2.3 (Git v3.2.3 packaged as 3.2.3-1)
# tshark --help

# tshark -r nsntrace.pcap -Y 'http.response or http.request'
# tshark -r nsntrace.pcap

# sudo nsntrace -f tcp -o - wget www.google.com  2> /dev/null | tshark -r -



sudo nsntrace -d enx083a885613ae --use-public-dns -f tcp -o - java -jar target/datacollector.jar 2>/dev/null | tshark -r - -Y "http.request or http.response"
sudo nsntrace -d enx083a885613ae --use-public-dns -f tcp -o - java -jar target/datacollector.jar 2>/dev/null | tshark -r - -Y "opcua"
