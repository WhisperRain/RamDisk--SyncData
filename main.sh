#create a 8GB RamDisk
if ! test -e /Volumes/\"Ramdisk\" ; then
diskutil erasevolume HFS+ \"RamDisk\" `hdiutil attach -nomount ram://8192000`
fi

# create directory to save file
mkdir /Volumes/Ramdisk/TempDownloads
mkdir -p /Volumes/Ramdisk/Library/Developer/Xcode/DerivedData
mkdir -p /Volumes/Ramdisk/Library/Developer/CoreSimulator/Devices
mkdir -p /Volumes/Ramdisk/Library/Caches/Google
mkdir -p /Volumes/Ramdisk/Library/Caches/com.apple.Safari/fsCachedData
mkdir -p /Volumes/Ramdisk/Applications

# read file from disk to RamDisk
cp -r /Applications/GoogleChrome.app  /Volumes/RamDisk/Applications
cp -r /Applications/GoLand.app  /Volumes/RamDisk/Applications
cd /Volumes/RamDisk/Applications/GoLand.app/Contents
rm -rf  jdk


# start local SVN server
svnserve -d -r /Users/WhisperRain/Documents/RamSvn/Work


#read file from SVN server
cd /Volumes/RamDisk
svn checkout file:///Users/WhisperRain/Documents/RamSvn/Work


#write file from RamDisk to disk
while true
 do
  cd /Volumes/RamDisk/Work
  svn add . --force
  svn commit -m  $current date
  say 'sync data to SVN'
  sleep 400
   
 done
  
