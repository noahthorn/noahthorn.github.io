DIR="${0%/*}"

for folder in $DIR/*; do
    for file in "$folder"/*; do
        convert $file -resize 1920\> $file;
    done
done