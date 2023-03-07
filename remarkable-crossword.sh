#!/usr/bin/env bash

set -o pipefail
DATE=$(date +%Y%m%d)
URL="https://crosswords-static.guim.co.uk"
QUICK="gdn.quick.$DATE.pdf"
CROPQUICK="gdn.quick.$DATE-crop.pdf"
CRYPTIC="gdn.cryptic.$DATE.pdf"
CROPCRYPTIC="gdn.cryptic.$DATE-crop.pdf"

# Send to Remarkable

# Quick crosswords published Mon-Sat
if [ "$(date +%u)" -le 6 ]; then
    wget -q -P /tmp "$URL"/"$QUICK"
    pdfcrop --margins 10 /tmp/"$QUICK"
    rmapi put /tmp/"$CROPQUICK" /crosswords
fi
# Cryptic crosswords published Mon-Fri
if [ "$(date +%u)" -le 5 ]; then
    wget -q -P /tmp "$URL"/"$CRYPTIC"
    pdfcrop --margins 10 /tmp/"$CRYPTIC"
    rmapi put /tmp/"$CROPCRYPTIC" /crosswords
fi
