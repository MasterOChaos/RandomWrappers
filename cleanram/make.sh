#!/bin/bash
if [ "$1" = "help" ] ; then
echo "Availible compile targets:"
echo "plain, static, staticupx"
fi
if [ "$1" = "plain" ] ; then
echo "Making plain executable"
g++ -flto main.cc -Os -o ramclear && strip ramclear && chmod +x ramclear
fi
if [ "$1" = "static" ] ; then
echo "Availible compile targets:"
g++ -static -flto main.cc -Os -o ramclear && strip ramclear && chmod +x ramclear
fi
if [ "$1" = "staticupx" ] ; then
echo "Making static compressed executable"
g++ -static -flto main.cc -Os -o ramclear && strip ramclear && upx -9 ramclear && chmod +x ramclear
fi 
if [ "$1" = "" ] ; then
echo "Please input an argument"
fi
