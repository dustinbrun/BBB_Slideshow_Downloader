# !/bin/bash
echo "---- BBB Slideshow Downloader ----"
echo "URL (.../svg/):"
read URL
# echo "Anzahl Folien:"
# read cnt

# Maximum count of slides
cnt=200

error=0
x=1

while (($x <= $cnt && $error == 0))
do
  echo "Downloading Slide $x"
  # Download single slide
  curl "$URL$x" > "$x.svg"
  
  # Get filesize
  filesize=$(wc -c "$x.svg" | awk '{print $1}')

  # Check if file contains 404 or real slideshow-data (based on the filesize)
  if [ $filesize -le 500 ]
  then
      echo "Caught error 404. End of slideshow is reached"
      error=1
      rm "$x.svg"
  fi
  x=$((x+1))
done

echo "-----------------"
echo "Merging svg files ..."
convert $(ls -1v *.svg) output.pdf
echo "Done!"
echo "-----------------"

echo "-----------------"
echo "Deleting old svg files ..."
rm $(ls *.svg)
echo "Done!"
echo "-----------------"

echo "-----------------"
echo "Adding OCR text layer ..."
ocrmypdf -l deu+eng --output-type pdf --optimize 2 output.pdf output_ocred.pdf
echo "Done!"
echo "-----------------"
