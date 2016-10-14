#!/bin/bash
set -e
read -p "What is the plugin name? " resp
name_human=$resp

read -p "Whats is the machine name? " resp
machine_name=$resp

read -p "Plugin Description: " resp
description=$resp

read -p "Version: " resp
verson=$resp

read -p "Plugin URI: " resp
uri=$resp

read -p "Author: " resp
author=$resp

read -p "Author URI: " resp
author_uri=$resp

read -p "The license name: " resp
license=$resp

read -p "Place to save plugin (may be an WordPress plugin path): " resp
plugin_path=$resp

destination_path=$plugin_path/$machine_name
mkdir $destination_path
file=/tmp/$machine_name.php
touch $file
echo "<?php" >> $file
echo "/*" >> $file
echo "Plugin Name: "$name_human >> $file
echo "Description: "$description >> $file
echo "Plugin URI: "$uri >> $file 
echo "Author: "$author >> $file
echo "Author URI: "$author_uri >> $file
echo "License: "$license >> $file
echo "*/" >> $file
mv $file $destination_path
echo done!
