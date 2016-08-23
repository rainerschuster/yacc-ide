mkdir ../icons/
for f in *.svg; do
  convert -background none -resize 16x16 ./"$f" ../icons/"${f%.svg}.png"
done
