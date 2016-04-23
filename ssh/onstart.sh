if [ -n "$MAILGUN_API" ] && [ -n "$MAILGUN_DOMAIN" ] && [ -n "$MAILGUN_TO" ]
then
curl -s --user 'api:$MAILGUN_API' \
    https://api.mailgun.net/v3/$MAILGUN_DOMAIN/messages \
    -F from='Mailgun Sandbox <postmaster@$MAILGUN_DOMAIN>' \
    -F to=$MAILGUN_TO \
    -F subject='service is started!' \
    -F text='started!'	
fi