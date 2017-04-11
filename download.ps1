####################################################################################################
# This function copies a folder (and optionally, its subfolders)
#
# When copying subfolders it calls itself recursively
#
# Parameters:
#   $source      - The url of folder to copy, with trailing /, e.g. http://website/folder/structure/
#   $destination - The folder to copy $source to, with trailing \ e.g. D:\CopyOfStructure\
#   Return       - None
####################################################################################################
Function Copy-Folder([string]$source, [string]$destination) {
    $webClient = New-Object System.Net.WebClient    
    if (!$(Test-Path($destination))) {
        New-Item $destination -type directory -Force
    }
    
    # Get the file list from the web page
    $webString = $webClient.DownloadString($source)
    $lines = [Regex]::Split($webString, "</tr>")
    # Parse each line, looking for files and folders
    echo "Downloading...."
    foreach ($line in $lines) {
       if ($line -match 'href="(.+pdf)"') {
          $item = $matches[1]
          echo $item 
          $webClient.DownloadFile("$source$item", "$destination$item")
       }
    }
}

Copy-Folder "http://10.48.37.151/01/Training/VMware/STI-ICM-Condensed-Training/" $home\STI-ICM-Condensed-Training\
