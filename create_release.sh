#!/bin/bash
NAME=DoDCampaign
TMPDIR=/tmp/$NAME
ARCHIVE=/tmp/${NAME}.7z

rm -rf $TMPDIR
rm -f $ARCHIVE
mkdir $TMPDIR
cp -rfp Data $TMPDIR
7zr a -t7z -m0=lzma -mx=9 -mfb=64 -md=32m -ms=on $ARCHIVE $TMPDIR
