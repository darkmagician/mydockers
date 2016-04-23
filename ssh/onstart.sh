export >>/vars.txt
if [ -n "$MAILGUN_API" ] && [ -n "$MAILGUN_DOMAIN" ] && [ -n "$MAILGUN_TO" ]
then
curl -s --user "api:$MAILGUN_API" \
    https://api.mailgun.net/v3/$MAILGUN_DOMAIN/messages \
    -F from="Mailgun Sandbox <postmaster@$MAILGUN_DOMAIN>" \
    -F to=$MAILGUN_TO \
    -F subject="$__DEFAULT_DOMAIN_NAME__ is started" \
    -F text="$__DEFAULT_DOMAIN_NAME__ is started!"	
fi
