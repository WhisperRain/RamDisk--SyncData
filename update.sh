#commit from RamDisk
cd /Volumes/RamDisk/Work
svn add . --force
svn commit -m  $current date
say 'sync data to SVN'

#update in disk
cd /Users/WhisperRain/Desktop/RamPhysical/Work
svn update
/Applications/SourceTree.app/Contents/MacOS/SourceTree
