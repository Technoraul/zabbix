#!/bin/sh

DOMAIN=$1

ZONE=`echo $DOMAIN | sed 's/\./ /' | awk '{ print $2 }'`

case "$ZONE" in

ru|net.ru|org.ru|pp.ru)

DATE=`whois $DOMAIN | grep paid-till | awk '{ print $2 }' | sed 's/\./-/g'`

;;

com|net)

DATE=`whois $DOMAIN | grep "Registration Expiration Date:" | sed 's/Registrar Registration Expiration Date: //g;s/T/ /g' | awk '{ print $1 }'`

;;

org)

DATE=`whois $DOMAIN | grep "Registry Expiry Date:" | sed 's/Registry Expiry Date: //g;s/T/ /g' | awk '{ print $1 }'`

;;

*)

DATE="$(whois $DOMAIN | awk '/[Ee]xpir.*[Dd]ate:/ || /[Tt]ill:/ || /expire/ {print $NF; exit;}')"

if test -z "$DATE"; then

echo "55555"

exit

continue

fi

esac

expr \( `date --date="$DATE" +%s` - `date +%s` \) / 60 / 60 / 24
