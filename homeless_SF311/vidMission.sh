rm *.gif
cd input
rm 0*.jpg
wget -i ../mission.txt
ls | gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %04d.jpg\n", $0, a++ }' | bash
ffmpeg -framerate 1/2 -i %04d.jpg ../mission.gif


rm 0*.jpg
wget -i ../ronan.txt
ls | gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %04d.jpg\n", $0, a++ }' | bash
ffmpeg -framerate 1/2 -i %04d.jpg ../ronan.gif


rm 0*.jpg
wget -i ../soma.txt
ls | gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %04d.jpg\n", $0, a++ }' | bash
ffmpeg -framerate 1/2 -i %04d.jpg ../soma.gif



rm 0*.jpg
wget -i ../kim.txt
ls | gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %04d.jpg\n", $0, a++ }' | bash
ffmpeg -framerate 1/2 -i %04d.jpg ../kim.gif

cd ..

