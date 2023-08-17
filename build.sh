mkdir -p system
mkdir -p vendor

if [ "$#" -lt 1 ]; then
    echo "No arguments supplied"
    exit 1
fi

zip -r $1 META-INF vendor system
adb push $1 /sdcard/
adb shell twrp install /sdcard/$1
