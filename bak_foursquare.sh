#! /bin/bash

# import configuration script
source conf/conf_general.sh

# download foursquare user feeds (KML, RSS & ICS)
wget https://feeds.foursquare.com/history/$FOURSQUARE_TOKEN.kml?count=50000 -q -O $FOURSQUARE_BAK_DIR/$FOURSQUARE_USER.kml
wget https://feeds.foursquare.com/history/$FOURSQUARE_TOKEN.rss?count=50000 -q -O $FOURSQUARE_BAK_DIR/$FOURSQUARE_USER.rss
wget https://feeds.foursquare.com/history/$FOURSQUARE_TOKEN.ics -q -O $FOURSQUARE_BAK_DIR/$FOURSQUARE_USER.ics
