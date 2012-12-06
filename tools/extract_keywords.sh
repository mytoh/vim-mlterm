#!/usr/bin/env sh

# $ extract_keywords.sh x_main_config.c

grep kik_conf_add_opt $1 | awk -F "," '{print $5}' | tr -d '"'| sort
