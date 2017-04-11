## Power shell file downloader 

This function copies a folder hosted remotely through http.

**INPUT PARAMETERS** <br />
- $source:  The url of folder to copy, with trailing /, *e.g. http://website/folder/* <br />
- $destination: The folder to copy $source to, with trailing \\, *e.g. D:\\CopyOfStructure\\*<br />

**OUTPUT PARAMETERS** <br />
- Return: None

### Power shell file downloader 
- Download the file.
- Open the PowerShell
- Run:
```
. .\download.ps1
Copy-Folder http://website/folder/ D:\CopyOfStructure\
```
