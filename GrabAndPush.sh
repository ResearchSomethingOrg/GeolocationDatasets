#!/bin/bash


##Grab datasets from MaxMind
wget -N -P data/ http://geolite.maxmind.com/download/geoip/database/GeoLite2-City-CSV.zip
wget -N -P data/ http://geolite.maxmind.com/download/geoip/database/GeoLite2-Country-CSV.zip
wget -N -P data/ http://geolite.maxmind.com/download/geoip/database/GeoIPCountryCSV.zip
wget -N -P data/ http://geolite.maxmind.com/download/geoip/database/GeoIPv6.csv.gz
wget -N -P data/ http://geolite.maxmind.com/download/geoip/database/GeoLiteCity_CSV/GeoLiteCity-latest.zip
wget -N -P data/ http://geolite.maxmind.com/download/geoip/database/GeoLiteCityv6-beta/GeoLiteCityv6.csv.gz
wget -N -P data/ http://download.maxmind.com/download/geoip/database/asnum/GeoIPASNum2.zip
wget -N -P data/ http://download.maxmind.com/download/geoip/database/asnum/GeoIPASNum2v6.zip
wget -N -P data/ http://download.maxmind.com/download/worldcities/worldcitiespop.txt.gz

##Add to the repository
git add data/*.*

##Commit the changes in an insecure manner 
git commit -m 'automated update via cron'

##Push the datasets
git push

