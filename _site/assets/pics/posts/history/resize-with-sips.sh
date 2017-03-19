#!/bin/bash

# Download and Make Ready #

# This script uses the sips command which I think installed on OS X by default.
# The height and width options of this command might look wrong to you,
# This is because sips puts the height and width the "wrong" way around.
# This is the basic nomenclature that it uses "sips -z height width [file]"

# Usage #
# Place this script in a folder full of JPEG, PNG or GIFS.
# In the Terminal, navigate to the folder with the images and this script in.
# The command "cd ~/images/tobeconverted" for example would work.
# Next make the script executable with "chmod +x resize-with-sips.sh"

# Running #
# Run the script with this command whilst in the folder full of images:
# "./resize-with-sips.sh"

# Expected Outcome #
# It creates folders to receive the copies it will create.
# The folders names will be the widths of the images within.
# Copies of the images are created and placed in the correct folder.
# If a folder doesn't exist, the script will create it.

# Alternative #
# If you would rather use ImageMagick, I have another script that uses that
# You can find it here: https://gist.github.com/escapologyBB/15a0968f055d17227879e49d0fb9d9b6


# Change the values between the quotes if you need to have different widths.


echo "Checking if the right directories exist, I will create them if they don't"
folder_1="320"
folder_2="640"
folder_3="980"
folder_4="1280"
folder_5="1600"
folder_6="1920"

# Check if directory exists, if not create it
if [ -d $folder_1 ]
then
    echo "Directory $folder_1 exists"
else
    mkdir $folder_1
fi
# Check if directory exists, if not create it
if [ -d $folder_2 ]
then
    echo "Directory $folder_2 exists"
else
    mkdir $folder_2
fi
# Check if directory exists, if not create it
if [ -d $folder_3 ]
then
    echo "Directory $folder_3 exists"
else
    mkdir $folder_3
fi
# Check if directory exists, if not create it
if [ -d $folder_4 ]
then
    echo "Directory $folder_4 exists"
else
    mkdir $folder_4
fi
# Check if directory exists, if not create it
if [ -d $folder_5 ]
then
    echo "Directory $folder_5 exists"
else
    mkdir $folder_5
fi

# Check if directory exists, if not create it
if [ -d $folder_6 ]
then
    echo "Directory $folder_6 exists"
else
    mkdir $folder_6
fi

# Let's do the actual conversion now, any JPEG or PNG in the
# current directory will be converted to the appropriate size
# and moved to the appropriate folder.
# You can change the values" if you would like a different width.

width_1="320"
width_2="640"
width_3="980"
width_4="1280"
width_5="1600"
width_6="1920"

echo "Okay, who's up for some image conversion?!  I know I am!"

echo "Converting images with a maximum width of $width_1"
# Maximum width of 320 pixels
for i in *.jpg; do sips --resampleWidth $width_1 $i --out $folder_1/$i;done > /dev/null 2>&1
for i in *.png; do sips --resampleWidth $width_1 $i --out $folder_1/$i;done > /dev/null 2>&1
for i in *.gif; do sips --resampleWidth $width_1 $i --out $folder_1/$i;done > /dev/null 2>&1

echo "Converting images with a maximum width of $width_2"
# Maximum width of 640 pixels
for i in *.jpg; do sips --resampleWidth $width_2 $i --out $folder_2/$i;done > /dev/null 2>&1
for i in *.png; do sips --resampleWidth $width_2 $i --out $folder_2/$i;done > /dev/null 2>&1
for i in *.gif; do sips --resampleWidth $width_2 $i --out $folder_2/$i;done > /dev/null 2>&1

echo "Converting images with a maximum width of $width_3"
# Maximum width of 980 pixels
for i in *.jpg; do sips --resampleWidth $width_3 $i --out $folder_3/$i;done > /dev/null 2>&1
for i in *.png; do sips --resampleWidth $width_3 $i --out $folder_3/$i;done > /dev/null 2>&1
for i in *.gif; do sips --resampleWidth $width_3 $i --out $folder_3/$i;done > /dev/null 2>&1

echo "Converting images with a maximum width of $width_4"
# Maximum width of 1280 pixels
for i in *.jpg; do sips --resampleWidth $width_4 $i --out $folder_4/$i;done > /dev/null 2>&1
for i in *.png; do sips --resampleWidth $width_4 $i --out $folder_4/$i;done > /dev/null 2>&1
for i in *.gif; do sips --resampleWidth $width_4 $i --out $folder_4/$i;done > /dev/null 2>&1

echo "Converting images with a maximum width of $width_5"
# Maximum width of 1600 pixels
for i in *.jpg; do sips --resampleWidth $width_5 $i --out $folder_5/$i;done > /dev/null 2>&1
for i in *.png; do sips --resampleWidth $width_5 $i --out $folder_5/$i;done > /dev/null 2>&1
for i in *.gif; do sips --resampleWidth $width_5 $i --out $folder_5/$i;done > /dev/null 2>&1

echo "Converting images with a maximum width of $width_6"
# maximum width of 1920 pixels
for i in *.jpg; do sips --resampleWidth $width_6 $i --out $folder_6/$i;done > /dev/null 2>&1
for i in *.png; do sips --resampleWidth $width_6 $i --out $folder_6/$i;done > /dev/null 2>&1
for i in *.gif; do sips --resampleWidth $width_6 $i --out $folder_6/$i;done > /dev/null 2>&1

# All done!
echo "All directories created and image conversions placed in the right place (hopefully!)"
