set location=%cd%

docker run ^
-it ^
--rm ^
--name my-running-script ^
--mount type=bind,source="%location%",target=/usr/src/myapp ^
-w /usr/src/myapp ^
python:2.7 ^
python extractIndexNum.py
