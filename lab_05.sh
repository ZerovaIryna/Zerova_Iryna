
echo "Stats per directory"
for f in $1/*.*; do printf "%s\n" "${f##*.}"; done | sort | uniq -c

echo "Total"
ls -1a $1 | wc -l

if [ $2 == "directory" ]
then
    find $1 -maxdepth 1 -type d | uniq -c
elif [ $2 == "hidden" ]
    ls -a | uniq -c
elif [ $2 == "regular" ]
    ls | uniq -c
fi
