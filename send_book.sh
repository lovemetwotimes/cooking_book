
TO_EMAIL_ADDRESS="#"
EMAIL_ACCOUNT_PASSWORD="#"
EMAIL_SUBJECT="#"
FROM_EMAIL_ADDRESS="#"
FRIENDLY_NAME="#"

echo "yo" | s-nail -v -s "$EMAIL_SUBJECT" \
-S smtp-use-starttls \
-S ssl-verify=ignore \
-S smtp-auth=login \
-S smtp=smtp://smtp.gmail.com:587 \
-S from="$FROM_EMAIL_ADDRESS($FRIENDLY_NAME)" \
-S smtp-auth-user=$FROM_EMAIL_ADDRESS \
-S smtp-auth-password=$EMAIL_ACCOUNT_PASSWORD \
-S ssl-verify=ignore \
-a przepisy.mobi \
$TO_EMAIL_ADDRESS