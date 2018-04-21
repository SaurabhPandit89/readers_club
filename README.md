## Configure localhost to run on SSL

1. on the linux terminal run
	```mkdir ~/.ssl```

2. create local ssl certificate
	```openssl req -new -newkey rsa:2048 -sha1 -days 365 -nodes -x509 -keyout ~/.ssl/localhost.key -out ~/.ssl/localhost.crt```

3. run rails server
	```rails s -b 'ssl://localhost:3000?key=/path/to/.ssl/localhost.key&cert=/path/to/.ssl/localhost.crt'```

