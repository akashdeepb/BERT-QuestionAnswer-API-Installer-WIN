@echo off
ping 12.1 -n 1 -w 1000 || ping google.com -n 1 -w 1000
cls
set div=------------------------------------
echo BERT API INSTALLER
echo SHITTY INSTALLER SMH
echo .
echo . 
echo .
echo -------CHECKING PREREQUISITES-------
if errorlevel 1 (
	echo Internet Not Connected
	echo Connect to Internet and Try Again!
	pause
	exit) else (echo Internet Connected)
echo %div%
echo Checking Python3 ...
python3 || python -3 --version || py -3 --version
if errorlevel 1 (
	echo Python3 Not Found
	echo Please Install Python3 from https://www.python.org/downloads/
	pause
	exit) else (echo Python3 Found)
echo %div%
echo Checking Pip3 ...
pip --version || pip3 --version || python3 -m pip --version || py -3 -m pip --version || python -3 -m pip --version || py -3 pip3 --version || python3 -m pip3 --version || python -3 -m pip3 --version
if errorlevel 1 (
	echo Pip3 Not Found
	echo Please Install Pip3
	pause
	exit) else (echo Pip3 Found)
echo %div%
echo Checking NodeJS ...
node -v || nodejs -v
if errorlevel 1 (
	echo NodeJS Not Found
	echo Please Install NodeJS from https://nodejs.org/en/ 
	pause
	exit) else (echo NodeJS Found)
echo %div%
echo ***********************************************
echo ***********************************************
echo PREREQUISITES CHECK COMPLETE
echo ***********************************************
echo ***********************************************
cls
echo Creating Project
mkdir BERT_API
cd BERT_API
echo PROJECT FOLDER CREATED!
echo %div%
echo %div%
echo CREATING FILES ...
curl https://raw.githubusercontent.com/akashdeepb/BERT-QuestionAns-API/main/app.js -o app.js
curl https://raw.githubusercontent.com/akashdeepb/BERT-QuestionAns-API/main/sec.py -o sec.py
curl https://raw.githubusercontent.com/akashdeepb/BERT-QuestionAns-API/main/start.py -o start.py
echo ***********************************************
echo ***********************************************
echo INSTALLING PACKAGES
echo ***********************************************
echo ***********************************************
pip install transformers tensorflow flask || pip3 install transformers tensorflow flask || python3 -m pip install transformers tensorflow flask || py -3 -m pip install transformers tensorflow flask || python -3 -m pip install transformers tensorflow flask || py -3 pip3 install transformers tensorflow flask || python3 -m pip3 install transformers tensorflow flask || python -3 -m pip3 install transformers tensorflow flask
npm init -y && npm install express axios
cls
pause