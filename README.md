Once you get fullota.zip open it and edit two files:

1)build.prop
- look for: ro.build.version.incremental= and write version number that you were building (example 2.x.x)
- then look for ro.product.mod_device= and write mt11i instead of Unknown

2)updater-scrpit
- find and cut out

assert(getprop("ro.product.device") == "MT11i" ||
       getprop("ro.build.product") == "MT11i");
- then look for set_perm_recursive(2987, 2987, 0777, 0755, "/system/vendor"); and put 0644 in place of 0755

3)remove following files from META-INF
- CERT.RSA
- CERT.SF
- MANIFEST.MF

Resign edited fullota.zip and that is all, rom is ready to flash.

To gest latest control panel visit http://d-h.st/users/fusionjack/?fld_id=6579#files and download lt18i one it works well on mt11i/mt15i.

Chers Z25.
