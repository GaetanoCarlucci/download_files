This function copies a folder (and optionally, its subfolders)

 When copying subfolders it calls itself recursively

Parameters:
  $source      - The url of folder to copy, with trailing /, e.g. http://website/folder/structure/
  $destination - The folder to copy $source to, with trailing \ e.g. D:\CopyOfStructure\
  Return       - None
