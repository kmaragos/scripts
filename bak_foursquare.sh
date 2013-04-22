#! /bin/bash

# import configuration script
source conf/foursquare_conf.sh

# download foursquare user feeds (KML, RSS & ICS)
wget https://feeds.foursquare.com/history/$FOURSQUARE_TOKEN.kml?count=$FOURSQUARE_COUNT -q -O $FOURSQUARE_BAK_DIR/$FOURSQUARE_USER.kml
wget https://feeds.foursquare.com/history/$FOURSQUARE_TOKEN.rss?count=$FOURSQUARE_COUNT -q -O $FOURSQUARE_BAK_DIR/$FOURSQUARE_USER.rss
wget https://feeds.foursquare.com/history/$FOURSQUARE_TOKEN.ics -q -O $FOURSQUARE_BAK_DIR/$FOURSQUARE_USER.ics
