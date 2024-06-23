#!/usr/bin/env bash

# Author: Carlos Cuezva
# Created: January 2023
# Last updated: 06/09/2023
# Source: https://github.com/CarlosCuezva/dashboards-Grafana-Teslamate/blob/menu/dashboards.sh
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

GH_USER="CarlosCuezva"
GH_REPO="dashboards-Grafana-Teslamate"

main() {
  local task=$1

  read_config

  case $task in
      autoupdate) autoupdate;;
      *) menu;;
  esac

}

menu() {

  local get_current_version=$(get_current_version)
  local get_last_release=$(get_last_release)

  echo "
INSTALLED VERSION: ${get_current_version}
LAST RELEASE:      ${get_last_release}
  "

  COLUMNS=12
  PS3='Please, enter your choice: '
  options=("Generate config file" "Download and install/update the latest version" "Install/update downloaded dashboards")
  echo -e "What do you want to do?\n"
  select opt in "${options[@]}" Quit
  do
    case $opt in
      "Generate config file")
          config_file

          break
          ;;
      "Download and install/update the latest version")
          download "true"
          restore "false"

          break
          ;;
      "Install/update downloaded dashboards")
          restore "false"

          break
          ;;
      "Quit")
          break
          ;;
      *) echo "Invalid option \"$REPLY\"";;
    esac
  done

}

read_config() {
  clear

  source ./config.sh

  echo "
URL:                   $URL
DASHBOARDS_DIRECTORY:  $DASHBOARDS_DIRECTORY
DESTINATION_DIRECTORY: $DESTINATION_DIRECTORY
GITHUB_SAVE_TO_FILE:   $GITHUB_SAVE_TO_FILE
GITHUB_TO_CONSOLE:     $GITHUB_TO_CONSOLE
  "
}

restore() {
  local auto=$1

  create_folder

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
              \"folderUid\": \"$DIRECTORY_UID\", \
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

  if [ "$auto" = "false" ]; then
    echo -e "\nInstallation/update process completed"
    read -n 1 -s -r -p "Press any key to continue"

    menu
  fi

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

config_file() {
  filename="config.sh"
  echo -e "\n"

  read -p "Enter the Grafana URL (e.g. http://localhost:3000): " url
  url="${url:=http://localhost:3000}"
  read -p "Enter the relative or absolute path of the dashboards directory  (e.g. ./dashboards): " dashboards_directory
  dashboards_directory="${dashboards_directory:=./dashboards}"
  read -p "Enter the Grafana TOKEN: " token

#TODO: check if token is valid
  if [ -z "$token" ]
  then
    echo -e "\nGrafana TOKEN can't be empty"
    read -n 1 -s -r -p "Press any key to continue"

  else
    [ -f "$filename" ] && rm $filename

    if [ -f /etc/synoinfo.conf ]; then
      # use wget on Synology - curl fails, perhaps due to c-ares?
      github_save_to_file="wget -nv --no-hsts -O"
      github_to_console="wget -nv --no-hsts -O -"
    else
      github_save_to_file="curl -sJL -o"
      github_to_console="curl -s"
    fi

    cat <<EOT >> $filename
URL="$url"
TOKEN="$token"
DASHBOARDS_DIRECTORY="$dashboards_directory"
DESTINATION_DIRECTORY="Teslamate - Custom"
DIRECTORY_UID="AySq122Vh"
GITHUB_SAVE_TO_FILE="$github_save_to_file"
GITHUB_TO_CONSOLE="$github_to_console"
EOT

    echo -e "\nFile \"$filename\" generated correctly."
    read -n 1 -s -r -p "Press any key to continue"
  fi

  menu
}

download() {
  local auto=$1
  local GH_USER="CarlosCuezva"
  local GH_REPO="dashboards-Grafana-Teslamate"
  local GH_BRANCH=$(get_last_release)

  echo -e "\n"

  $GITHUB_SAVE_TO_FILE "${GH_REPO}-${GH_BRANCH}.tar.gz" "https://github.com/${GH_USER}/${GH_REPO}/archive/refs/tags/${GH_BRANCH}.tar.gz" && \
  tar -xzf ./"${GH_REPO}-${GH_BRANCH}.tar.gz" > /dev/null && \
  rm ./"${GH_REPO}-${GH_BRANCH}.tar.gz" && \
  cp -Rf ./"${GH_REPO}-${GH_BRANCH:1}"/* ./  && \
  rm -rf ./"${GH_REPO}-${GH_BRANCH:1}"

  local version_file=./version
  [ -f "$version_file" ] && rm $version_file

    cat <<EOT >> $version_file
$GH_BRANCH
EOT

  if [ "$auto" = "false" ]; then
    echo -e "\nDownloaded version \"$GH_BRANCH\" successfully"
    read -n 1 -s -r -p "Press any key to continue"
  fi

}

get_current_version(){
  local file=./version
  if [ -f "$file" ]; then
    local c=`cat $file`
    echo "$c"
  else
    echo "unknown"
  fi
}

get_last_release() {
  local GH_USER="CarlosCuezva"
  local GH_REPO="dashboards-Grafana-Teslamate"
  echo $($GITHUB_TO_CONSOLE https://api.github.com/repos/$GH_USER/$GH_REPO/releases/latest \
  | grep "tag_name" \
  | awk '{print substr($2, 2, length($2)-3)}');
}

autoupdate() {
  download "true"
  restore "true"
}

main "$@"
