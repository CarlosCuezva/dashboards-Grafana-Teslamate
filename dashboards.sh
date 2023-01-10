#!/usr/bin/env bash

# Author: Carlos Cuezva
# Created: January 2023
# Last updated: 01/10/2023
# Source: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/blob/main/dashboards.sh
#
# URL specifies the URL of the Grafana instance.
#
# TOKEN specifies the security key of the API, it's generated in Grafana.
#
# DASHBOARD_DIRECTORY represents the path to the directory where the JSON files corresponding to the dashboards exist.
#
# DESTINATION_DIRECTORY specifies the folder where the dashboards will be saved.
#
# DIRECTORY_UID specifies the unique UID of folder where the dashboards will be saved.

set -o errexit

readonly URL=${URL:-"http://localhost:3000"}
readonly TOKEN=${TOKEN:-"XXXXXXXXXXXX"}
readonly DASHBOARDS_DIRECTORY=${DASHBOARDS_DIRECTORY:-"./dashboards"}
readonly DESTINATION_DIRECTORY=${DESTINATION_DIRECTORY:-"Teslamate - Custom"}
readonly DIRECTORY_UID="AySq122Vh"


main() {
  local task=$1

  echo "
URL:                  $URL
DASHBOARDS_DIRECTORY: $DASHBOARDS_DIRECTORY
DESTINATION_DIRECTORY: $DESTINATION_DIRECTORY
  "

  case $task in
      restore) restore;;
      *)     exit 1;;
  esac

}


restore() {
  create_folder
  folder_id=$(get_folder_id)
  
  find "$DASHBOARDS_DIRECTORY" -type f -name \*.json -print0 |
      while IFS= read -r -d '' dashboard_path; do
          curl \
            --silent --show-error --output /dev/null \
            --location \
            --request POST "$URL/api/dashboards/db" \
            --header "Content-Type: application/json" \
            --header "Authorization: Bearer $TOKEN" \
            --data-raw "{
              \"dashboard\": $(cat "$dashboard_path"),
              \"folderId\":$folder_id, \
              \"overwrite\": true,
              \"inputs\": [
                {
    	            \"name\":\"DS_CLOUDWATCH\",
	                \"type\":\"datasource\",
	                \"pluginId\":\"cloudwatch\",
	                \"value\":\"Teslamate\"
                }
              ]
            }"

          echo "RESTORED $(basename "$dashboard_path")"
      done
}

get_folder_id() {
  curl \
    --silent \
    --location \
    --request GET "$URL/api/folders/$DIRECTORY_UID" \
    --header "Content-Type: application/json" \
    --header "Authorization: Bearer $TOKEN" | 
    jq '.id'
}

create_folder() {
  curl \
    --silent --show-error --output /dev/null \
    --location \
    --request POST "$URL/api/folders" \
    --header "Content-Type: application/json" \
    --header "Authorization: Bearer $TOKEN" \
    --data-raw "{
      \"uid\": \"$DIRECTORY_UID\",
      \"title\": \"$DESTINATION_DIRECTORY\"
    }"
}

main "$@"
