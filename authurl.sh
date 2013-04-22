# import configuration file

source conf/authurl_conf.sh


# post login info to login page 
# get uid & pass from response headers

curl -s -k -X POST $HEADER_HOST -e "$HEADER_REFERER" -D - \
-d "username=$UNAME&password=$UPASS&take_login=1&logout=0" \
$LOGIN_URL\
|grep "Set-Cookie"\
|while read x;\
do echo $x\
|cut -d' ' -f2\
|cut -d';' -f1\
|cut -d'=' -f2;\
done;
