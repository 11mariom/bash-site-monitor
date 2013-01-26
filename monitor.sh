 #Curl - get a monitored website and pipe the output to grep (searcha string)
        curl -s "yourwebsite.com" | grep -i "string"
	# Replace "yourwebsite.com" with proper address.
	# Replace "string" with static part of Your website source code:
	# Example: "<script src="//html5shiv.googlecode.com/svn/trunk/html5.js"></script>"
        # If grep command return 0 (failure) send message via e-mail
        
	if [ "$?" -ne "0" ]; then
                # string not found
                echo "your message" | mail -s "subject" "mail@server.com,mail2@server2.com"
	# Replace "your message" with Your own message.
	# Replace "subject" with Your message subject.
	# Put recipients separated by coma.

        else

                # string found
                echo "ok"
		#when the script will be added to crontab, message "ok" will be sent via sysmail after every check.
        fi

