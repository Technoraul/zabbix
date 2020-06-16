## The script is based on the whois utility and used to monitor the domain expiration date.

### 1. Create script file in right dir.
  sudo vim /usr/lib/zabbix/externalscripts/whois.sh
### 2. Make it executable.
  sudo chmod +x /usr/lib/zabbix/externalscripts/whois.sh
### 3. Create new template on zabbix.
### 4. Create new item inside this template
1. Type External check
2. Key whois.sh[{HOST.NAME}]
3. Type of information Numeric(float)
4. Units days
5. Update interval 1d or more.
### 5. Add you domains like create new hosts.
### 6. Link this template to your domain group.
### 7. Create trigger and alert.
  
