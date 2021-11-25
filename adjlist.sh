grep 'name="news_keywords"' www.spiegel.de/auto/fahrberichte/* \
| grep -o 'content=".*"' \
| grep -o '".*' \
| grep -o '[^"]*' \
| grep "$1" \
| sed 's/, /,/g' \
| sed 's/$/,/;s/^\(.*,\)'"$1"',\(.*\)$/'"$1"',\1\2/' \
| sed 's/,,/,/;s/,$//'
