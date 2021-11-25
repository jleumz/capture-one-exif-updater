# Introduction
The purpose of this project is to update specific metadata of raw files.
Personally i am using the older FujiFilm model X-T1 and i want to edit my pictures in [Capture One Express Fujifilm](https://www.captureone.com/en/products-plans/capture-one-express/fujifilm) to use the fuji film simulation styles.

But the program does not support the newest film simulations for X-Trans II sensors (X-T1, X-E1 etc.).
So i created this small shell script to overwrite the values `software` and `model` so C1 recognises my X-T1 files as files from newer cameras. 

After updating the metadata and importing in Capture One the fuji film simulation styles should appear for your pictures of your old camera body.


# Prerequisite
The shell script uses [exiftool](https://www.exiftool.org) so please install the tool on your machine.
The shell script needs also execution permissions. Please run 

`chmod +x <filename.sh>`

# Update Metadata
Use either the `bash` or `zsh` scripts to run the program.
> Make sure that only raw files are in the folder.

## Parameter 
1. **Location of raw files** (../../directory) or specific file (../../directory/file.RAF). 
2. **Software** (Digital Camera X-T4 Ver1.00)
3. **Model** (X-T4)


```bash
./zsh/overwrite_exif_directory.sh ../../../directory_of_my_raw_files "Digital Camera X-T4 Ver1.00" "X-T4"
```



