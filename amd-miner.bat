@echo off
echo "Always keep a backup of you wallet files in %appdata%\Ethereum\Keystore"
pause
cls


cd miners
echo "This script automates the mining process with etherpool.co, it is not affiliated to etherpool"
echo "The accounts on this computer are:"
geth account list
set defaddr=0xd54f0a1c743c432d7af0db15c2d87f483b52439b
set /p addr="What address to you want to mine to?: default is %defaddr%"
cls


echo "We will now benchmark your card, let this run"
pause
cls


ethminer -G -M
echo "---------------------------------"
echo "The INNER MEAN minus the last 6 numbers should be between 1 and 90"
set /p hashrate=What is the number after INNER MEAN without the last 6 numbers? (default - 2):
cls


echo "Mining to %addr%"
echo "Mining hashrate of %hashrate%"
ethminer -G --cl-global-work 16384 -F http://pool.eth.pp.ua/?miner=%hashrate%@%addr%@script