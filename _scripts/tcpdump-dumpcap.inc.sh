# This file gets included by ttcn3-{tcpdump,dumpcap}-{start,stop} scripts

kill_rm_pidfile() {
	if [ -e $1 ]; then
		kill "$(cat "$1")" 2>/dev/null || true
		rm $1
	fi
}
