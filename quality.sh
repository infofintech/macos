mkdir "output"
chmod -vR 777 "output"
for file in *.m4r; do
    ffmpeg -y -i "$file" -c:a copy -qscale:a 8 "output/$file";
done