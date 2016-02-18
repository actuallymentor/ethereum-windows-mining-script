@echo off
echo "Always keep a backup of you wallet files in %appdata%\Ethereum\Keystore"
cd miners
echo "This script automates the mining process with etherpool.co, it is not affiliated to etherpool"
echo "The accounts on this computer are:"
geth account list
set /p addr=What address to you want to mine to? (default - 0xd54f0a1c743c432d7af0db15c2d87f483b52439b):

echo "We will now benchmark your card, let this run"
pause
ethminer -U -M
echo "---------------------------------"
echo "What number of Mega Hash did your device get? Remove the last 6 numbers to calculate it."
echo "The Mega Hash number should be between 1 and 90."
echo "NEVER OVER ESTIATE YOUR HASHRATE, you will earn nothing at all if you do"

set /p hashrate=What is your Mega Hash rate? (default - 2):

ethminercuda -U -F http://pool.eth.pp.ua/?miner=%hashrate%@%addr%@rigname