@echo off
set /p addr=What address to you want to mine to? (default - 0xd54f0a1c743c432d7af0db15c2d87f483b52439b):
set /p specAddr=Is your card AMD or Nvidia? [amd/nvidia] (default - amd):

echo "We will now benchmark your card, let this run for a while"
pause
ethminer -G -M
echo "---------------------------------"
echo "What number of Mega Hash did your device get? Remove the last 6 numbers to calculate it."
echo "The Mega Hash number should be between 1 and 90."
echo "NEVER OVER ESTIATE YOUR HASHRATE, you will earn nothing at all if you do"

set /p hashrate=What is your Mega Hash rate? (default - 2):
ethminer -G --cl-global-work 16384 -F http://pool.eth.pp.ua/?miner=%hashrate%@%addr%@script

cd miners
ethminercuda -U -F http://pool.eth.pp.ua/?miner=5@addr@rigname