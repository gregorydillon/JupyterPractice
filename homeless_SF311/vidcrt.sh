cd input
rm 0*.jpg
#wget -i ../heartofCity.txt
wget -i ../imagelist.txt
ls | gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %04d.jpg\n", $0, a++ }' | bash

#ffmpeg -framerate 1/2 -i %04d.jpg  ../imagelist.gif

ffmpeg -framerate 1/2 -i 000%01d.jpg  ../first.gif
ffmpeg -framerate 1/2 -i 001%01d.jpg  ../second.gif
ffmpeg -framerate 1/2 -i 002%01d.jpg  ../third.gif
ffmpeg -framerate 1/2 -i 003%01d.jpg  ../fourth.gif
cd ..
