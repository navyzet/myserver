#!/usr/bin/env bash
date=$(date +"%d-%b-%Y")
mysqldump {{ server_dbname }} > /tmp/{{ server_dbname }}-${date}.sql
