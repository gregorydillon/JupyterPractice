cd assets

wget -i ../imagelist.txt
#sleep 15
ls | gawk 'BEGIN{ a=1 }{ printf "mv \"%s\" %04d.jpg\n", $0, a++ }' | bash
#sleep 5
#convert -delay 77 *.jpg out.mp4
ffmpeg -framerate 1 -i %04d.jpg video.webm
cd ..

