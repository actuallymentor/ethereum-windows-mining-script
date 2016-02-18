@echo off
set /p specAddr=What address to you want to mine to? (default - 0xd54f0a1c743c432d7af0db15c2d87f483b52439b):
IF %specAddr%=='y'(
set /p specAddr=Where do you want to mine to? :
)


ethminer -G --cl-global-work 16384 -F http://pool.eth.pp.ua/?miner=5@0x54e8efbd6138011efe9b028e489f6a0bc650e451@rigname
