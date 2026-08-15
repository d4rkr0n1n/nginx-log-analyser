#!/bin/bash

echo "Top 5 IP addresses with the most requests:"
sed 's/^\([^ ]*\).*/\1/' access.log | sort | uniq -c | sort -nr | head -n 5 | sed 's/^ *\([0-9]*\) \(.*\)/\2 - \1 requests/'
echo ""
echo "Top 5 most requested paths:"
sed 's/^[^"]*"[A-Z]* \([^ ]*\) .*/\1/' access.log | sort | uniq -c | sort -nr | head -n 5 | sed 's/^ *\([0-9]*\) \(.*\)/\2 - \1 requests/'
echo ""
echo "Top 5 response status codes:"
sed 's/^[^"]*"[^"]*" \([0-9]*\) .*/\1/' access.log | sort | uniq -c | sort -nr | head -n 5 | sed 's/^ *\([0-9]*\) \(.*\)/\2 - \1 requests/'