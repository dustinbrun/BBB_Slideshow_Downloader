# BBB Slideshow Downloader
A simple linux bash script to download slideshows from BigBlueButton

# Dependencies
To use this script, you need to install the following packages:
 - OCRmyPDF (https://github.com/ocrmypdf/OCRmyPDF)
 - ImageMagick (https://github.com/ImageMagick/ImageMagick)

## Example for Debian-based systems

```
sudo apt update && sudo apt upgrade -y

sudo apt-get install ocrmypdf
sudo apt-get install imagemagick
```

### Installation of other OCR-languages:

```
# Display a list of all Tesseract language packs
sudo apt-cache search tesseract-ocr

# Install (for example) the German language pack
sudo apt-get install tesseract-ocr-deu
```

# Running the script
Make the script executable:
```
sudo chmod +x BBB_Slideshow_Downloader.sh
```
Run the script:
```
./BBB_Slideshow_Downloader.sh
```
Now you need the URL of the slideshow from the BBB-session. To get this URL right-click on the presentation in BBB and then press "Open Image in New Tab". Now copy the URL from this tab, it should look something like this: `https://--BBB-SERVER---/.../svg/1`.
Now enter this URL into the script, but without the slide-number (in this example you would need to enter `https://--BBB-SERVER---/.../svg/`). 

Now the script starts downloading the slides (as svg-images) until the end of the presentation is reached. After that these svg-images are getting merged into a single pdf-file. This pdf-file will get a text-layer (OCR) after that to make it searchable. 


<br><br>
<p xmlns:dct="http://purl.org/dc/terms/" xmlns:cc="http://creativecommons.org/ns#" class="license-text">This work by <span property="cc:attributionName">Dustin Brunner</span> is licensed under <a rel="license" href="https://creativecommons.org/licenses/by/4.0">CC BY 4.0<img style="height:15px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" /><img style="height:15px!important;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" /></a></p>

<a rel="license" href="http://creativecommons.org/licenses/by/4.0/"><img alt="Creative Commons Lizenzvertrag" style="border-width:0" src="https://i.creativecommons.org/l/by/4.0/88x31.png" /></a><br />Dieses Werk von <span xmlns:cc="http://creativecommons.org/ns#" property="cc:attributionName">Dustin Brunner</span> ist lizenziert unter einer <a rel="license" href="http://creativecommons.org/licenses/by/4.0/">Creative Commons Namensnennung 4.0 International Lizenz</a>.