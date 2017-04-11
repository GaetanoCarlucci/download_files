## Power shell file downloader 

This function copies a folder hosted remotely through http.

**INPUT PARAMETERS** <br />
- $source:  The url of folder to copy, with trailing /, *e.g. http://website/folder/* <br />
- $destination: The folder to copy $source to, with trailing \\, *e.g. D:\\CopyOfStructure\\*<br />

**OUTPUT PARAMETERS** <br />
- Return: None

### Usage
- Download the file [download.ps1](https://github.com/GaetanoCarlucci/download_files/blob/master/download.ps1) in a directory.
- Open the PowerShell in the same directory.
- Run:
```
. .\download.ps1
Copy-Folder http://website/folder/ D:\CopyOfStructure\
```
