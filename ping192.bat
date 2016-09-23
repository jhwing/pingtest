@echo off
set host=192.168.1.

echo begin ping test host is %host%

if exist pingtest.txt (
	del pingtest.txt
)


for /L %%G in (1 1 255) do (
 echo ping -n 1 %host%%%G
 ping -n 1 %host%%%G >>pingtest.txt
)