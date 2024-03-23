#!/bin/bash

# Definindo variável de arquivo JSON
json_file="mods-1.16.json"
json_result="mods-fixed-1.16.txt"
urls=$(jq '.mods | .[] | .artifact.url' $json_file)

echo "" > $json_result
for url in $urls
do
    echo $url
    echo ""
    file_name=${url##*/} 
    echo $(jq '.mods | .[] | .artifact += {"\"fileName\" : \"$file_name"}' $json_file)
done
exit 0