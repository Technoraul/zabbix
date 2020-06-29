## This script is used to send notifications about events in telegram to a pre-created bot.

### 1. Before using, create a bot in telegram using @BotFather and get token.
### 2. Try sending a message via the bot.
  curl --header 'Content-Type: application/json' --request 'POST' --data '{"chat_id":"{you_id}","text":"test text"}' " https://api.telegram.org/bot{token}/sendMessage"
### 3. Use @my_id_bot to know you ID.
### 4. Create script file in right dir.
  sudo vim /usr/lib/zabbix/alertscripts/telegram.sh
### 5. Make it executable.
  sudo chmod +x /usr/lib/zabbix/alertscripts/telegram.sh
### 6. Check sending message via the script.
  /usr/lib/zabbix/alertscripts/telegram.sh {you_id} Тест 'test text'
  
  
  ### 7. Configure zabbix to send an alert in a telegram.
  Adminitration-media types-create new.
  1. Type script.
  2. Script name telegram.sh.
  3. Script parameters {ALERT.SENDTO}, {ALERT.SUBJECT}, {ALERT.MESSAGE}.
  ### 8. Add a new notification method to the user
  Adminitration-users-username-media tab.
  1. Type telegram
  2. Send to you_id
  3. Press update button
