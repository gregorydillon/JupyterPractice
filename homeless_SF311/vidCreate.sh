cd input
rm 0*.jpg
wget -i ../imagelist.txt
ls | gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %04d.jpg\n", $0, a++ }' | bash

ffmpeg -framerate 1 -i %04d.jpg ../video.gif
cd ..

