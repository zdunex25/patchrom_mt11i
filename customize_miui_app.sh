#!/bin/bash
#
# $1: dir for original miui app 
# $2: dir for target miui app
#

XMLMERGYTOOL=$PORT_ROOT/tools/ResValuesModify/jar/ResValuesModify

function appendPart() {
    for file in `find $1/smali -name *.part`
    do
		filepath=`dirname $file`
		filename=`basename $file .part`
		dstfile="out/$filepath/$filename"
        cat $file >> $dstfile
    done
}

if [ $1 = "Mms" ];then
	sed -i -e 's/android:screenOrientation=\"portrait\" //' out/$1/AndroidManifest.xml
	sed -i -e 's/ android:screenOrientation=\"portrait\"//' out/$1/AndroidManifest.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "MiuiHome" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Music" ];then
	sed -i 's#@string/app_class#com.miui.player.Application#g' out/$1/AndroidManifest.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Settings" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "Phone" ];then
	$XMLMERGYTOOL $1/res/values $2/res/values
	appendPart $1
fi

if [ $1 = "PaymentService" ];then
	sed -i -e 's/<category android:name=\"android.intent.category.LAUNCHER\" \/>/<!--category android:name=\"android.intent.category.LAUNCHER\" \/-->/' out/$1/AndroidManifest.xml
	$XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "BugReport" ];then
    sed -i -e 's/<category android:name=\"android.intent.category.LAUNCHER\" \/>/<!--category android:name=\"android.intent.category.LAUNCHER\" \/-->/' out/$1/AndroidManifest.xml
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "XiaomiServiceFramework" ];then
    sed -i -e 's/<category android:name=\"android.intent.category.LAUNCHER\" \/>/<!--category android:name=\"android.intent.category.LAUNCHER\" \/-->/' out/$1/AndroidManifest.xml
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

if [ $1 = "ThemeManager" ];then
    $XMLMERGYTOOL $1/res/values $2/res/values
fi

