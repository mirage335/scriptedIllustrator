#!/usr/bin/env bash

if [[ "$ub_setScriptChecksum" != "" ]]
then
	export ub_setScriptChecksum=
fi

_ub_cksum_special_derivativeScripts_header() {
	local currentFile_cksum
	if [[ "$1" == "" ]]
	then
		currentFile_cksum="$0"
	else
		currentFile_cksum="$1"
	fi
	
	head -n 30 "$currentFile_cksum" | env CMD_ENV=xpg4 cksum | cut -f1 -d\  | tr -dc '0-9'
}
_ub_cksum_special_derivativeScripts_contents() {
	local currentFile_cksum
	if [[ "$1" == "" ]]
	then
		currentFile_cksum="$0"
	else
		currentFile_cksum="$1"
	fi
	
	tail -n +45 "$currentFile_cksum" | env CMD_ENV=xpg4 cksum | cut -f1 -d\  | tr -dc '0-9'
}
##### CHECKSUM BOUNDARY - 30 lines

#export ub_setScriptChecksum_disable='true'
( [[ -e "$0".nck ]] || [[ "${BASH_SOURCE[0]}" != "${0}" ]] || [[ "$1" == '--profile' ]] || [[ "$1" == '--script' ]] || [[ "$1" == '--call' ]] || [[ "$1" == '--return' ]] || [[ "$1" == '--devenv' ]] || [[ "$1" == '--shell' ]] || [[ "$1" == '--bypass' ]] || [[ "$1" == '--parent' ]] || [[ "$1" == '--embed' ]] || [[ "$1" == '--compressed' ]] || [[ "$0" == "/bin/bash" ]] || [[ "$0" == "-bash" ]] || [[ "$0" == "/usr/bin/bash" ]] || [[ "$0" == "bash" ]] ) && export ub_setScriptChecksum_disable='true'
export ub_setScriptChecksum_header='1891409836'
export ub_setScriptChecksum_contents='2982806015'

# CAUTION: Symlinks may cause problems. Disable this test for such cases if necessary.
# WARNING: Performance may be crucial here.
#[[ -e "$0" ]] && ! [[ -h "$0" ]] && [[ "$ub_setScriptChecksum" != "" ]]
if [[ -e "$0" ]] && [[ "$ub_setScriptChecksum_header" != "" ]] && [[ "$ub_setScriptChecksum_contents" != "" ]] && [[ "$ub_setScriptChecksum_disable" != 'true' ]] #&& ! ( [[ -e "$0".nck ]] || [[ "${BASH_SOURCE[0]}" != "${0}" ]] || [[ "$1" == '--profile' ]] || [[ "$1" == '--script' ]] || [[ "$1" == '--call' ]] || [[ "$1" == '--return' ]] || [[ "$1" == '--devenv' ]] || [[ "$1" == '--shell' ]] || [[ "$1" == '--bypass' ]] || [[ "$1" == '--parent' ]] || [[ "$1" == '--embed' ]] || [[ "$1" == '--compressed' ]] || [[ "$0" == "/bin/bash" ]] || [[ "$0" == "-bash" ]] || [[ "$0" == "/usr/bin/bash" ]] || [[ "$0" == "bash" ]] )
then
	[[ $(_ub_cksum_special_derivativeScripts_header) != "$ub_setScriptChecksum_header" ]] && exit 1
	[[ $(_ub_cksum_special_derivativeScripts_contents) != "$ub_setScriptChecksum_contents" ]] && exit 1
fi
##### CHECKSUM BOUNDARY - 45 lines

_ub_cksum_special_derivativeScripts_write() {
	local current_ub_setScriptChecksum_header
	local current_ub_setScriptChecksum_contents

	current_ub_setScriptChecksum_header=$(_ub_cksum_special_derivativeScripts_header "$1")
	current_ub_setScriptChecksum_contents=$(_ub_cksum_special_derivativeScripts_contents "$1")

	sed -i 's/'#'#'###uk4uPhB663kVcygT0q-UbiquitousBash-ScriptSelfModify-SetScriptChecksumHeader-UbiquitousBash-uk4uPhB663kVcygT0q#####'/'"$current_ub_setScriptChecksum_header"'/' "$1"
	sed -i 's/'#'#'###uk4uPhB663kVcygT0q-UbiquitousBash-ScriptSelfModify-SetScriptChecksumContents-UbiquitousBash-uk4uPhB663kVcygT0q#####'/'"$current_ub_setScriptChecksum_contents"'/' "$1"
}


#Universal debugging filesystem.
_user_log-ub() {
	# DANGER Do NOT create automatically, or reference any existing directory!
	! [[ -d "$HOME"/.ubcore/userlog ]] && cat - > /dev/null 2>&1 && return 0
	
	#Terminal session may be used - the sessionid may be set through .bashrc/.ubcorerc .
	if [[ "$sessionid" != "" ]]
	then
		cat - >> "$HOME"/.ubcore/userlog/u-"$sessionid".log
		return 0
	fi
	cat - >> "$HOME"/.ubcore/userlog/u-undef.log
	
	return 0
}

#Cyan. Harmless status messages.
_messagePlain_nominal() {
	echo -e -n '\E[0;36m '
	echo -n "$@"
	echo -e -n ' \E[0m'
	echo
	return 0
}

#Blue. Diagnostic instrumentation.
_messagePlain_probe() {
	echo -e -n '\E[0;34m '
	echo -n "$@"
	echo -e -n ' \E[0m'
	echo
	return 0
}

#Blue. Diagnostic instrumentation.
_messagePlain_probe_expr() {
	echo -e -n '\E[0;34m '
	echo -e -n "$@"
	echo -e -n ' \E[0m'
	echo
	return 0
}

#Blue. Diagnostic instrumentation.
_messagePlain_probe_var() {
	echo -e -n '\E[0;34m '
	
	echo -n "$1"'= '
	
	eval echo -e -n \$"$1"
	
	echo -e -n ' \E[0m'
	echo
	return 0
}
_messageVar() {
	_messagePlain_probe_var "$@"
}

#Green. Working as expected.
_messagePlain_good() {
	echo -e -n '\E[0;32m '
	echo -n "$@"
	echo -e -n ' \E[0m'
	echo
	return 0
}

#Yellow. May or may not be a problem.
_messagePlain_warn() {
	echo -e -n '\E[1;33m '
	echo -n "$@"
	echo -e -n ' \E[0m'
	echo
	return 0
}

#Red. Will result in missing functionality, reduced performance, etc, but not necessarily program failure overall.
_messagePlain_bad() {
	echo -e -n '\E[0;31m '
	echo -n "$@"
	echo -e -n ' \E[0m'
	echo
	return 0
}



##Parameters
#"--shell", ""
#"--profile"
#"--parent", "--embed", "--return", "--devenv"
#"--call", "--script" "--bypass"
#if [[ "$ub_import" != "" ]]
#then
	#[[ "$ub_import" != "" ]] && export ub_import="" && unset ub_import
	
	#[[ "$importScriptLocation" != "" ]] && export importScriptLocation= && unset importScriptLocation
	#[[ "$importScriptFolder" != "" ]] && export importScriptFolder= && unset importScriptFolder
#fi
#[[ "$ub_import" != "" ]] && export ub_import="" && unset ub_import
#[[ "$ub_import_param" != "" ]] && export ub_import_param="" && unset ub_import_param
#[[ "$ub_import_script" != "" ]] && export ub_import_script="" && unset ub_import_script
#[[ "$ub_loginshell" != "" ]] && export ub_loginshell="" && unset ub_loginshell
ub_import=
ub_import_param=
ub_import_script=
ub_loginshell=


# ATTENTION: Apparently (Portable) Cygwin Bash interprets correctly.
[[ "${BASH_SOURCE[0]}" != "${0}" ]] && ub_import="true"

( [[ "$1" == '--profile' ]] || [[ "$1" == '--script' ]] || [[ "$1" == '--call' ]] || [[ "$1" == '--return' ]] || [[ "$1" == '--devenv' ]] || [[ "$1" == '--shell' ]] || [[ "$1" == '--bypass' ]] || [[ "$1" == '--parent' ]] || [[ "$1" == '--embed' ]] || [[ "$1" == '--compressed' ]] ) && ub_import_param="$1" && shift
( [[ "$0" == "/bin/bash" ]] || [[ "$0" == "-bash" ]] || [[ "$0" == "/usr/bin/bash" ]] || [[ "$0" == "bash" ]] ) && ub_loginshell="true"	#Importing ubiquitous bash into a login shell with "~/.bashrc" is the only known cause for "_getScriptAbsoluteLocation" to return a result such as "/bin/bash".
[[ "$ub_import" == "true" ]] && ! [[ "$ub_loginshell" == "true" ]] && ub_import_script="true"

_messagePlain_probe_expr '$0= '"$0"'\n ''$1= '"$1"'\n ''ub_import= '"$ub_import"'\n ''ub_import_param= '"$ub_import_param"'\n ''ub_import_script= '"$ub_import_script"'\n ''ub_loginshell= '"$ub_loginshell" | _user_log-ub

# DANGER Prohibited import from login shell. Use _setupUbiquitous, call from another script, or manually set importScriptLocation.
# WARNING Import from shell can be detected. Import from script cannot. Asserting that script has been imported is possible. Asserting that script has not been imported is not possible. Users may be protected from interactive mistakes. Script developers are NOT protected.
if [[ "$ub_import_param" == "--profile" ]]
then
	if ( [[ "$profileScriptLocation" == "" ]] ||  [[ "$profileScriptFolder" == "" ]] ) && _messagePlain_bad 'import: profile: missing: profileScriptLocation, missing: profileScriptFolder' | _user_log-ub
	then
		return 1 >/dev/null 2>&1
		exit 1
	fi
elif ( [[ "$ub_import_param" == "--parent" ]] || [[ "$ub_import_param" == "--embed" ]] || [[ "$ub_import_param" == "--return" ]] || [[ "$ub_import_param" == "--devenv" ]] )
then
	if ( [[ "$scriptAbsoluteLocation" == "" ]] || [[ "$scriptAbsoluteFolder" == "" ]] || [[ "$sessionid" == "" ]] ) && _messagePlain_bad 'import: parent: missing: scriptAbsoluteLocation, missing: scriptAbsoluteFolder, missing: sessionid' | _user_log-ub
	then
		return 1 >/dev/null 2>&1
		exit 1
	fi
elif [[ "$ub_import_param" == "--call" ]] || [[ "$ub_import_param" == "--script" ]] || [[ "$ub_import_param" == "--bypass" ]] || [[ "$ub_import_param" == "--shell" ]] || [[ "$ub_import_param" == "--compressed" ]] || ( [[ "$ub_import" == "true" ]] && [[ "$ub_import_param" == "" ]] )
then
	if ( [[ "$importScriptLocation" == "" ]] || [[ "$importScriptFolder" == "" ]] ) && _messagePlain_bad 'import: call: missing: importScriptLocation, missing: importScriptFolder' | _user_log-ub
	then
		return 1 >/dev/null 2>&1
		exit 1
	fi
elif [[ "$ub_import" != "true" ]]	#"--shell", ""
then
	_messagePlain_warn 'import: undetected: cannot determine if imported' | _user_log-ub
	true #no problem
else	#FAIL, implies [[ "$ub_import" == "true" ]]
	_messagePlain_bad 'import: fall: fail' | _user_log-ub
	return 1 >/dev/null 2>&1
	exit 1
fi

#Override.
# DANGER: Recursion hazard. Do not create override alias/function without checking that alternate exists.


# Workaround for very minor OS misconfiguration. Setting this variable at all may be undesirable however. Consider enabling and generating all locales with 'sudo dpkg-reconfigure locales' or similar .
#[[ "$LC_ALL" == '' ]] && export LC_ALL="en_US.UTF-8"



# WARNING: Only partially compatible.
if ! type md5sum > /dev/null 2>&1 && type md5 > /dev/null 2>&1
then
	md5sum() {
		md5 "$@"
	}
fi

# DANGER: No production use. Testing only.
# WARNING: Only partially compatible.
#if ! type md5 > /dev/null 2>&1 && type md5sum > /dev/null 2>&1
#then
#	md5() {
#		md5sum "$@"
#	}
#fi


# WARNING: DANGER: Compatibility may not be guaranteed!
if ! type unionfs-fuse > /dev/null 2>&1 && type unionfs > /dev/null 2>&1 && man unionfs | grep 'unionfs-fuse - A userspace unionfs implementation' > /dev/null 2>&1
then
	unionfs-fuse() {
		unionfs "$@"
	}
fi

if ! type qemu-arm-static > /dev/null 2>&1 && type qemu-arm > /dev/null 2>&1
then
	qemu-arm-static() {
		qemu-arm "$@"
	}
fi

if ! type qemu-armeb-static > /dev/null 2>&1 && type qemu-armeb > /dev/null 2>&1
then
	qemu-armeb-static() {
		qemu-armeb "$@"
	}
fi




# Only production use is Inter-Process Communication (IPC) loops which may be theoretically impossible to make fully deterministic under Operating Systems which do not have hard-real-time kernels and/or may serve an unlimited number of processes.
_here_header_bash_or_dash() {
	if [[ -e /bin/dash ]]
		then
		
cat << 'CZXWXcRMTo8EmM8i4d'
#!/bin/dash

CZXWXcRMTo8EmM8i4d
	
	else
	
cat << 'CZXWXcRMTo8EmM8i4d'
#!/usr/bin/env bash

CZXWXcRMTo8EmM8i4d

	fi
}



# Delay to attempt to avoid InterProcess-Communication (IPC) problems caused by typical UNIX/MSW Operating System kernel latency and/or large numbers of processes/threads.
# Widely deployed Linux compatible hardware and software is able to run with various 'preemption' 'configured'/'patched' kernels. Detecting such kernels may allow reduction of this arbitrary delay.
# CAUTION: Merely attempts to avoid a problem which may be inherently unavoidably unpredictable.
_sleep_spinlock() {
	# CAUTION: Spinlocks on the order of 8s are commonly observed with 'desktop' operating systems. Do NOT reduce this delay without thorough consideration! Theoretically, it may not be possible to determine whether the parent of a process is still running in less than spinlock time, only the existence of the parent process guarantees against PID rollover, and multiple spinlocks may occur between the necessary IPC events to determine any of the above.
	# ATTENTION: Consider setting this to the worst-case acceptable latency for a system still considered 'responsive' (ie. a number of seconds greater than that which would cause a user or other 'watchdog' to forcibly reboot the system).
	local currentWaitSpinlock
	let currentWaitSpinlock="$RANDOM"%4
	#let currentWaitSpinlock="$currentWaitSpinlock"+12
	let currentWaitSpinlock="$currentWaitSpinlock"+10
	sleep "$currentWaitSpinlock"
}


_____special_live_hibernate_rmmod_remainder-vbox_procedure() {
	local currentLine
	sudo -n lsmod | grep '^vbox.*$' | cut -f1 -d\  | while read currentLine
	do
		#echo "$currentLine"
		sudo -n rmmod "$currentLine"
	done
}

_____special_live_hibernate_rmmod_remainder-vbox() {
	local currentIterations
	currentIterations=0
	while [[ "$currentIterations" -lt 2 ]]
	do
		let currentIterations="$currentIterations + 1"
		_____special_live_hibernate_rmmod_remainder-vbox_procedure "$@" > /dev/null 2>&1
	done
	
	_____special_live_hibernate_rmmod_remainder-vbox_procedure "$@"
}

# CAUTION: Do not alow similarity of this function name to other commonly used function names . Unintended tab completion could significantly and substantially impede user , particularly if 'disk' hibernation is not properly available .
_____special_live_hibernate() {
	! _mustGetSudo && exit 1
	
	_messageNormal 'init: _____special_live_hibernate'
	
	local currentIterations
	
	_messagePlain_nominal 'attempt: swapon'
	sudo -n swapon /dev/disk/by-uuid/469457fc-293f-46ec-92da-27b5d0c36b17
	free -m
	
	_messagePlain_nominal 'detect: vboxguest'
	sudo -n lsmod | grep vboxguest > /dev/null 2>&1 && export ub_current_special_live_consider_vbox='true'
	[[ "$ub_current_special_live_consider_vbox" == 'true' ]] && _messagePlain_good 'good: detected: vboxguest'
	
	if [[ "$ub_current_special_live_consider_vbox" == 'true' ]]
	then
		_messagePlain_nominal 'attempt: terminate: VBoxService , VBoxClient'
		sudo -n pkill VBoxService
		sudo -n pkill VBoxClient
		
		pgrep ^VBox && sleep 0.1 && pgrep ^VBox && sleep 0.3 && pgrep ^VBox && sleep 1
		sudo -n pkill -KILL VBoxService
		sudo -n pkill -KILL VBoxClient
		
		
		pgrep ^VBox && sleep 0.3
		_messagePlain_nominal 'attempt: rmmod (vbox)'
		sleep 0.05
		sudo -n rmmod vboxsf
		sudo -n rmmod vboxvideo
		sudo -n rmmod vboxguest
		_____special_live_hibernate_rmmod_remainder-vbox
		
		sleep 0.02
		sudo -n rmmod vboxsf
		sudo -n rmmod vboxvideo
		sudo -n rmmod vboxguest
		_____special_live_hibernate_rmmod_remainder-vbox
	fi
	
	_messagePlain_nominal 'attempt: HIBERNATE'
	sudo -n journalctl --rotate
	sudo -n journalctl --vacuum-time=1s
	sudo -n systemctl hibernate
	
	
	# ~1.0s
	sleep 1.1
	currentIterations=0
	while [[ "$currentIterations" -lt 3 ]]
	do
		sudo -n systemctl status hibernate.target | tail -n2 | head -n1 | grep ' Reached ' > /dev/null 2>&1 && _messagePlain_probe 'Reached'
		sudo -n systemctl status hibernate.target | tail -n1 | grep ' Stopped ' > /dev/null 2>&1 && _messagePlain_probe 'Stopped'
		sudo -n systemctl status hibernate.target | grep 'inactive (dead)' > /dev/null 2>&1 && _messagePlain_probe 'inactive'
		
		
		sudo -n systemctl status hibernate.target | tail -n2 | head -n1 | grep ' Reached ' > /dev/null 2>&1 &&
		sudo -n systemctl status hibernate.target | tail -n1 | grep ' Stopped ' > /dev/null 2>&1 &&
		sudo -n systemctl status hibernate.target | grep 'inactive (dead)' > /dev/null 2>&1 &&
		break
		
		_messagePlain_good 'delay: resume'
		
		let currentIterations="$currentIterations + 1"
		sleep 0.3
	done
	
	_messagePlain_nominal 'delay: spinlock (optimistic)'
	# Expected to result in longer delay if system is not idle.
	# ~2s
	currentIterations=0
	while [[ "$currentIterations" -lt 6 ]]
	do
		let currentIterations="$currentIterations + 1"
		sleep 0.3
	done
	# 0.5s
	currentIterations=0
	while [[ "$currentIterations" -lt 5 ]]
	do
		let currentIterations="$currentIterations + 1"
		sleep 0.1
	done
	# 0.15s
	currentIterations=0
	while [[ "$currentIterations" -lt 15 ]]
	do
		let currentIterations="$currentIterations + 1"
		sleep 0.01
	done
	
	#_messagePlain_nominal 'delay: spinlock (arbitrary)'
	#sleep 1
	
	#_messagePlain_nominal 'delay: spinlock (pessimistic)'
	#_sleep_spinlock
	
	
	if [[ "$ub_current_special_live_consider_vbox" == 'true' ]]
	then
		_messagePlain_nominal 'attempt: modprobe (vbox)'
		sudo -n modprobe vboxsf
		sudo -n modprobe vboxvideo
		sudo -n modprobe vboxguest
		
		
		sleep 0.1
		_messagePlain_nominal 'attempt: VBoxService'
		sudo -n VBoxService --pidfile /var/run/vboxadd-service.sh
		
		# 0.3s
		currentIterations=0
		while [[ "$currentIterations" -lt 3 ]]
		do
			let currentIterations="$currentIterations + 1"
			sleep 0.1
		done
		_messagePlain_nominal 'attempt: VBoxClient'
		#sudo -n VBoxClient --vmsvga
		#sudo -n VBoxClient --seamless
		#sudo -n VBoxClient --draganddrop
		#sudo -n VBoxClient --clipboard
		sudo -n VBoxClient-all
	fi
	
	disown -a -h -r
	disown -a -r
	
	_messageNormal 'done: _____special_live_hibernate'
	return 0
}

_____special_live_bulk_rw() {
	! _mustGetSudo && exit 1
	_messageNormal 'init: _____special_live_bulk_rw'
	
	sudo -n mkdir -p /mnt/bulk
	_messagePlain_nominal 'detect: mount: bulk'
	if ! mountpoint /mnt/bulk
	then
		_messagePlain_nominal 'mount: rw: bulk'
		sudo -n mount -o rw /dev/disk/by-uuid/f1edb7fb-13b1-4c97-91d2-baf50e6d65d8 /mnt/bulk
	fi
	
	! mountpoint /mnt/bulk && _messagePlain_bad 'fail: detect: mount: bulk' && exit 1
	
	_messagePlain_nominal 'remount: rw: bulk'
	sudo -n mount -o remount,rw /mnt/bulk
	
	_messageNormal 'done: _____special_live_bulk_rw'
	return 0
}

# No production use. Not expected to be desirable. Any readonly files could be added, compressed, to the 'live' 'root' .
_____special_live_bulk_ro() {
	! _mustGetSudo && exit 1
	_messageNormal 'init: _____special_live_bulk_ro'
	
	sudo -n mkdir -p /mnt/bulk
	_messagePlain_nominal 'detect: mount: bulk'
	if ! mountpoint /mnt/bulk
	then
		_messagePlain_nominal 'mount: ro: bulk'
		sudo -n mount -o ro /dev/disk/by-uuid/f1edb7fb-13b1-4c97-91d2-baf50e6d65d8 /mnt/bulk
	fi
	
	! mountpoint /mnt/bulk && _messagePlain_bad 'fail: detect: mount: bulk' && exit 1
	
	_messagePlain_nominal 'remount: ro: bulk'
	sudo -n mount -o remount,ro /mnt/bulk
	
	_messageNormal 'done: _____special_live_bulk_ro'
	return 0
}


# DANGER: Simultaneous use of any 'rw' mounted filesystem with any 'restored' hibernation file/partition is expected to result in extreme filesystem corruption! Take extra precautions to avoid this mistake!
# CAUTION: Do not alow similarity of this function name to other commonly used function names . Unintended tab completion could significantly and substantially impede user.
_____special_live_dent_backup() {
	! _mustGetSudo && exit 1
	_messageNormal 'init: _____special_live_dent_backup'
	
	_messagePlain_nominal 'attempt: mount: dent'
	sudo -n mkdir -p /mnt/dent
	! mountpoint /mnt/dent && sudo -n mount -o ro /dev/disk/by-uuid/d82e3d89-3156-4484-bde2-ccc534ca440b /mnt/dent
	! mountpoint /mnt/dent && exit 1
	
	sudo -n mount -o remount,rw /mnt/dent
	
	_messagePlain_nominal 'attempt: copy: hint'
	if type -p 'pigz' > /dev/null 2>&1
	then
		sudo -n dd if=/dev/disk/by-uuid/469457fc-293f-46ec-92da-27b5d0c36b17 bs=1M | pigz --fast | sudo -n tee /mnt/dent/hint_bak.gz > /dev/null
	elif type -p 'gzip' > /dev/null 2>&1
	then
		sudo -n dd if=/dev/disk/by-uuid/469457fc-293f-46ec-92da-27b5d0c36b17 bs=1M | gzip --fast | sudo -n tee /mnt/dent/hint_bak.gz > /dev/null
	else
		sudo -n dd if=/dev/disk/by-uuid/469457fc-293f-46ec-92da-27b5d0c36b17 bs=1M | sudo -n tee /mnt/dent/hint_bak > /dev/null
	fi
	sync
	
	_messagePlain_nominal 'attempt: mount: ro: bulk'
	sudo -n mkdir -p /mnt/bulk
	! mountpoint /mnt/bulk && sudo -n mount -o ro /dev/disk/by-uuid/f1edb7fb-13b1-4c97-91d2-baf50e6d65d8 /mnt/bulk
	! mountpoint /mnt/bulk && exit 1
	
	
	_messagePlain_nominal 'attempt: copy: bulk'
	sudo -n mkdir -p /mnt/dent/bulk_bak
	[[ ! -e /mnt/dent/bulk_bak ]] && exit 1
	[[ ! -d /mnt/dent/bulk_bak ]] && exit 1
	
	sudo -n rsync -ax --delete /mnt/bulk/. /mnt/dent/bulk_bak/.
	
	
	
	_messagePlain_nominal 'attempt: umount: dent'
	sudo -n mount -o remount,ro /mnt/dent
	sync
	
	sudo -n umount /mnt/dent
	sync
	
	_messageNormal 'done: _____special_live_dent_backup'
	return 0
}


# DANGER: Simultaneous use of any 'rw' mounted filesystem with any 'restored' hibernation file/partition is expected to result in extreme filesystem corruption! Take extra precautions to avoid this mistake!
# CAUTION: Do not alow similarity of this function name to other commonly used function names . Unintended tab completion could significantly and substantially impede user.
# WARNING: By default does not restore contents of '/mnt/bulk' assuming simultaneous use of persistent storage and hibernation backup is sufficiently unlikely and risky that a request to the user is preferable.
_____special_live_dent_restore() {
	! _mustGetSudo && exit 1
	_messageNormal 'init: _____special_live_dent_restore'
	
	_messagePlain_nominal 'attempt: mount: dent'
	sudo -n mkdir -p /mnt/dent
	! mountpoint /mnt/dent && sudo -n mount -o ro /dev/disk/by-uuid/d82e3d89-3156-4484-bde2-ccc534ca440b /mnt/dent
	! mountpoint /mnt/dent && exit 1
	#sudo -n mount -o remount,ro /mnt/dent
	
	
	_messagePlain_nominal 'attempt: copy: hint'
	#sudo -n dd if=/dev/zero of=/dev/disk/by-uuid/469457fc-293f-46ec-92da-27b5d0c36b17 bs=1M
	if type -p 'pigz' > /dev/null 2>&1 || type -p 'gzip' > /dev/null 2>&1
	then
		sudo -n gzip -d -c /mnt/dent/hint_bak.gz | sudo -n dd of=/dev/disk/by-uuid/469457fc-293f-46ec-92da-27b5d0c36b17 bs=1M
	else
		sudo cat /mnt/dent/hint_bak | sudo -n dd of=/dev/disk/by-uuid/469457fc-293f-46ec-92da-27b5d0c36b17 bs=1M
	fi
	sync
	
	
	
	
	#_messagePlain_nominal 'attempt: mount: rw: bulk'
	#sudo -n mkdir -p /mnt/bulk
	#! mountpoint /mnt/bulk && sudo -n mount -o ro /dev/disk/by-uuid/f1edb7fb-13b1-4c97-91d2-baf50e6d65d8 /mnt/bulk
	#! mountpoint /mnt/bulk && exit 1
	#sudo -n mount -o remount,rw /mnt/bulk
	
	#_messagePlain_nominal 'attempt: copy: bulk'
	#sudo -n mkdir -p /mnt/dent/bulk_bak
	#[[ ! -e /mnt/dent/bulk_bak ]] && exit 1
	#[[ ! -d /mnt/dent/bulk_bak ]] && exit 1
	
	#sudo -n rsync -ax --delete /mnt/dent/bulk_bak/. /mnt/bulk/.
	
	
	
	_messagePlain_nominal 'attempt: umount: dent'
	sudo -n mount -o remount,ro /mnt/dent
	sync
	sudo -n umount /mnt/dent
	sync
	
	_messagePlain_request 'request: consider restoring /mnt/bulk (not overwritten by default)'
	
	_messageNormal 'done: _____special_live_dent_restore'
	return 0
}








#Override (Program).

#Override, cygwin.


# WARNING: What is otherwise considered bad practice may be accepted to reduce substantial MSW/Cygwin inconvenience .
#/usr/local/bin:/usr/bin:/cygdrive/c/WINDOWS/system32:/cygdrive/c/WINDOWS:/usr/bin:/usr/lib/lapack:/cygdrive/x:/cygdrive/x/_bin:/cygdrive/x/_bundle:/opt/ansible/bin:/opt/nodejs/current:/opt/testssl:/home/root/bin
#/cygdrive/c/WINDOWS/system32:/cygdrive/c/WINDOWS:/usr/bin:/usr/lib/lapack:/cygdrive/x:/cygdrive/x/_bin:/cygdrive/x/_bundle:/opt/ansible/bin:/opt/nodejs/current:/opt/testssl:/home/root/bin
if [[ "$PATH" == "/cygdrive"* ]] || ( [[ "$PATH" == *"/cygdrive"* ]] && [[ "$PATH" != *"/usr/local/bin"* ]] )
then
	if [[ "$PATH" == "/cygdrive"* ]]
	then
		export PATH=/usr/local/bin:/usr/bin:/bin:"$PATH"
	fi
	
	[[ "$PATH" != *"/usr/local/bin"* ]] && export PATH=/usr/local/bin:"$PATH"
	[[ "$PATH" != *"/usr/bin"* ]] && export PATH=/usr/bin:"$PATH"
	[[ "$PATH" != *"/bin:"* ]] && export PATH=/bin:"$PATH"
fi



# WARNING: Multiple reasons to instead consider direct detection by other commands -  ' uname -a | grep -i cygwin > /dev/null 2>&1 ' , ' [[ -e '/cygdrive' ]] ' , etc .
_if_cygwin() {
	if uname -a | grep -i cygwin > /dev/null 2>&1
	then
		return 0
	fi
	return 1
}

# ATTENTION: Workaround - Cygwin Portable - change directory to current directory as detected by 'ubcp.cmd' .
if [[ "$CWD" != "" ]] && [[ "$cygwin_CWD_onceOnly_done" != 'true' ]] && uname -a | grep -i cygwin > /dev/null 2>&1
then
	! cd "$CWD" && exit 1
	export cygwin_CWD_onceOnly_done='true'
fi


# ATTENTION: User must launch "tmux" (no parameters) in a graphical Cygwin terminal.
# Launches graphical application through "tmux new-window" if available.
# https://superuser.com/questions/531787/starting-windows-gui-program-in-windows-through-cygwin-sshd-from-ssh-client
_workaround_cygwin_tmux() {
	if pgrep -u "$USER" ^tmux$ > /dev/null 2>&1
	then
		tmux new-window "$@"
		return "$?"
	fi
	
	"$@"
	return "$?"
}


# DANGER: Severely differing functionality. Intended only to stand in for "ip addr show" and similar.
if ! type ip > /dev/null 2>&1 && type 'ipconfig' > /dev/null 2>&1 && uname -a | grep -i cygwin > /dev/null 2>&1
then
	ip() {
		if [[ "$1" == "addr" ]] && [[ "$2" == "show" ]]
		then
			ipconfig
			return $?
		fi
		
		return 1
	}
fi


if _if_cygwin
then
	# WARNING: Since MSW/Cygwin is hardly suitable for mounting UNIX/tmpfs/ramfs/etc filesystems, 'mountpoint' 'safety checks' are merely disabled.
	mountpoint() {
		true
	}
	losetup() {
		false
	}
	
	tc() {
		false
	}
	wondershaper() {
		false
	}
	
	ionice() {
		false
	}
fi


# CAUTION: Fragile, at best.
# DANGER: MSW apparently does not necessarily allow 'Administrator' access to all network 'drives'. Workaround copying of obvious files is limited.
# WARNING: Most likely, after significant delay, will 'prompt' the user with a very much obstructive, and not securing very much, dialog box.
# https://stackoverflow.com/questions/4090301/root-user-sudo-equivalent-in-cygwin
# https://superuser.com/questions/812018/run-a-command-in-another-cygwin-window-and-not-exit
_sudo_cygwin_sequence() {
	_start
	
	# 'If already admin, just run the command in-line.'
	# 'This works on my Win10 machine; dunno about others.'
	if id -G | grep -q ' 544 '
	then
		"$@"
		_stop "$?"
	fi
	
	# 'cygstart/runas doesn't handle arguments with spaces correctly so create'
	# 'a script that will do so properly.'
	echo "#!/bin/bash" >> "$safeTmp"/cygwin_sudo_temp.sh
	echo "export PATH=\"$PATH\"" >> "$safeTmp"/cygwin_sudo_temp.sh
	
	
	_safeEcho_newline "$safeTmp"/_bin.bat "$@" >> "$safeTmp"/cygwin_sudo_temp.sh
	echo 'echo > "'"$safeTmp"'"/sequenceDone_'"$ubiquitousBashID" >> "$safeTmp"/cygwin_sudo_temp.sh
	echo 'sleep 3' >> "$safeTmp"/cygwin_sudo_temp.sh
	chmod u+x "$safeTmp"/cygwin_sudo_temp.sh
	
	
	
	cp "$scriptAbsoluteLocation" "$safeTmp"/
	chmod u+x "$safeTmp"/$(basename "$scriptAbsoluteLocation")
	
	cp "$scriptAbsoluteFolder"/_bin.bat "$safeTmp"/_bin.bat
	chmod u+x "$safeTmp"/_bin.bat
	

	# 'Do it as Administrator.'
	#cygstart --action=runas "$scriptAbsoluteFolder"/_bin.bat bash
	
	if [[ "$scriptAbsoluteFolder" == "/cygdrive/c"* ]]
	then
		# WARNING: May be untested, or (especially under interactive shell) may call obsolete code.
		cygstart --action=runas "$scriptAbsoluteFolder"/_bin.bat "$safeTmp"/cygwin_sudo_temp.sh
	else
		cygstart --action=runas "$safeTmp"/_bin.bat "$safeTmp"/cygwin_sudo_temp.sh
	fi
	
	
	while ! [[ -e "$safeTmp"/sequenceDone_"$ubiquitousBashID" ]]
	do
		sleep 3
	done
	
	_stop "$?"
}
_sudo_cygwin() {
	"$scriptAbsoluteLocation" _sudo_cygwin_sequence "$@"
}

# CAUTION: BROKEN !
if _if_cygwin && type cygstart > /dev/null 2>&1
then
	sudo() {
		[[ "$1" == "-n" ]] && shift
		if type cygstart > /dev/null 2>&1
		then
			_sudo_cygwin "$@"
			#cygstart --action=runas "$@"
			#"$@"
			return
		else
			"$@"
			return
		fi
		
		return 1
	}
fi




_discoverResource-cygwinNative-ProgramFiles-declaration-ProgramFiles() {
	local currentBinary
	currentBinary="$1"
	
	local currentBinary_functionName
	currentBinary_functionName=$(echo "$1" | tr -dc 'a-zA-Z0-9')
	
	local currentExpectedSubdir
	currentExpectedSubdir="$2"
	
	local forceNativeBinary
	forceNativeBinary='false'
	
	[[ "$3" != "true" ]] && type "$currentBinary_functionName" > /dev/null 2>&1 && return 0
	
	local forceWorkaroundPrefix
	forceWorkaroundPrefix="$4"
	
	if ! type "$currentBinary_functionName" > /dev/null 2>&1 && type '/cygdrive/'"$currentDriveLetter_cygwin_uk4uPhB663kVcygT0q"'/Program Files/'"$currentExpectedSubdir"'/'"$currentBinary".exe > /dev/null 2>&1
	then
		eval $currentBinary_functionName'() { '"$forceWorkaroundPrefix"'/cygdrive/"'"$currentDriveLetter_cygwin_uk4uPhB663kVcygT0q"'"/"'"Program Files"'"/"'"$currentExpectedSubdir"'"/"'"$currentBinary"'".exe "$@" ; }'
		false
	fi
	
	if ! type "$currentBinary_functionName" > /dev/null 2>&1 && type '/cygdrive/'"$currentDriveLetter_cygwin_uk4uPhB663kVcygT0q"'/Program Files (x86)/'"$currentExpectedSubdir"'/'"$currentBinary".exe > /dev/null 2>&1
	then
		eval $currentBinary_functionName'() { '"$forceWorkaroundPrefix"'/cygdrive/"'"$currentDriveLetter_cygwin_uk4uPhB663kVcygT0q"'"/"'"Program Files (x86)"'"/"'"$currentExpectedSubdir"'"/"'"$currentBinary"'".exe "$@" ; }'
	fi
	type "$currentBinary_functionName" > /dev/null 2>&1 && export -f "$currentBinary" > /dev/null 2>&1 && return 0
	return 1
}

_discoverResource-cygwinNative-ProgramFiles-declaration-core() {
	local currentBinary
	currentBinary="$1"
	
	local currentBinary_functionName
	currentBinary_functionName=$(echo "$1" | tr -dc 'a-zA-Z0-9')
	
	local currentExpectedSubdir
	currentExpectedSubdir="$2"
	
	local forceNativeBinary
	forceNativeBinary='false'
	
	[[ "$3" != "true" ]] && type "$currentBinary_functionName" > /dev/null 2>&1 && return 0
	
	local forceWorkaroundPrefix
	forceWorkaroundPrefix="$4"
	
	local currentCygdriveC_equivalent
	currentCygdriveC_equivalent=$(cygpath -S | sed 's/\/Windows\/System32//g' | sed 's/^\/cygdrive\///')
	
	if ! type "$currentBinary_functionName" > /dev/null 2>&1 && type '/cygdrive/'"$currentCygdriveC_equivalent"'/core/installations/'"$currentExpectedSubdir"'/'"$currentBinary".exe > /dev/null 2>&1
	then
		eval $currentBinary_functionName'() { '"$forceWorkaroundPrefix"'/cygdrive/"'"$currentCygdriveC_equivalent"'"/"'"core/installations"'"/"'"$currentExpectedSubdir"'"/"'"$currentBinary"'".exe "$@" ; }'
	fi
	type "$currentBinary_functionName" > /dev/null 2>&1 && return 0
	
	if ! type "$currentBinary_functionName" > /dev/null 2>&1 && type '/cygdrive/'"$currentCygdriveC_equivalent"'/core/installations/'"$currentExpectedSubdir"'/'"$currentBinary".exe > /dev/null 2>&1
	then
		eval $currentBinary_functionName'() { '"$forceWorkaroundPrefix"'/cygdrive/"'"$currentCygdriveC_equivalent"'"/"'"core/installations"'"/"'"$currentExpectedSubdir"'"/"'"$currentBinary"'".exe "$@" ; }'
	fi
	type "$currentBinary_functionName" > /dev/null 2>&1 && export -f "$currentBinary" > /dev/null 2>&1 && return 0
	return 1
}

_discoverResource-cygwinNative-ProgramFiles() {
	local currentBinary
	currentBinary="$1"
	local currentBinary_functionName
	currentBinary_functionName=$(echo "$1" | tr -dc 'a-zA-Z0-9')
	[[ "$3" != "true" ]] && type "$currentBinary_functionName" > /dev/null 2>&1 && return 0
	
	local currentCygdriveC_equivalent
	currentCygdriveC_equivalent=$(cygpath -S | sed 's/\/Windows\/System32//g' | sed 's/^\/cygdrive\///')
	unset currentDriveLetter_cygwin_uk4uPhB663kVcygT0q
	export currentDriveLetter_cygwin_uk4uPhB663kVcygT0q="$currentCygdriveC_equivalent"
	_discoverResource-cygwinNative-ProgramFiles-declaration-ProgramFiles "$@"
	
	
	# ATTENTION: Configure: 'c..w' (aka. 'w..c') .
	unset currentDriveLetter_cygwin_uk4uPhB663kVcygT0q
	for currentDriveLetter_cygwin_uk4uPhB663kVcygT0q in {c..w}
	do
		_discoverResource-cygwinNative-ProgramFiles-declaration-ProgramFiles "$@"
	done
	
	_discoverResource-cygwinNative-ProgramFiles-declaration-core "$@"
	
	type "$currentBinary_functionName" > /dev/null 2>&1 && export -f "$currentBinary_functionName" > /dev/null 2>&1 && return 0
	return 1
}


_ops_cygwinOverride_allDisks() {
	# DANGER: Calling a script from every connected Cygwin/MSW drive arguably causes obvious problems, although any device or network directly connected to any MSW machine inevitably entails such risks.
	# WARNING: Looping through {w..c} completely may impose delays sufficient to break "_test_selfTime", "_test_broadcastPipe_page", etc, if extremely slow storage is attached.
	# ATTENTION: Configure: 'w..c' (aka. 'c..w') .
	unset currentDriveLetter_cygwin_uk4uPhB663kVcygT0q
	for currentDriveLetter_cygwin_uk4uPhB663kVcygT0q in {w..c}
	do
		# WARNING: May require export of functions!
		[[ -e /cygdrive/$currentDriveLetter_cygwin_uk4uPhB663kVcygT0q ]] && [[ -e /cygdrive/$currentDriveLetter_cygwin_uk4uPhB663kVcygT0q/ops-cygwin.sh ]] && . /cygdrive/$currentDriveLetter_cygwin_uk4uPhB663kVcygT0q/ops-cygwin.sh
	done
	unset currentDriveLetter_cygwin_uk4uPhB663kVcygT0q
}


if [[ -e /cygdrive ]] && _if_cygwin
then
	# WARNING: Reduces incidents of extremely slow storage attachment from breaking "_test_selfTime", "_test_broadcastPipe_page", etc, at risks of not recognizing newly installed 'native' programs for up to 20minutes .
	export cygwinOverride_measureDateB=$(date +%s%N | cut -b1-13)
	[[ "$cygwinOverride_measureDateA" == "" ]] && export cygwinOverride_measureDateA=$(bc <<< "$cygwinOverride_measureDateB - 900000000" | tr -dc '0-9')
	
	# WARNING: Experiment without checking checksum to ensure functions are exported correctly!
	if [[ $(bc <<< "$cygwinOverride_measureDateB - $cygwinOverride_measureDateA" | tr -dc '0-9') -gt 1200000 ]] || [[ "$ub_setScriptChecksum_contents_cygwinOverride" != "$ub_setScriptChecksum_contents" ]]
	then
		export cygwinOverride_measureDateA=$(date +%s%N | cut -b1-13)
		export ub_setScriptChecksum_contents_cygwinOverride="$ub_setScriptChecksum_contents"
		
		_discoverResource-cygwinNative-ProgramFiles 'nmap' 'Nmap' false
		
		# WARNING: Native 'vncviewer.exe' is a GUI app, and cannot be launched directly from Cygwin SSH server.
		_discoverResource-cygwinNative-ProgramFiles 'vncviewer' 'TigerVNC' false '_workaround_cygwin_tmux '
		
		_discoverResource-cygwinNative-ProgramFiles 'qalc' 'Qalculate' false
		
		
		# WARNING: CAUTION: DANGER: UNIX EOL *MANDATORY* !
		[[ -e "$scriptAbsoluteFolder"/ops-cygwin.sh ]] && . "$scriptAbsoluteFolder"/ops-cygwin.sh
		
		# export ubiquitousBashID=uk4uPhB663kVcygT0q
		unset currentDriveLetter_cygwin_uk4uPhB663kVcygT0q
		export currentDriveLetter_cygwin_uk4uPhB663kVcygT0q=$(cygpath -S | sed 's/\/Windows\/System32//g' | sed 's/^\/cygdrive\///')
		[[ -e /cygdrive/$currentDriveLetter_cygwin_uk4uPhB663kVcygT0q ]] && [[ -e /cygdrive/$currentDriveLetter_cygwin_uk4uPhB663kVcygT0q/ops-cygwin.sh ]] && . /cygdrive/$currentDriveLetter_cygwin_uk4uPhB663kVcygT0q/ops-cygwin.sh
		
		#_ops_cygwinOverride_allDisks "$@"
		
		unset currentDriveLetter_cygwin_uk4uPhB663kVcygT0q
	fi
fi









_setup_ubiquitousBash_cygwin_procedure_root() {
	local cygwinMSWdesktopDir
	local cygwinMSWmenuDir
	
	cygwinMSWdesktopDir=$(cygpath -u -a -A -D)
	cygwinMSWmenuDir=$(cygpath -u -a -A -P)
	
	mkdir -p "$cygwinMSWdesktopDir"
	mkdir -p "$cygwinMSWmenuDir"/ubiquitous_bash
	
	cp "$scriptAbsoluteFolder"/_bash.bat "$cygwinMSWdesktopDir"/
	cp "$scriptAbsoluteFolder"/_bash.bat "$cygwinMSWmenuDir"/ubiquitous_bash/
	
	
	cygwinMSWdesktopDir=$(cygpath -u -a -D)
	cygwinMSWmenuDir=$(cygpath -u -a -P)
	
	chown -R "$USER":"$USER" "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash > /dev/null 2>&1
	chown -R "$USER":None "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash
	
	chown "$USER":"$USER" "$cygwinMSWdesktopDir"/_bash.bat > /dev/null 2>&1
	chown "$USER":None "$cygwinMSWdesktopDir"/_bash.bat
	chown -R "$USER":"$USER" "$cygwinMSWmenuDir"/ubiquitous_bash/ > /dev/null 2>&1
	chown -R "$USER":None "$cygwinMSWmenuDir"/ubiquitous_bash/
}

_setup_ubiquitousBash_cygwin_procedure() {
	[[ "$scriptAbsoluteFolder" != '/cygdrive'* ]] && _stop 1
	
	_messagePlain_nominal 'init: _setup_ubiquitousBash_cygwin'
	
	local currentCygdriveC_equivalent
	currentCygdriveC_equivalent=$(cygpath -S | sed 's/\/Windows\/System32//g')
	
	mkdir -p "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash
	cd "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash
	
	cp "$scriptAbsoluteFolder"/ubiquitous_bash.sh "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	cp "$scriptAbsoluteFolder"/lean.sh "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	cp "$scriptAbsoluteFolder"/ubcore.sh "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	
	cp "$scriptAbsoluteFolder"/lean.py "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	
	#cp "$scriptAbsoluteFolder"/_bash "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	cp "$scriptAbsoluteFolder"/_bash.bat "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	
	#cp "$scriptAbsoluteFolder"/_bin "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	cp "$scriptAbsoluteFolder"/_bin.bat "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	
	cp "$scriptAbsoluteFolder"/_test "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	cp "$scriptAbsoluteFolder"/_test.bat "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	
	cp "$scriptAbsoluteFolder"/_true "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	cp "$scriptAbsoluteFolder"/_true.bat "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	
	cp "$scriptAbsoluteFolder"/_false "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	cp "$scriptAbsoluteFolder"/_false.bat "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	
	cp "$scriptAbsoluteFolder"/_anchor "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	cp "$scriptAbsoluteFolder"/_anchor.bat "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	cp "$scriptAbsoluteFolder"/_setup_ubcp.bat "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	
	
	cp "$scriptAbsoluteFolder"/package.tar.xz "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/
	
	
	
	mkdir -p "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/_local/ubcp
	
	cp -a "$scriptLocal"/ubcp/_upstream "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/_local/ubcp/
	cp -a "$scriptLocal"/ubcp/overlay "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/_local/ubcp/
	
	cp "$scriptLocal"/ubcp/.gitignore "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/_local/ubcp/
	
	cp "$scriptLocal"/ubcp/agpl-3.0.txt "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/_local/ubcp/
	
	cp "$scriptLocal"/ubcp/cygwin-portable.cmd "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/_local/ubcp/
	cp "$scriptLocal"/ubcp/cygwin-portable-updater.cmd "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/_local/ubcp/
	
	cp "$scriptLocal"/ubcp/gpl-2.0.txt "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/_local/ubcp/
	cp "$scriptLocal"/ubcp/gpl-3.0.txt "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/_local/ubcp/
	cp "$scriptLocal"/ubcp/license.txt "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/_local/ubcp/
	
	cp "$scriptLocal"/ubcp/README.md "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/_local/ubcp/
	
	cp "$scriptLocal"/ubcp/ubcp.cmd "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/_local/ubcp/
	cp "$scriptLocal"/ubcp/ubcp_rename-to-enable.cmd "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/_local/ubcp/
	cp "$scriptLocal"/ubcp/ubcp-cygwin-portable-installer.cmd "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash/_local/ubcp/
	
	
	
	
	cygwinMSWdesktopDir=$(cygpath -u -a -A -D)
	cygwinMSWmenuDir=$(cygpath -u -a -A -P)
	
	mkdir -p "$cygwinMSWdesktopDir"
	mkdir -p "$cygwinMSWmenuDir"/ubiquitous_bash
	
	cp "$scriptAbsoluteFolder"/_bash.bat "$cygwinMSWdesktopDir"/
	cp "$scriptAbsoluteFolder"/_bash.bat "$cygwinMSWmenuDir"/ubiquitous_bash/
	
	
	
	local cygwinMSWdesktopDir
	local cygwinMSWmenuDir
	cygwinMSWdesktopDir=$(cygpath -u -a -D)
	cygwinMSWmenuDir=$(cygpath -u -a -P)
	
	mkdir -p "$cygwinMSWdesktopDir"
	mkdir -p "$cygwinMSWmenuDir"/ubiquitous_bash
	
	cp "$scriptAbsoluteFolder"/_bash.bat "$cygwinMSWdesktopDir"/
	cp "$scriptAbsoluteFolder"/_bash.bat "$cygwinMSWmenuDir"/ubiquitous_bash/
	
	
	
	chown -R "$USER":"$USER" "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash > /dev/null 2>&1
	chown -R "$USER":None "$currentCygdriveC_equivalent"/core/infrastructure/ubiquitous_bash
	
	chown "$USER":"$USER" "$cygwinMSWdesktopDir"/_bash.bat > /dev/null 2>&1
	chown "$USER":None "$cygwinMSWdesktopDir"/_bash.bat
	chown -R "$USER":"$USER" "$cygwinMSWmenuDir"/ubiquitous_bash/ > /dev/null 2>&1
	chown -R "$USER":None "$cygwinMSWmenuDir"/ubiquitous_bash/
	
	
	#sudo -n "$scriptAbsoluteLocation" _setup_ubiquitousBash_cygwin_procedure_root "$@"
	
	
	_messagePlain_good 'done: _setup_ubiquitousBash_cygwin: lean'
	sleep 1
}


_setup_ubiquitousBash_cygwin() {
	"$scriptAbsoluteLocation" _setup_ubiquitousBash_cygwin_procedure "$@"
}





_setup_ubcp_procedure() {
	_messagePlain_nominal 'init: _setup_ubcp_procedure'
	! uname -a | grep -i cygwin > /dev/null 2>&1 && _stop 1
	
	tskill ssh-pageant > /dev/null 2>&1
	
	local currentCygdriveC_equivalent
	currentCygdriveC_equivalent=$(cygpath -S | sed 's/\/Windows\/System32//g')
	
	export safeToDeleteGit="true"
	if [[ -e "$currentCygdriveC_equivalent"/core/infrastructure/ubcp ]]
	then
		# DANGER: Not only does this use 'rm -rf' without sanity checking, the behavior is undefined if this ubcp installation has been used to start this script!
		#[[ -e "$currentCygdriveC_equivalent"/core/infrastructure/ubcp ]] && rm -rf "$currentCygdriveC_equivalent"/core/infrastructure/ubcp
		
		_messageError 'FAIL: ubcp already installed locally and must be deleted prior to script!'
		sleep 10
		_stop 1
		exit 1
		return 1
	fi
	
	
	
	
	
	#cd "$scriptLocal"/
	
	mkdir -p "$currentCygdriveC_equivalent"/core/infrastructure/
	cd "$currentCygdriveC_equivalent"/core/infrastructure/
	
	#tar -xvf "$scriptLocal"/ubcp/package_ubcp-cygwinOnly.tar.gz
	tar -xvf "$scriptLocal"/ubcp/package_ubcp-cygwinOnly.tar.xz
	
	_messagePlain_good 'done: _setup_ubcp_procedure: ubcp'
	sleep 10
	
	cd "$outerPWD"
}



# CAUTION: Do NOT hook to '_setup' .
# No production use. Developer feature.
# Highly irregular accommodation for usage of 'ubiquitous_bash' through 'ubcp' (cygwin portable) compatibility layer through MSW network drive (especially '_userVBox' MSW guest network drive) .
# WARNING: May require 'administrator' privileges under MSW. However, it may be better for this directory to be 'owned' by the 'primary' 'user' account. Particularly considering the VR/gaming/CAD software that remains 'exclusive' to MSW is 'legacy' software which for both licensing and technical reasons may be inherently incompatible with 'multi-user' access.
# WARNING: MSW 'administrator' 'privileges' may break 'ubcp' .
_setup_ubcp() {
	# WARNING: May break if 'mitigation' has not been applied!
	if ! [[ -e "$scriptLocal"/ubcp/package_ubcp-cygwinOnly.tar.gz ]] && ! [[ -e "$scriptLocal"/ubcp/package_ubcp-cygwinOnly.tar.xz ]] && [[ -e "$scriptLocal"/ubcp/cygwin ]]
	then
		"$scriptAbsoluteLocation" _package_procedure-cygwinOnly "$@"
	fi
	
	"$scriptAbsoluteLocation" _setup_ubcp_procedure "$@"
	"$scriptAbsoluteLocation" _setup_ubiquitousBash_cygwin_procedure "$@"
}






_mitigate-ubcp_rewrite_procedure() {
	_messagePlain_nominal 'init: _mitigate-ubcp_rewrite_procedure'
	
	local currentRoot=$(_getAbsoluteLocation "$PWD")
	
	local currentLink="$1"
	local currentLinkFile=$(basename "$1" )
	local currentLinkFolder=$(dirname "$1")
	currentLinkFolder=$(_getAbsoluteLocation "$currentLinkFolder")
	
	local currentLinkDirective=$(readlink "$1")
	
	
	_messagePlain_probe_var currentRoot
	_messagePlain_probe_var currentLink
	_messagePlain_probe_var currentLinkFile
	_messagePlain_probe_var currentLinkFolder
	_messagePlain_probe_var currentLinkDirective
	
	[[ "$currentLinkDirective" == '/proc/'* ]] && return 0
	[[ "$currentLinkDirective" == '/dev/'* ]] && return 0
	
	
	
	local currentRelativeRoot
	local currentLinkFolder_eval
	
	local currentDots='..'
	
	local currentMatch=false
	local currentIterations=0
	
	if [[ "$currentLinkFolder" == "$currentRoot" ]]
	then
		currentRelativeRoot='.'
		currentMatch='true'
	else
		while [[ "$currentMatch" == 'false' ]] && [[ "$currentIterations" -lt 14 ]]
		do
			_messagePlain_probe "$currentLinkFolder"/"$currentDots"
			currentLinkFolder_eval=$(_getAbsoluteLocation "$currentLinkFolder"/"$currentDots")
			[[ "$currentLinkFolder_eval" == "$currentRoot" ]] && currentMatch='true'
			
			if [[ "$currentMatch" == 'true' ]]
			then
				currentRelativeRoot="$currentDots"
			elif [[ "$currentMatch" == 'false' ]]
			then
				currentDots='../'"$currentDots"
				let currentIterations="$currentIterations"+1
			fi
		done
	fi
	
	
	
	
	_messagePlain_probe_var currentRelativeRoot
	
	
	local processedLinkDirective
	
	if [[ "$currentLinkDirective" == '/'* ]]
	then
		processedLinkDirective="$currentRelativeRoot""$currentLinkDirective"
		
	fi
	
	_messagePlain_probe_var processedLinkDirective
	
	
	
	if [[ "$currentLinkDirective" == '/'* ]]
	then
		cd "$currentLinkFolder"
		
		ls -l "$processedLinkDirective"
		
		
		# ATTENTION: Forces scenario '2'!
		# CAUTION: Three possible scenarios to consider.
		# 2) Symlinks rewritten to '/bin'. Links now pointing to '/bin' should return files when retrieved through network drive, without this link.
		# In any case, Cygwin will not be managing this directory .
		if [[ "$mitigate_ubcp_modifySymlink" == 'true' ]]
		then
			if [[ "$currentLinkDirective" == '/usr/bin/'* ]]
			then
				processedLinkDirective="${processedLinkDirective/'/usr/bin/'/'/bin/'}"
			fi
		fi
		
		
		
		ln -sf "$processedLinkDirective" "$currentLinkFolder"/"$currentLinkFile"
		
		ls -ld "$currentLinkFolder"/"$currentLinkFile"
		[[ -d "$currentLinkFolder"/"$currentLinkFile" ]] && ls -l "$currentLinkFolder"/"$currentLinkFile"
		
		#rm -f "$currentLink"
		##currentLink=$(_getAbsoluteLocation "$currentLink)
		##cd "$currentLinkFolder"
		#ln -sf "$currentLinkDirective" "$currentLink"
		# ... replace symlink with file if not also a symlink
		
		cd "$outerPWD"
	fi
	
	# ATTENTION: Forces scenario '3'!
	# CAUTION: Three possible scenarios to consider.
	# 3) Symlinks replaced. No links, files only.
	if [[ "$mitigate_ubcp_replaceSymlink" == 'true' ]]
	then
		cd "$currentLinkFolder"
		
		ls -ld "$currentLinkFolder"/"$currentLinkFile"
		
		
		
		_messagePlain_nominal 'directive: replace: true'
		cp -L -R --preserve=all "$currentLinkFolder"/"$currentLinkFile" "$currentLinkFolder"/"$currentLinkFile".replace
		rm -f "$currentLinkFolder"/"$currentLinkFile"
		mv "$currentLinkFolder"/"$currentLinkFile".replace "$currentLinkFolder"/"$currentLinkFile"
		
		ls -ld "$currentLinkFolder"/"$currentLinkFile"
		[[ -d "$currentLinkFolder"/"$currentLinkFile" ]] && ls -l "$currentLinkFolder"/"$currentLinkFile"
		
		cd "$outerPWD"
	fi
	
	
	
	return 0
}

_mitigate-ubcp_rewrite() {
	export safeToDeleteGit="true"
	! _safePath "$1" && _stop 1
	cd "$1"
	
	find "$2" -type l -exec "$scriptAbsoluteLocation" _mitigate-ubcp_rewrite_procedure '{}' \;
	
	return 0
}




_mitigate-ubcp_procedure() {
	export safeToDeleteGit="true"
	! _safePath "$1" && _stop 1
	
	# DANGER: REQUIRED for symbolic links to be valid as necessary during rewrite/replace algorithm.
	ln -s "$1"/bin "$1"/usr/bin
	
	_mitigate-ubcp_rewrite "$1" "$1"/etc/alternatives
	
	_mitigate-ubcp_rewrite "$1" "$1"/bin
	_mitigate-ubcp_rewrite "$1" "$1"/usr/share
	_mitigate-ubcp_rewrite "$1" "$1"/usr/libexec
	_mitigate-ubcp_rewrite "$1" "$1"/lib
	_mitigate-ubcp_rewrite "$1" "$1"/etc/pki
	_mitigate-ubcp_rewrite "$1" "$1"/etc/ssl
	_mitigate-ubcp_rewrite "$1" "$1"/etc/crypto-policies
	_mitigate-ubcp_rewrite "$1" "$1"/etc/mc
	
	_mitigate-ubcp_rewrite "$1" "$1"/opt
	
	
	
	
	
	# CAUTION: Three possible scenarios to consider.
	# 1) Symlinks rewritten as is to '/usr/bin'. Links pointing to '/usr/bin' directory will not work through network drive unless this link remains.
		# PREVENT - ' rm -f "$1"/usr/bin ' .
		# Tested - known working ( _userVBox , _userQemu ) .
	# 2) Symlinks rewritten to '/bin'. Links now pointing to '/bin' should return files when retrieved through network drive, without this link.
		# ALLOW - ' rm -f "$1"/usr/bin ' .
		# Tested - known working ( _userVBox , _userQemu ) .
	# 3) Symlinks replaced. No links, files only.
		# ALLOW - ' rm -f "$1"/usr/bin ' 
		# Tested - known working ( _userVBox , _userQemu ) .
	# In any case, Cygwin will not be managing this directory .
	( [[ "$mitigate_ubcp_replaceSymlink" == 'true' ]] || [[ "$mitigate_ubcp_modifySymlink" == 'true' ]] ) && rm -f "$1"/usr/bin
}




_mitigate-ubcp_directory() {
	mkdir -p "$safeTmp"/package/_local
	
	if [[ -e "$scriptLocal"/ubcp/cygwin ]]
	then
		_mitigate-ubcp_procedure "$scriptLocal"/ubcp/cygwin
		return 0
	fi
# 	if [[ -e "$scriptLib"/ubcp/cygwin ]]
# 	then
# 		_mitigate-ubcp_procedure "$scriptLib"/ubcp/cygwin
# 		return 0
# 	fi
# 	if [[ -e "$scriptAbsoluteFolder"/ubcp/cygwin ]]
# 	then
# 		_mitigate-ubcp_procedure "$scriptAbsoluteFolder"/ubcp/cygwin
# 		return 0
# 	fi
	
	
	export mitigate_ubcp_replaceSymlink='false'
	cd "$outerPWD"
	_stop 1
}

# ATTENTION: Override with 'ops' or similar.
_mitigate-ubcp() {
	export mitigate_ubcp_modifySymlink='true'
	export mitigate_ubcp_replaceSymlink='false'
	_mitigate-ubcp_directory "$@"
	
	export mitigate_ubcp_replaceSymlink='true'
	_mitigate-ubcp_directory "$@"
}



_package_procedure-cygwinOnly() {
	_start
	mkdir -p "$safeTmp"/package
	
	# WARNING: Largely due to presence of '.gitignore' files in 'ubcp' .
	export safeToDeleteGit="true"
	
	rm -f "$scriptAbsoluteFolder"/package_ubcp-cygwinOnly.tar.gz > /dev/null 2>&1
	rm -f "$scriptLocal"/package_ubcp-cygwinOnly.tar.gz > /dev/null 2>&1
	rm -f "$scriptLocal"/ubcp/package_ubcp-cygwinOnly.tar.gz > /dev/null 2>&1
	
	rm -f "$scriptAbsoluteFolder"/package_ubcp-cygwinOnly.tar.xz > /dev/null 2>&1
	rm -f "$scriptLocal"/package_ubcp-cygwinOnly.tar.xz > /dev/null 2>&1
	rm -f "$scriptLocal"/ubcp/package_ubcp-cygwinOnly.tar.xz > /dev/null 2>&1
	
	if [[ "$ubPackage_enable_ubcp" == 'true' ]]
	then
		_package_ubcp_copy "$@"
	fi
	
	cd "$safeTmp"/package/
	_package_subdir
	
	# ATTENTION: Unusual. Expected to result in a package containing only 'ubcp' directory in the root.
	# WARNING: Having these subdirectories opened in MSW 'explorer' (file manager) may cause this directory to not exist.
	! cd "$safeTmp"/package/"$objectName"/_local && _stop 1
	
	#tar -czvf "$scriptAbsoluteFolder"/package_ubcp-cygwinOnly.tar.gz .
	env XZ_OPT=-5 tar -cJvf "$scriptAbsoluteFolder"/package_ubcp-cygwinOnly.tar.xz .
	
	mkdir -p "$scriptLocal"/ubcp/
	mv "$scriptAbsoluteFolder"/package_ubcp-cygwinOnly.tar.gz "$scriptLocal"/ubcp/ > /dev/null 2>&1
	mv "$scriptAbsoluteFolder"/package_ubcp-cygwinOnly.tar.xz "$scriptLocal"/ubcp/
	
	_messagePlain_request 'request: review contents of _local/ubcp/cygwin/home and similar directories'
	sleep 20
	
	cd "$outerPWD"
	_stop
}




_package-cygwinOnly() {
	export ubPackage_enable_ubcp='true'
	"$scriptAbsoluteLocation" _package_procedure-cygwinOnly "$@"
}
_package-cygwin() {
	_package-cygwinOnly "$@"
}



















#####Utilities

_test_getAbsoluteLocation_sequence() {
	_start scriptLocal_mkdir_disable
	
	local testScriptLocation_actual
	local testScriptLocation
	local testScriptFolder
	
	local testLocation_actual
	local testLocation
	local testFolder
	
	#script location/folder work directories
	mkdir -p "$safeTmp"/sAL_dir
	cp "$scriptAbsoluteLocation" "$safeTmp"/sAL_dir/script
	ln -s "$safeTmp"/sAL_dir/script "$safeTmp"/sAL_dir/lnk
	[[ ! -e "$safeTmp"/sAL_dir/script ]] && _stop 1
	[[ ! -e "$safeTmp"/sAL_dir/lnk ]] && _stop 1
	
	ln -s "$safeTmp"/sAL_dir "$safeTmp"/sAL_lnk
	[[ ! -e "$safeTmp"/sAL_lnk/script ]] && _stop 1
	[[ ! -e "$safeTmp"/sAL_lnk/lnk ]] && _stop 1
	
	#_getScriptAbsoluteLocation
	testScriptLocation_actual=$("$safeTmp"/sAL_dir/script _getScriptAbsoluteLocation)
	[[ "$safeTmp"/sAL_dir/script != "$testScriptLocation_actual" ]] && echo 'crit: "$safeTmp"/sAL_dir/script != "$testScriptLocation_actual"' && _stop 1
	
	testScriptLocation=$("$safeTmp"/sAL_dir/script _getScriptAbsoluteLocation)
	[[ "$testScriptLocation" != "$testScriptLocation_actual" ]] && echo 'crit: ! location "$safeTmp"/sAL_dir/script' && _stop 1
	testScriptLocation=$("$safeTmp"/sAL_dir/lnk _getScriptAbsoluteLocation)
	[[ "$testScriptLocation" != "$testScriptLocation_actual" ]] && echo 'crit: ! location "$safeTmp"/sAL_dir/lnk' && _stop 1
	
	testScriptLocation=$("$safeTmp"/sAL_lnk/script _getScriptAbsoluteLocation)
	[[ "$testScriptLocation" != "$testScriptLocation_actual" ]] && echo 'crit: ! location "$safeTmp"/sAL_lnk/script' && _stop 1
	testScriptLocation=$("$safeTmp"/sAL_lnk/lnk _getScriptAbsoluteLocation)
	[[ "$testScriptLocation" != "$testScriptLocation_actual" ]] && echo 'crit: ! location "$safeTmp"/sAL_lnk/lnk' && _stop 1
	
	#_getScriptAbsoluteFolder
	testScriptFolder_actual=$("$safeTmp"/sAL_dir/script _getScriptAbsoluteFolder)
	[[ "$safeTmp"/sAL_dir != "$testScriptFolder_actual" ]] && echo 'crit: "$safeTmp"/sAL_dir != "$testScriptFolder_actual"' && _stop 1
	
	testScriptFolder=$("$safeTmp"/sAL_dir/script _getScriptAbsoluteFolder)
	[[ "$testScriptFolder" != "$testScriptFolder_actual" ]] && echo 'crit: ! folder "$safeTmp"/sAL_dir/script' && _stop 1
	testScriptFolder=$("$safeTmp"/sAL_dir/lnk _getScriptAbsoluteFolder)
	[[ "$testScriptFolder" != "$testScriptFolder_actual" ]] && echo 'crit: ! folder "$safeTmp"/sAL_dir/lnk' && _stop 1
	
	testScriptFolder=$("$safeTmp"/sAL_lnk/script _getScriptAbsoluteFolder)
	[[ "$testScriptFolder" != "$testScriptFolder_actual" ]] && echo 'crit: ! folder "$safeTmp"/sAL_lnk/script' && _stop 1
	testScriptFolder=$("$safeTmp"/sAL_lnk/lnk _getScriptAbsoluteFolder)
	[[ "$testScriptFolder" != "$testScriptFolder_actual" ]] && echo 'crit: ! folder "$safeTmp"/sAL_lnk/lnk' && _stop 1
	
	
	#_getAbsoluteLocation
	testLocation_actual=$("$safeTmp"/sAL_dir/script _getAbsoluteLocation "$safeTmp"/sAL_dir/script)
	[[ "$safeTmp"/sAL_dir/script != "$testLocation_actual" ]] && echo 'crit: "$safeTmp"/sAL_dir/script != "$testLocation_actual"' && _stop 1
	
	testLocation=$("$safeTmp"/sAL_dir/script _getAbsoluteLocation "$safeTmp"/sAL_dir/script)
	[[ "$testLocation" != "$testLocation_actual" ]] && echo 'crit: ! location "$safeTmp"/sAL_dir/script' && _stop 1
	testLocation=$("$safeTmp"/sAL_dir/lnk _getAbsoluteLocation "$safeTmp"/sAL_dir/lnk)
	[[ "$testLocation" != "$testLocation_actual" ]] && echo 'crit: ! location "$safeTmp"/sAL_dir/lnk' && _stop 1
	
	testLocation=$("$safeTmp"/sAL_lnk/script _getAbsoluteLocation "$safeTmp"/sAL_lnk/script)
	[[ "$testLocation" != "$testLocation_actual" ]] && echo 'crit: ! location "$safeTmp"/sAL_lnk/script' && _stop 1
	testLocation=$("$safeTmp"/sAL_lnk/lnk _getAbsoluteLocation "$safeTmp"/sAL_lnk/lnk)
	[[ "$testLocation" != "$testLocation_actual" ]] && echo 'crit: ! location "$safeTmp"/sAL_lnk/lnk' && _stop 1
	
	#_getAbsoluteFolder
	testFolder_actual=$("$safeTmp"/sAL_dir/script _getAbsoluteFolder "$safeTmp"/sAL_dir/script)
	[[ "$safeTmp"/sAL_dir != "$testFolder_actual" ]] && echo 'crit: "$safeTmp"/sAL_dir != "$testFolder_actual"' && _stop 1
	
	testFolder=$("$safeTmp"/sAL_dir/script _getAbsoluteFolder "$safeTmp"/sAL_dir/script)
	[[ "$testFolder" != "$testFolder_actual" ]] && echo 'crit: ! folder "$safeTmp"/sAL_dir/script' && _stop 1
	testFolder=$("$safeTmp"/sAL_dir/lnk _getAbsoluteFolder "$safeTmp"/sAL_dir/script)
	[[ "$testFolder" != "$testFolder_actual" ]] && echo 'crit: ! folder "$safeTmp"/sAL_dir/lnk' && _stop 1
	
	testFolder=$("$safeTmp"/sAL_lnk/script _getAbsoluteFolder "$safeTmp"/sAL_lnk/script)
	[[ "$testFolder" != "$testFolder_actual" ]] && echo 'crit: ! folder "$safeTmp"/sAL_lnk/script' && _stop 1
	testFolder=$("$safeTmp"/sAL_lnk/lnk _getAbsoluteFolder "$safeTmp"/sAL_lnk/script)
	[[ "$testFolder" != "$testFolder_actual" ]] && echo 'crit: ! folder "$safeTmp"/sAL_lnk/lnk' && _stop 1
	
	_stop
}

_test_getAbsoluteLocation() {
	"$scriptAbsoluteLocation" _test_getAbsoluteLocation_sequence "$@"
	[[ "$?" != "0" ]] && _stop 1
	return 0
}

#https://unix.stackexchange.com/questions/293892/realpath-l-vs-p
_test_realpath_L_s_sequence() {
	_start scriptLocal_mkdir_disable
	local functionEntryPWD
	functionEntryPWD="$PWD"
	
	
	local testPath_actual
	local testPath
	
	mkdir -p "$safeTmp"/src
	mkdir -p "$safeTmp"/sub
	ln -s  "$safeTmp"/src "$safeTmp"/sub/lnk
	
	echo > "$safeTmp"/sub/point
	
	ln -s "$safeTmp"/sub/point "$safeTmp"/sub/lnk/ref
	
	#correct
	#"$safeTmp"/sub/ref
	#realpath -L "$safeTmp"/sub/lnk/../ref
	
	#default, wrong
	#"$safeTmp"/ref
	#realpath -P "$safeTmp"/sub/lnk/../ref
	#echo -n '>'
	#readlink -f "$safeTmp"/sub/lnk/../ref
	
	testPath_actual="$safeTmp"/sub/ref
	
	cd "$functionEntryPWD"
	testPath=$(_realpath_L "$safeTmp"/sub/lnk/../ref)
	[[ "$testPath" != "$testPath_actual" ]] && echo 'crit: ! _realpath_L' && _stop 1
	
	cd "$safeTmp"
	testPath=$(_realpath_L ./sub/lnk/../ref)
	[[ "$testPath" != "$testPath_actual" ]] && echo 'crit: ! _realpath_L' && _stop 1
	
	#correct
	#"$safeTmp"/sub/lnk/ref
	#realpath -L -s "$safeTmp"/sub/lnk/ref
	
	#default, wrong for some use cases
	#"$safeTmp"/sub/point
	#realpath -L "$safeTmp"/sub/lnk/ref
	#echo -n '>'
	#readlink -f "$safeTmp"/sub/lnk/ref
	
	testPath_actual="$safeTmp"/sub/lnk/ref
	
	cd "$functionEntryPWD"
	testPath=$(_realpath_L_s "$safeTmp"/sub/lnk/ref)
	[[ "$testPath" != "$testPath_actual" ]] && echo 'crit: ! _realpath_L_s' && _stop 1
	
	cd "$safeTmp"
	testPath=$(_realpath_L_s ./sub/lnk/ref)
	[[ "$testPath" != "$testPath_actual" ]] && echo 'crit: ! _realpath_L_s' && _stop 1
	
	
	cd "$functionEntryPWD"
	_stop
}

_test_realpath_L_s() {
	#Optional safety check. Nonconformant realpath solution should be caught by synthetic test cases.
	#_compat_realpath
	#! [[ -e "$compat_realpath_bin" ]] && [[ "$compat_realpath_bin" != "" ]] && echo 'crit: missing: realpath' && _stop 1
	
	"$scriptAbsoluteLocation" _test_realpath_L_s_sequence "$@"
	[[ "$?" != "0" ]] && _stop 1
	return 0
}

_test_realpath_L() {
	_test_realpath_L_s "$@"
}

_test_realpath() {
	_test_realpath_L_s "$@"
}

_test_readlink_f_sequence() {
	_start scriptLocal_mkdir_disable
	
	echo > "$safeTmp"/realFile
	ln -s "$safeTmp"/realFile "$safeTmp"/linkA
	ln -s "$safeTmp"/linkA "$safeTmp"/linkB
	
	local currentReadlinkResult
	currentReadlinkResult=$(readlink -f "$safeTmp"/linkB)
	
	local currentReadlinkResultBasename
	currentReadlinkResultBasename=$(basename "$currentReadlinkResult")
	
	if [[ "$currentReadlinkResultBasename" != "realFile" ]]
	then
		#echo 'fail: readlink -f'
		_stop 1
	fi
	
	_stop 0
}

_test_readlink_f() {
	if ! "$scriptAbsoluteLocation" _test_readlink_f_sequence
	then
		# May fail through MSW network drive provided by '_userVBox' .
		uname -a | grep -i cygwin > /dev/null 2>&1 && echo 'warn: broken (cygwin): readlink -f' && return 1
		echo 'fail: readlink -f'
		_stop 1
	fi
	
	return 0
}

_compat_realpath() {
	[[ -e "$compat_realpath_bin" ]] && [[ "$compat_realpath_bin" != "" ]] && return 0
	
	#Workaround, Mac. See https://github.com/mirage335/ubiquitous_bash/issues/1 .
	export compat_realpath_bin=/opt/local/libexec/gnubin/realpath
	[[ -e "$compat_realpath_bin" ]] && [[ "$compat_realpath_bin" != "" ]] && return 0
	
	export compat_realpath_bin=$(type -p realpath)
	[[ -e "$compat_realpath_bin" ]] && [[ "$compat_realpath_bin" != "" ]] && return 0
	
	export compat_realpath_bin=/bin/realpath
	[[ -e "$compat_realpath_bin" ]] && [[ "$compat_realpath_bin" != "" ]] && return 0
	
	export compat_realpath_bin=/usr/bin/realpath
	[[ -e "$compat_realpath_bin" ]] && [[ "$compat_realpath_bin" != "" ]] && return 0
	
	# ATTENTION
	# Command "readlink -f" or text processing can be used as fallbacks to obtain absolute path
	# https://stackoverflow.com/questions/3572030/bash-script-absolute-path-with-osx
	
	export compat_realpath_bin=""
	return 1
}

_compat_realpath_run() {
	! _compat_realpath && return 1
	
	"$compat_realpath_bin" "$@"
}

_realpath_L() {
	if ! _compat_realpath_run -L . > /dev/null 2>&1
	then
		readlink -f "$@"
		return
	fi
	
	realpath -L "$@"
}

_realpath_L_s() {
	if ! _compat_realpath_run -L . > /dev/null 2>&1
	then
		readlink -f "$@"
		return
	fi
	
	realpath -L -s "$@"
}


_cygwin_translation_rootFileParameter() {
	if ! uname -a | grep -i cygwin > /dev/null 2>&1
	then
		echo "$0"
		return 0
	fi
	
	
	local currentScriptLocation
	currentScriptLocation="$0"
	
	# CAUTION: Lookup table is used to avoid pulling in any additional dependencies. Additionally, Cygwin apparently may ignore letter case of path .
	
	[[ "$currentScriptLocation" == 'A:'* ]] && currentScriptLocation=${currentScriptLocation/A\://cygdrive/a} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'B:'* ]] && currentScriptLocation=${currentScriptLocation/B\://cygdrive/b} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'C:'* ]] && currentScriptLocation=${currentScriptLocation/C\://cygdrive/c} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'D:'* ]] && currentScriptLocation=${currentScriptLocation/D\://cygdrive/d} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'E:'* ]] && currentScriptLocation=${currentScriptLocation/E\://cygdrive/e} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'F:'* ]] && currentScriptLocation=${currentScriptLocation/F\://cygdrive/f} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'G:'* ]] && currentScriptLocation=${currentScriptLocation/G\://cygdrive/g} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'H:'* ]] && currentScriptLocation=${currentScriptLocation/H\://cygdrive/h} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'I:'* ]] && currentScriptLocation=${currentScriptLocation/I\://cygdrive/i} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'J:'* ]] && currentScriptLocation=${currentScriptLocation/J\://cygdrive/j} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'K:'* ]] && currentScriptLocation=${currentScriptLocation/K\://cygdrive/k} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'L:'* ]] && currentScriptLocation=${currentScriptLocation/L\://cygdrive/l} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'M:'* ]] && currentScriptLocation=${currentScriptLocation/M\://cygdrive/m} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'N:'* ]] && currentScriptLocation=${currentScriptLocation/N\://cygdrive/n} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'O:'* ]] && currentScriptLocation=${currentScriptLocation/O\://cygdrive/o} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'P:'* ]] && currentScriptLocation=${currentScriptLocation/P\://cygdrive/p} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'Q:'* ]] && currentScriptLocation=${currentScriptLocation/Q\://cygdrive/q} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'R:'* ]] && currentScriptLocation=${currentScriptLocation/R\://cygdrive/r} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'S:'* ]] && currentScriptLocation=${currentScriptLocation/S\://cygdrive/s} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'T:'* ]] && currentScriptLocation=${currentScriptLocation/T\://cygdrive/t} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'U:'* ]] && currentScriptLocation=${currentScriptLocation/U\://cygdrive/u} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'V:'* ]] && currentScriptLocation=${currentScriptLocation/V\://cygdrive/v} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'W:'* ]] && currentScriptLocation=${currentScriptLocation/W\://cygdrive/w} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'X:'* ]] && currentScriptLocation=${currentScriptLocation/X\://cygdrive/x} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'Y:'* ]] && currentScriptLocation=${currentScriptLocation/Y\://cygdrive/y} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'Z:'* ]] && currentScriptLocation=${currentScriptLocation/Z\://cygdrive/z} && echo "$currentScriptLocation" && return 0
	
	[[ "$currentScriptLocation" == 'a:'* ]] && currentScriptLocation=${currentScriptLocation/a\://cygdrive/a} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'b:'* ]] && currentScriptLocation=${currentScriptLocation/b\://cygdrive/b} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'c:'* ]] && currentScriptLocation=${currentScriptLocation/c\://cygdrive/c} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'd:'* ]] && currentScriptLocation=${currentScriptLocation/d\://cygdrive/d} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'e:'* ]] && currentScriptLocation=${currentScriptLocation/e\://cygdrive/e} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'f:'* ]] && currentScriptLocation=${currentScriptLocation/f\://cygdrive/f} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'g:'* ]] && currentScriptLocation=${currentScriptLocation/g\://cygdrive/g} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'h:'* ]] && currentScriptLocation=${currentScriptLocation/h\://cygdrive/h} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'i:'* ]] && currentScriptLocation=${currentScriptLocation/i\://cygdrive/i} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'j:'* ]] && currentScriptLocation=${currentScriptLocation/j\://cygdrive/j} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'k:'* ]] && currentScriptLocation=${currentScriptLocation/k\://cygdrive/k} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'l:'* ]] && currentScriptLocation=${currentScriptLocation/l\://cygdrive/l} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'm:'* ]] && currentScriptLocation=${currentScriptLocation/m\://cygdrive/m} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'n:'* ]] && currentScriptLocation=${currentScriptLocation/n\://cygdrive/n} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'o:'* ]] && currentScriptLocation=${currentScriptLocation/o\://cygdrive/o} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'p:'* ]] && currentScriptLocation=${currentScriptLocation/p\://cygdrive/p} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'q:'* ]] && currentScriptLocation=${currentScriptLocation/q\://cygdrive/q} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'r:'* ]] && currentScriptLocation=${currentScriptLocation/r\://cygdrive/r} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 's:'* ]] && currentScriptLocation=${currentScriptLocation/s\://cygdrive/s} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 't:'* ]] && currentScriptLocation=${currentScriptLocation/t\://cygdrive/t} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'u:'* ]] && currentScriptLocation=${currentScriptLocation/u\://cygdrive/u} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'v:'* ]] && currentScriptLocation=${currentScriptLocation/v\://cygdrive/v} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'w:'* ]] && currentScriptLocation=${currentScriptLocation/w\://cygdrive/w} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'x:'* ]] && currentScriptLocation=${currentScriptLocation/x\://cygdrive/x} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'y:'* ]] && currentScriptLocation=${currentScriptLocation/y\://cygdrive/y} && echo "$currentScriptLocation" && return 0
	[[ "$currentScriptLocation" == 'z:'* ]] && currentScriptLocation=${currentScriptLocation/z\://cygdrive/z} && echo "$currentScriptLocation" && return 0
	
	
	echo "$currentScriptLocation" && return 0
}


#Critical prerequsites.
_getAbsolute_criticalDep() {
	#! type realpath > /dev/null 2>&1 && return 1
	! type readlink > /dev/null 2>&1 && return 1
	! type dirname > /dev/null 2>&1 && return 1
	! type basename > /dev/null 2>&1 && return 1
	
	#Known to succeed under BusyBox (OpenWRT), NetBSD, and common Linux variants. No known failure modes. Extra precaution.
	! readlink -f . > /dev/null 2>&1 && return 1
	
	! echo 'qwerty123.git' | grep '\.git$' > /dev/null 2>&1 && return 1
	echo 'qwerty1234git' | grep '\.git$' > /dev/null 2>&1 && return 1
	
	return 0
}
! _getAbsolute_criticalDep && exit 1

#Retrieves absolute path of current script, while maintaining symlinks, even when "./" would translate with "readlink -f" into something disregarding symlinked components in $PWD.
#However, will dereference symlinks IF the script location itself is a symlink. This is to allow symlinking to scripts to function normally.
#Suitable for allowing scripts to find other scripts they depend on. May look like an ugly hack, but it has proven reliable over the years.
_getScriptAbsoluteLocation() {
	if [[ "$0" == "-"* ]]
	then
		return 1
	fi
	
	local currentScriptLocation
	currentScriptLocation="$0"
	uname -a | grep -i cygwin > /dev/null 2>&1 && type _cygwin_translation_rootFileParameter > /dev/null 2>&1 && currentScriptLocation=$(_cygwin_translation_rootFileParameter)
	
	
	local absoluteLocation
	if [[ (-e $PWD\/$currentScriptLocation) && ($currentScriptLocation != "") ]] && [[ "$currentScriptLocation" != "/"* ]]
	then
		absoluteLocation="$PWD"\/"$currentScriptLocation"
		absoluteLocation=$(_realpath_L_s "$absoluteLocation")
	else
		absoluteLocation=$(_realpath_L "$currentScriptLocation")
	fi
	
	if [[ -h "$absoluteLocation" ]]
	then
		absoluteLocation=$(readlink -f "$absoluteLocation")
		absoluteLocation=$(_realpath_L "$absoluteLocation")
	fi
	echo $absoluteLocation
}
alias getScriptAbsoluteLocation=_getScriptAbsoluteLocation

#Retrieves absolute path of current script, while maintaining symlinks, even when "./" would translate with "readlink -f" into something disregarding symlinked components in $PWD.
#Suitable for allowing scripts to find other scripts they depend on.
_getScriptAbsoluteFolder() {
	if [[ "$0" == "-"* ]]
	then
		return 1
	fi
	
	dirname "$(_getScriptAbsoluteLocation)"
}
alias getScriptAbsoluteFolder=_getScriptAbsoluteFolder

#Retrieves absolute path of parameter, while maintaining symlinks, even when "./" would translate with "readlink -f" into something disregarding symlinked components in $PWD.
#Suitable for finding absolute paths, when it is desirable not to interfere with symlink specified folder structure.
_getAbsoluteLocation() {
	if [[ "$1" == "-"* ]]
	then
		return 1
	fi
	
	if [[ "$1" == "" ]]
	then
		echo
		return
	fi
	
	local absoluteLocation
	if [[ (-e $PWD\/$1) && ($1 != "") ]] && [[ "$1" != "/"* ]]
	then
		absoluteLocation="$PWD"\/"$1"
		absoluteLocation=$(_realpath_L_s "$absoluteLocation")
	else
		absoluteLocation=$(_realpath_L "$1")
	fi
	echo "$absoluteLocation"
}
alias getAbsoluteLocation=_getAbsoluteLocation

#Retrieves absolute path of parameter, while maintaining symlinks, even when "./" would translate with "readlink -f" into something disregarding symlinked components in $PWD.
#Suitable for finding absolute paths, when it is desirable not to interfere with symlink specified folder structure.
_getAbsoluteFolder() {
	if [[ "$1" == "-"* ]]
	then
		return 1
	fi
	
	local absoluteLocation=$(_getAbsoluteLocation "$1")
	dirname "$absoluteLocation"
}
alias getAbsoluteLocation=_getAbsoluteLocation

_getScriptLinkName() {
	! [[ -e "$0" ]] && return 1
	! [[ -L "$0" ]] && return 1
	
	! type basename > /dev/null 2>&1 && return 1
	
	local scriptLinkName
	scriptLinkName=$(basename "$0")
	
	[[ "$scriptLinkName" == "" ]] && return 1
	echo "$scriptLinkName"
}

#https://unix.stackexchange.com/questions/27021/how-to-name-a-file-in-the-deepest-level-of-a-directory-tree?answertab=active#tab-top
_filter_lowestPath() {
	awk -F'/' 'NF > depth {
depth = NF;
deepest = $0;
}
END {
print deepest;
}'
}

#https://stackoverflow.com/questions/1086907/can-find-or-any-other-tool-search-for-files-breadth-first
_filter_highestPath() {
	awk -F'/' '{print "", NF, $F}' | sort -n | awk '{print $2}' | head -n 1
}

_recursion_guard() {
	! [[ -e "$1" ]] && return 1
	
	! type "$1" >/dev/null 2>&1 && return 1
	
	local launchGuardScriptAbsoluteLocation
	launchGuardScriptAbsoluteLocation=$(_getScriptAbsoluteLocation)
	local launchGuardTestAbsoluteLocation
	launchGuardTestAbsoluteLocation=$(_getAbsoluteLocation "$1")
	[[ "$launchGuardScriptAbsoluteLocation" == "$launchGuardTestAbsoluteLocation" ]] && return 1
	
	return 0
}

#Checks whether command or function is available.
# DANGER Needed by safeRMR .
_checkDep() {
	if ! type "$1" >/dev/null 2>&1
	then
		echo "$1" missing
		_stop 1
	fi
}

_tryExec() {
	type "$1" >/dev/null 2>&1 && "$1"
}

_tryExecFull() {
	type "$1" >/dev/null 2>&1 && "$@"
}

#Fails if critical global variables point to nonexistant locations. Code may be duplicated elsewhere for extra safety.
_failExec() {
	[[ ! -e "$scriptAbsoluteLocation" ]] && return 1
	[[ ! -e "$scriptAbsoluteFolder" ]] && return 1
	return 0
}

#Portable sanity checked "rm -r" command.
# DANGER Last line of defense against catastrophic errors where "rm -r" or similar would be used!
# WARNING Not foolproof. Use to guard against systematic errors, not carelessness.
# WARNING Do NOT rely upon outside of internal programmatic usage inside script!
# WARNING Consider using this function even if program control flow can be proven safe. Redundant checks just might catch catastrophic memory errors.
#"$1" == directory to remove
_safeRMR() {
	! type _getAbsolute_criticalDep > /dev/null 2>&1 && return 1
	! _getAbsolute_criticalDep && return 1
	
	#Fail sooner, avoiding irrelevant error messages. Especially important to cases where an upstream process has already removed the "$safeTmp" directory of a downstream process which reaches "_stop" later.
	! [[ -e "$1" ]] && return 1
	
	[[ ! -e "$scriptAbsoluteLocation" ]] && return 1
	[[ ! -e "$scriptAbsoluteFolder" ]] && return 1
	_failExec || return 1
	
	#if [[ ! -e "$0" ]]
	#then
	#	return 1
	#fi
	
	if [[ "$1" == "" ]]
	then
		return 1
	fi
	
	if [[ "$1" == "/" ]]
	then
		return 1
	fi
	
	if [[ "$1" == "-"* ]]
	then
		return 1
	fi
	
	#Denylist.
	[[ "$1" == "/home" ]] && return 1
	[[ "$1" == "/home/" ]] && return 1
	[[ "$1" == "/home/$USER" ]] && return 1
	[[ "$1" == "/home/$USER/" ]] && return 1
	[[ "$1" == "/$USER" ]] && return 1
	[[ "$1" == "/$USER/" ]] && return 1
	
	[[ "$1" == "/tmp" ]] && return 1
	[[ "$1" == "/tmp/" ]] && return 1
	
	[[ "$1" == "$HOME" ]] && return 1
	[[ "$1" == "$HOME/" ]] && return 1
	
	#Allowlist.
	local safeToRM=false
	
	local safeScriptAbsoluteFolder
	#safeScriptAbsoluteFolder="$(_getScriptAbsoluteFolder)"
	safeScriptAbsoluteFolder="$scriptAbsoluteFolder"
	
	[[ "$1" == "./"* ]] && [[ "$PWD" == "$safeScriptAbsoluteFolder"* ]] && safeToRM="true"
	
	[[ "$1" == "$safeScriptAbsoluteFolder"* ]] && safeToRM="true"
	
	#[[ "$1" == "/home/$USER"* ]] && safeToRM="true"
	[[ "$1" == "/tmp/"* ]] && safeToRM="true"
	
	# WARNING: Allows removal of temporary folders created by current ubiquitous bash session only.
	[[ "$sessionid" != "" ]] && [[ "$1" == *"$sessionid"* ]] && safeToRM="true"
	[[ "$tmpSelf" != "$safeScriptAbsoluteFolder" ]] && [[ "$sessionid" != "" ]] && [[ "$1" == *$(echo "$sessionid" | head -c 16)* ]] && safeToRM="true"
	#[[ "$tmpSelf" != "$safeScriptAbsoluteFolder" ]] && [[ "$1" == "$tmpSelf"* ]] && safeToRM="true"
	
	# ATTENTION: CAUTION: Unusual Cygwin override to accommodate MSW network drive ( at least when provided by '_userVBox' ) !
	# ATTENTION: Search for verbatim warning to find related workarounds!
	if [[ "$scriptAbsoluteFolder" == '/cygdrive/'* ]] && [[ -e /cygdrive ]] && uname -a | grep -i cygwin > /dev/null 2>&1 && [[ "$scriptAbsoluteFolder" != '/cygdrive/c'* ]] && [[ "$scriptAbsoluteFolder" != '/cygdrive/C'* ]]
	then
		if [[ "$tmpSelf" != "$safeScriptAbsoluteFolder" ]] && [[ "$tmpSelf" != "" ]] && [[ "$tmpSelf" == "/cygdrive/"* ]] && [[ "$tmpSelf" == "$tmpMSW"* ]]
		then
			safeToRM="true"
		fi
	fi
	
	
	[[ "$safeToRM" == "false" ]] && return 1
	
	#Safeguards/
	[[ "$safeToDeleteGit" != "true" ]] && [[ -d "$1" ]] && [[ -e "$1" ]] && find "$1" 2>/dev/null | grep -i '\.git$' >/dev/null 2>&1 && return 1
	
	#Validate necessary tools were available for path building and checks.
	#! type realpath > /dev/null 2>&1 && return 1
	! type readlink > /dev/null 2>&1 && return 1
	! type dirname > /dev/null 2>&1 && return 1
	! type basename > /dev/null 2>&1 && return 1
	
	if [[ -e "$1" ]]
	then
		#sleep 0
		#echo "$1"
		# WARNING Recommend against adding any non-portable flags.
		rm -rf "$1" > /dev/null 2>&1
	fi
}

#Portable sanity checking for less, but, dangerous, commands.
# WARNING Not foolproof. Use to guard against systematic errors, not carelessness.
# WARNING Do NOT rely upon outside of internal programmatic usage inside script!
#"$1" == file/directory path to sanity check
_safePath() {
	! type _getAbsolute_criticalDep > /dev/null 2>&1 && return 1
	! _getAbsolute_criticalDep && return 1
	
	[[ ! -e "$scriptAbsoluteLocation" ]] && return 1
	[[ ! -e "$scriptAbsoluteFolder" ]] && return 1
	_failExec || return 1
	
	#if [[ ! -e "$0" ]]
	#then
	#	return 1
	#fi
	
	if [[ "$1" == "" ]]
	then
		return 1
	fi
	
	if [[ "$1" == "/" ]]
	then
		return 1
	fi
	
	if [[ "$1" == "-"* ]]
	then
		return 1
	fi
	
	#Denylist.
	[[ "$1" == "/home" ]] && return 1
	[[ "$1" == "/home/" ]] && return 1
	[[ "$1" == "/home/$USER" ]] && return 1
	[[ "$1" == "/home/$USER/" ]] && return 1
	[[ "$1" == "/$USER" ]] && return 1
	[[ "$1" == "/$USER/" ]] && return 1
	
	[[ "$1" == "/tmp" ]] && return 1
	[[ "$1" == "/tmp/" ]] && return 1
	
	[[ "$1" == "$HOME" ]] && return 1
	[[ "$1" == "$HOME/" ]] && return 1
	
	#Allowlist.
	local safeToRM=false
	
	local safeScriptAbsoluteFolder
	#safeScriptAbsoluteFolder="$(_getScriptAbsoluteFolder)"
	safeScriptAbsoluteFolder="$scriptAbsoluteFolder"
	
	[[ "$1" == "./"* ]] && [[ "$PWD" == "$safeScriptAbsoluteFolder"* ]] && safeToRM="true"
	
	[[ "$1" == "$safeScriptAbsoluteFolder"* ]] && safeToRM="true"
	
	#[[ "$1" == "/home/$USER"* ]] && safeToRM="true"
	[[ "$1" == "/tmp/"* ]] && safeToRM="true"
	
	# WARNING: Allows removal of temporary folders created by current ubiquitous bash session only.
	[[ "$sessionid" != "" ]] && [[ "$1" == *"$sessionid"* ]] && safeToRM="true"
	[[ "$tmpSelf" != "$safeScriptAbsoluteFolder" ]] && [[ "$sessionid" != "" ]] && [[ "$1" == *$(echo "$sessionid" | head -c 16)* ]] && safeToRM="true"
	#[[ "$tmpSelf" != "$safeScriptAbsoluteFolder" ]] && [[ "$1" == "$tmpSelf"* ]] && safeToRM="true"
	
	
	# ATTENTION: CAUTION: Unusual Cygwin override to accommodate MSW network drive ( at least when provided by '_userVBox' ) !
	# ATTENTION: Search for verbatim warning to find related workarounds!
	if [[ "$scriptAbsoluteFolder" == '/cygdrive/'* ]] && [[ -e /cygdrive ]] && uname -a | grep -i cygwin > /dev/null 2>&1 && [[ "$scriptAbsoluteFolder" != '/cygdrive/c'* ]] && [[ "$scriptAbsoluteFolder" != '/cygdrive/C'* ]]
	then
		if [[ "$tmpSelf" != "$safeScriptAbsoluteFolder" ]] && [[ "$tmpSelf" != "" ]] && [[ "$tmpSelf" == "/cygdrive/"* ]] && [[ "$tmpSelf" == "$tmpMSW"* ]]
		then
			safeToRM="true"
		fi
	fi
	
	
	[[ "$safeToRM" == "false" ]] && return 1
	
	#Safeguards/
	[[ "$safeToDeleteGit" != "true" ]] && [[ -d "$1" ]] && [[ -e "$1" ]] && find "$1" 2>/dev/null | grep -i '\.git$' >/dev/null 2>&1 && return 1
	
	#Validate necessary tools were available for path building and checks.
	#! type realpath > /dev/null 2>&1 && return 1
	! type readlink > /dev/null 2>&1 && return 1
	! type dirname > /dev/null 2>&1 && return 1
	! type basename > /dev/null 2>&1 && return 1
	
	if [[ -e "$1" ]]
	then
		#sleep 0
		#echo "$1"
		# WARNING Recommend against adding any non-portable flags.
		return 0
	fi
}

# DANGER Last line of defense against catastrophic errors when using "delete" flag with rsync or similar!
_safeBackup() {
	! type _getAbsolute_criticalDep > /dev/null 2>&1 && return 1
	! _getAbsolute_criticalDep && return 1
	
	[[ ! -e "$scriptAbsoluteLocation" ]] && return 1
	[[ ! -e "$scriptAbsoluteFolder" ]] && return 1
	
	#Fail sooner, avoiding irrelevant error messages. Especially important to cases where an upstream process has already removed the "$safeTmp" directory of a downstream process which reaches "_stop" later.
	! [[ -e "$1" ]] && return 1
	
	[[ "$1" == "" ]] && return 1
	[[ "$1" == "/" ]] && return 1
	[[ "$1" == "-"* ]] && return 1
	
	[[ "$1" == "/home" ]] && return 1
	[[ "$1" == "/home/" ]] && return 1
	[[ "$1" == "/home/$USER" ]] && return 1
	[[ "$1" == "/home/$USER/" ]] && return 1
	[[ "$1" == "/$USER" ]] && return 1
	[[ "$1" == "/$USER/" ]] && return 1
	
	[[ "$1" == "/root" ]] && return 1
	[[ "$1" == "/root/" ]] && return 1
	[[ "$1" == "/root/$USER" ]] && return 1
	[[ "$1" == "/root/$USER/" ]] && return 1
	[[ "$1" == "/$USER" ]] && return 1
	[[ "$1" == "/$USER/" ]] && return 1
	
	[[ "$1" == "/tmp" ]] && return 1
	[[ "$1" == "/tmp/" ]] && return 1
	
	[[ "$1" == "$HOME" ]] && return 1
	[[ "$1" == "$HOME/" ]] && return 1
	
	! type realpath > /dev/null 2>&1 && return 1
	! type readlink > /dev/null 2>&1 && return 1
	! type dirname > /dev/null 2>&1 && return 1
	! type basename > /dev/null 2>&1 && return 1
	
	return 0
}

# DANGER Last line of defense against catastrophic errors when using "delete" flag with rsync or similar!
# WARNING Intended for direct copy/paste inclusion into independent launch wrapper scripts. Kept here for redundancy as well as example and maintenance.
_command_safeBackup() {
	! type _command_getAbsolute_criticalDep > /dev/null 2>&1 && return 1
	! _command_getAbsolute_criticalDep && return 1
	
	[[ ! -e "$commandScriptAbsoluteLocation" ]] && return 1
	[[ ! -e "$commandScriptAbsoluteFolder" ]] && return 1
	
	#Fail sooner, avoiding irrelevant error messages. Especially important to cases where an upstream process has already removed the "$safeTmp" directory of a downstream process which reaches "_stop" later.
	! [[ -e "$1" ]] && return 1
	
	[[ "$1" == "" ]] && return 1
	[[ "$1" == "/" ]] && return 1
	[[ "$1" == "-"* ]] && return 1
	
	[[ "$1" == "/home" ]] && return 1
	[[ "$1" == "/home/" ]] && return 1
	[[ "$1" == "/home/$USER" ]] && return 1
	[[ "$1" == "/home/$USER/" ]] && return 1
	[[ "$1" == "/$USER" ]] && return 1
	[[ "$1" == "/$USER/" ]] && return 1
	
	[[ "$1" == "/root" ]] && return 1
	[[ "$1" == "/root/" ]] && return 1
	[[ "$1" == "/root/$USER" ]] && return 1
	[[ "$1" == "/root/$USER/" ]] && return 1
	[[ "$1" == "/$USER" ]] && return 1
	[[ "$1" == "/$USER/" ]] && return 1
	
	[[ "$1" == "/tmp" ]] && return 1
	[[ "$1" == "/tmp/" ]] && return 1
	
	[[ "$1" == "$HOME" ]] && return 1
	[[ "$1" == "$HOME/" ]] && return 1
	
	#! type realpath > /dev/null 2>&1 && return 1
	! type readlink > /dev/null 2>&1 && return 1
	! type dirname > /dev/null 2>&1 && return 1
	! type basename > /dev/null 2>&1 && return 1
	
	return 0
}




# Equivalent to 'mv -n' with an error exit status if file cannot be overwritten.
# https://unix.stackexchange.com/questions/248544/mv-move-file-only-if-destination-does-not-exist
_moveconfirm() {
	local currentExitStatusText
	currentExitStatusText=$(mv -vn "$1" "$2" 2>/dev/null)
	[[ "$currentExitStatusText" == "" ]] && return 1
	return 0
}


_test_moveconfirm_procedure() {
	echo > "$safeTmp"/mv_src
	echo > "$safeTmp"/mv_dst
	
	_moveconfirm "$safeTmp"/mv_src "$safeTmp"/mv_dst && return 1
	
	rm -f "$safeTmp"/mv_dst
	! _moveconfirm "$safeTmp"/mv_src "$safeTmp"/mv_dst && return 1
	
	rm -f "$safeTmp"/mv_dst
	
	return 0
}

_test_moveconfirm_sequence() {
	_start
	
	if ! _test_moveconfirm_procedure "$@"
	then
		_stop 1
	fi
	
	_stop
}

_test_moveconfirm() {
	"$scriptAbsoluteLocation" _test_moveconfirm_sequence "$@"
}


_all_exist() {
	local currentArg
	for currentArg in "$@"
	do
		! [[ -e "$currentArg" ]] && return 1
	done
	
	return 0
}

_wait_not_all_exist() {
	while ! _all_exist "$@"
	do
		sleep 0.1
	done
}

#http://stackoverflow.com/questions/687948/timeout-a-command-in-bash-without-unnecessary-delay
_timeout() { ( set +b; sleep "$1" & "${@:2}" & wait -n; r=$?; kill -9 `jobs -p`; exit $r; ) } 

_terminate() {
	local processListFile
	processListFile="$tmpSelf"/.pidlist_$(_uid)
	
	local currentPID
	
	cat "$safeTmp"/.pid >> "$processListFile" 2> /dev/null
	
	while read -r currentPID
	do
		pkill -P "$currentPID"
		kill "$currentPID"
	done < "$processListFile"
	
	rm "$processListFile"
}

_terminateMetaHostAll() {
	! ls -d -1 ./.m_*/.pid > /dev/null 2>&1 && return 0
	
	local processListFile
	processListFile="$tmpSelf"/.pidlist_$(_uid)
	
	local currentPID
	
	cat ./.m_*/.pid >> "$processListFile" 2> /dev/null
	
	while read -r currentPID
	do
		pkill -P "$currentPID"
		kill "$currentPID"
	done < "$processListFile"
	
	rm "$processListFile"
	
	! ls -d -1 ./.m_*/.pid > /dev/null 2>&1 && return 0
	sleep 0.3
	! ls -d -1 ./.m_*/.pid > /dev/null 2>&1 && return 0
	sleep 1
	! ls -d -1 ./.m_*/.pid > /dev/null 2>&1 && return 0
	sleep 3
	! ls -d -1 ./.m_*/.pid > /dev/null 2>&1 && return 0
	sleep 10
	! ls -d -1 ./.m_*/.pid > /dev/null 2>&1 && return 0
	sleep 20
	! ls -d -1 ./.m_*/.pid > /dev/null 2>&1 && return 0
	sleep 20
	! ls -d -1 ./.m_*/.pid > /dev/null 2>&1 && return 0
	sleep 20
	! ls -d -1 ./.m_*/.pid > /dev/null 2>&1 && return 0
	
	return 1
}

_terminateAll() {
	_terminateMetaHostAll
	
	local processListFile
	processListFile="$tmpSelf"/.pidlist_$(_uid)
	
	local currentPID
	
	
	cat ./.s_*/.pid >> "$processListFile" 2> /dev/null
	
	cat ./.e_*/.pid >> "$processListFile" 2> /dev/null
	cat ./.m_*/.pid >> "$processListFile" 2> /dev/null
	
	cat ./w_*/.pid >> "$processListFile" 2> /dev/null
	
	while read -r currentPID
	do
		pkill -P "$currentPID"
		kill "$currentPID"
	done < "$processListFile"
	
	rm "$processListFile"
}

_condition_lines_zero() {
	local currentLineCount
	currentLineCount=$(wc -l)
	
	[[ "$currentLineCount" == 0 ]] && return 0
	return 1
}

#Generates semi-random alphanumeric characters, default length 18.
_uid() {
	local curentLengthUID
	local currentIteration
	currentIteration=0
	
	currentLengthUID="18"
	! [[ -z "$uidLengthPrefix" ]] && ! [[ "$uidLengthPrefix" -lt "18" ]] && currentLengthUID="$uidLengthPrefix"
	! [[ -z "$1" ]] && currentLengthUID="$1"
	
	if [[ -z "$uidLengthPrefix" ]] && [[ -z "$1" ]]
	then
		# https://stackoverflow.com/questions/32484504/using-random-to-generate-a-random-string-in-bash
		# https://www.cyberciti.biz/faq/unix-linux-iterate-over-a-variable-range-of-numbers-in-bash/
		#chars=abcdefghijklmnopqrstuvwxyz0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ
		chars=bgjktwxyz23679BGJKTVWXYZ
		#for currentIteration in {1..$currentLengthUID} ; do
		for (( currentIteration=1; currentIteration<="$currentLengthUID"; currentIteration++ )) ; do
		echo -n "${chars:RANDOM%${#chars}:1}"
		done
		echo
	else
		cat /dev/urandom 2> /dev/null | base64 2> /dev/null | tr -dc 'a-zA-Z0-9' 2> /dev/null | tr -d 'acdefhilmnopqrsuvACDEFHILMNOPQRSU14580' | head -c "$currentLengthUID" 2> /dev/null
	fi
	return 0
}

# WARNING: Reduces uniqueness, irreversible. Multiple input characters result in same output character.
_filter_random() {
	tr 'a-z' 'bgjktwxyz''bgjktwxyz''bgjktwxyz' | tr 'A-Z' 'BGJKTVWXYZ''BGJKTVWXYZ''BGJKTVWXYZ' | tr '0-9' '23679''23679''23679' | tr -dc 'bgjktwxyz23679BGJKTVWXYZ'
}

# WARNING: Reduces uniqueness, irreversible. Multiple input characters result in same output character.
# WARNING: Not recommended for short strings (ie. not recommended for '8.3' compatibility ).
_filter_hex() {
	tr 'a-z' 'bcdf''bcdf''bcdf''bcdf''bcdf''bcdf''bcdf''bcdf' | tr 'A-Z' 'BCDF''BCDF''BCDF''BCDF''BCDF''BCDF''BCDF''BCDF' | tr '0-9' '23679''23679''23679' | tr -dc 'bcdf23679BCDF'
}

_compat_stat_c_run() {
	local functionOutput
	
	functionOutput=$(stat -c "$@" 2> /dev/null)
	[[ "$?" == "0" ]] && echo "$functionOutput" && return 0
	
	#BSD
	if stat --help 2>&1 | grep '\-f ' > /dev/null 2>&1
	then
		functionOutput=$(stat -f "$@" 2> /dev/null)
		[[ "$?" == "0" ]] && echo "$functionOutput" && return 0
	fi
	
	return 1
}

_permissions_directory_checkForPath() {
	local parameterAbsoluteLocation
	parameterAbsoluteLocation=$(_getAbsoluteLocation "$1")
	
	local checkScriptAbsoluteFolder="$(_getScriptAbsoluteFolder)"
	
	[[ "$parameterAbsoluteLocation" == "$PWD" ]] && ! [[ "$parameterAbsoluteLocation" == "$checkScriptAbsoluteFolder" ]] && return 1
	
	
	
	local currentParameter
	currentParameter="$1"
	
	[[ "$scriptAbsoluteFolder" == /media/"$USER"* ]] && [[ -e /media/"$USER" ]] && currentParameter=/media/"$USER"
	[[ "$scriptAbsoluteFolder" == /mnt/"$USER"* ]] && [[ -e /mnt/"$USER" ]] && currentParameter=/mnt/"$USER"
	[[ "$scriptAbsoluteFolder" == /var/run/media/"$USER"* ]] && [[ -e /var/run/media/"$USER" ]] && currentParameter=/var/run/media/"$USER"
	[[ "$scriptAbsoluteFolder" == /run/"$USER"* ]] && [[ -e /run/"$USER" ]] && currentParameter=/run/"$USER"
	
	local permissions_readout=$(_compat_stat_c_run "%a" "$currentParameter")
	
	local permissions_user
	local permissions_group
	local permissions_other
	
	permissions_user=$(echo "$permissions_readout" | cut -c 1)
	permissions_group=$(echo "$permissions_readout" | cut -c 2)
	permissions_other=$(echo "$permissions_readout" | cut -c 3)
	
	[[ "$permissions_user" -gt "7" ]] && return 1
	[[ "$permissions_group" -gt "7" ]] && return 1
	[[ "$permissions_other" -gt "5" ]] && return 1
	
	#Above checks considered sufficient in typical cases, remainder for sake of example. Return true (safe).
	return 0
	
	local permissions_uid
	local permissions_gid
	
	permissions_uid=$(_compat_stat_c_run "%u" "$currentParameter")
	permissions_gid=$(_compat_stat_c_run "%g" "$currentParameter")
	
	#Normally these variables are available through ubiqutious bash, but this permissions check may be needed earlier in that global variables setting process.
	local permissions_host_uid
	local permissions_host_gid
	
	permissions_host_uid=$(id -u)
	permissions_host_gid=$(id -g)
	
	[[ "$permissions_uid" != "$permissions_host_uid" ]] && return 1
	[[ "$permissions_uid" != "$permissions_host_gid" ]] && return 1
	
	return 0
}

#Checks whether the repository has unsafe permissions for adding binary files to path. Used as an extra safety check by "_setupUbiquitous" before adding a hook to the user's default shell environment.
_permissions_ubiquitous_repo() {
	local parameterAbsoluteLocation
	parameterAbsoluteLocation=$(_getAbsoluteLocation "$1")
	
	[[ ! -e "$parameterAbsoluteLocation" ]] && return 0
	
	! _permissions_directory_checkForPath "$parameterAbsoluteLocation" && return 1
	
	[[ -e "$parameterAbsoluteLocation"/_bin ]] && ! _permissions_directory_checkForPath "$parameterAbsoluteLocation"/_bin && return 1
	[[ -e "$parameterAbsoluteLocation"/_bundle ]] && ! _permissions_directory_checkForPath "$parameterAbsoluteLocation"/_bundle && return 1
	
	return 0
}

_test_permissions_ubiquitous-cygwin() {
	! _if_cygwin && _stop 1
	#! _if_cygwin && _stop "$1"
	
	_if_cygwin && echo 'warn: accepted: cygwin: permissions' && return 0
}

#Checks whether currently set "$scriptBin" and similar locations are actually safe.
# WARNING Keep in mind this is necessarily run only after PATH would already have been modified, and does not guard against threats already present on the local machine.
_test_permissions_ubiquitous() {
	[[ ! -e "$scriptAbsoluteFolder" ]] && _stop 1
	
	! _permissions_directory_checkForPath "$scriptAbsoluteFolder" && _test_permissions_ubiquitous-cygwin 1
	
	[[ -e "$scriptBin" ]] && ! _permissions_directory_checkForPath "$scriptBin" && _test_permissions_ubiquitous-cygwin 1
	[[ -e "$scriptBundle" ]] && ! _permissions_directory_checkForPath "$scriptBundle" && _test_permissions_ubiquitous-cygwin 1
	
	return 0
}



#Takes "$@". Places in global array variable "globalArgs".
# WARNING Adding this globalvariable to the "structure/globalvars.sh" declaration or similar to be overridden at script launch is not recommended.
#"${globalArgs[@]}"
_gather_params() {
	export globalArgs=("${@}")
}

_self_critial() {
	_priority_critical_pid "$$"
}

_self_interactive() {
	_priority_interactive_pid "$$"
}

_self_background() {
	_priority_background_pid "$$"
}

_self_idle() {
	_priority_idle_pid "$$"
}

_self_app() {
	_priority_app_pid "$$"
}

_self_zero() {
	_priority_zero_pid "$$"
}


#Example.
_priority_critical() {
	_priority_dispatch "_priority_critical_pid"
}

_priority_critical_pid_root() {
	! _wantSudo && return 1
	
	sudo -n ionice -c 2 -n 2 -p "$1"
	! sudo -n renice -15 -p "$1" && return 1
	
	return 0
}

_priority_critical_pid() {
	[[ "$1" == "" ]] && return 1
	
	_priority_critical_pid_root "$1" && return 0
	
	ionice -c 2 -n 4 -p "$1"
	! renice 0 -p "$1" && return 1
	
	return 1
}

_priority_interactive_pid_root() {
	! _wantSudo && return 1
	
	sudo -n ionice -c 2 -n 2 -p "$1"
	! sudo -n renice -10 -p "$1" && return 1
	
	return 0
}

_priority_interactive_pid() {
	[[ "$1" == "" ]] && return 1
	
	_priority_interactive_pid_root "$1" && return 0
	
	ionice -c 2 -n 4 -p "$1"
	! renice 0 -p "$1" && return 1
	
	return 1
}

_priority_app_pid_root() {
	! _wantSudo && return 1
	
	sudo -n ionice -c 2 -n 3 -p "$1"
	! sudo -n renice -5 -p "$1" && return 1
	
	return 0
}

_priority_app_pid() {
	[[ "$1" == "" ]] && return 1
	
	_priority_app_pid_root "$1" && return 0
	
	ionice -c 2 -n 4 -p "$1"
	! renice 0 -p "$1" && return 1
	
	return 1
}

_priority_background_pid_root() {
	! _wantSudo && return 1
	
	sudo -n ionice -c 2 -n 5 -p "$1"
	! sudo -n renice +5 -p "$1" && return 1
	
	return 0
}

_priority_background_pid() {
	[[ "$1" == "" ]] && return 1
	
	if ! type ionice > /dev/null 2>&1 || ! groups | grep -E 'wheel|sudo' > /dev/null 2>&1
	then
		renice +5 -p "$1"
		return 0
	fi
	
	_priority_background_pid_root "$1" && return 0
	
	ionice -c 2 -n 5 -p "$1"
	
	renice +5 -p "$1"
}



_priority_idle_pid_root() {
	! _wantSudo && return 1
	
	sudo -n ionice -c 3 -p "$1"
	! sudo -n renice +15 -p "$1" && return 1
	
	return 0
}

_priority_idle_pid() {
	[[ "$1" == "" ]] && return 1
	
	if ! type ionice > /dev/null 2>&1 || ! groups | grep -E 'wheel|sudo' > /dev/null 2>&1
	then
		renice +15 -p "$1"
		return 0
	fi
	
	_priority_idle_pid_root "$1" && return 0
	
	#https://linux.die.net/man/1/ionice
	ionice -c 3 -p "$1"
	
	renice +15 -p "$1"
}

_priority_zero_pid_root() {
	! _wantSudo && return 1
	
	sudo -n ionice -c 2 -n 4 -p "$1"
	! sudo -n renice 0 -p "$1" && return 1
	
	return 0
}

_priority_zero_pid() {
	[[ "$1" == "" ]] && return 1
	
	_priority_zero_pid_root "$1" && return 0
	
	#https://linux.die.net/man/1/ionice
	ionice -c 2 -n 4 -p "$1"
	
	renice 0 -p "$1"
}

# WARNING: Untested.
_priority_dispatch() {
	local processListFile
	processListFile="$tmpSelf"/.pidlist_$(_uid)
	
	echo "$1" >> "$processListFile"
	pgrep -P "$1" 2>/dev/null >> "$processListFile"
	
	local currentPID
	
	while read -r currentPID
	do
		"$@" "$currentPID"
	done < "$processListFile"
	
	rm "$processListFile"
}

# WARNING: Untested.
_priority_enumerate_pid() {
	[[ "$1" == "" ]] && return 1
	
	echo "$1"
	pgrep -P "$1" 2>/dev/null
}

_priority_enumerate_pattern() {
	local processListFile
	processListFile="$tmpSelf"/.pidlist_$(_uid)
	
	echo -n >> "$processListFile"
	
	pgrep "$1" >> "$processListFile"
	
	
	local parentListFile
	parentListFile="$tmpSelf"/.pidlist_$(_uid)
	
	echo -n >> "$parentListFile"
	
	local currentPID
	
	while read -r currentPID
	do
		pgrep -P "$currentPID" 2>/dev/null > "$parentListFile"
	done < "$processListFile"
	
	cat "$processListFile"
	cat "$parentListFile"
	
	
	rm "$processListFile"
	rm "$parentListFile"
}

# DANGER: Best practice is to call as with trailing slashes and source trailing dot .
# _instance_internal /root/source/. /root/destination/
# _instance_internal "$1"/. "$actualFakeHome"/"$2"/
# DANGER: Do not silence output unless specifically required (eg. links, possibly to directories, intended not to overwrite copies).
# _instance_internal "$globalFakeHome"/. "$actualFakeHome"/ > /dev/null 2>&1
_instance_internal() {
	! [[ -e "$1" ]] && return 1
	! [[ -d "$1" ]] && return 1
	! [[ -e "$2" ]] && return 1
	! [[ -d "$2" ]] && return 1
	rsync -q -ax --exclude "/.cache" --exclude "/.git" --exclude ".git" "$@"
}

#echo -n
_safeEcho() {
	printf '%s' "$1"
	shift
	
	[[ "$@" == "" ]] && return 0
	
	local currentArg
	for currentArg in "$@"
	do
		printf '%s' " "
		printf '%s' "$currentArg"
	done
	return 0
}

#echo
_safeEcho_newline() {
	_safeEcho "$@"
	printf '\n'
}

_safeEcho_quoteAddSingle() {
	# https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_07.html
	while (( "$#" )); do
		_safeEcho ' '"'""$1""'"
		shift
	done
}
_safeEcho_quoteAddSingle_newline() {
	_safeEcho_quoteAddSingle "$@"
	printf '\n'
}

_safeEcho_quoteAddDouble() {
	#https://stackoverflow.com/questions/1668649/how-to-keep-quotes-in-bash-arguments
	
	local currentCommandStringPunctuated
	local currentCommandStringParameter
	for currentCommandStringParameter in "$@"; do
		currentCommandStringParameter="${currentCommandStringParameter//\\/\\\\}"
		currentCommandStringPunctuated="$currentCommandStringPunctuated \"${currentCommandStringParameter//\"/\\\"}\""
	done
	
	_safeEcho "$currentCommandStringPunctuated"
}
_safeEcho_quoteAddDouble_newline() {
	_safeEcho_quoteAddDouble "$@"
	printf '\n'
}


#Universal debugging filesystem.
#End user function.
_user_log() {
	# DANGER Do NOT create automatically, or reference any existing directory!
	! [[ -d "$HOME"/.ubcore/userlog ]] && cat - > /dev/null 2>&1 && return 0
	
	cat - >> "$HOME"/.ubcore/userlog/user.log
	
	return 0
}

_monitor_user_log() {
	! [[ -d "$HOME"/.ubcore/userlog ]] && return 1
	
	tail -f "$HOME"/.ubcore/userlog/*
}

#Universal debugging filesystem.
#"generic/ubiquitousheader.sh"
_user_log-ub() {
	# DANGER Do NOT create automatically, or reference any existing directory!
	! [[ -d "$HOME"/.ubcore/userlog ]] && cat - > /dev/null 2>&1 && return 0
	
	#Terminal session may be used - the sessionid may be set through .bashrc/.ubcorerc .
	if [[ "$sessionid" != "" ]]
	then
		cat - >> "$HOME"/.ubcore/userlog/u-"$sessionid".log
		return 0
	fi
	cat - >> "$HOME"/.ubcore/userlog/u-undef.log
	
	return 0
}

_monitor_user_log-ub() {
	! [[ -d "$HOME"/.ubcore/userlog ]] && return 1
	
	tail -f "$HOME"/.ubcore/userlog/u-*
}

#Universal debugging filesystem.
_user_log_anchor() {
	# DANGER Do NOT create automatically, or reference any existing directory!
	! [[ -d "$HOME"/.ubcore/userlog ]] && cat - > /dev/null 2>&1 && return 0
	
	#Terminal session may be used - the sessionid may be set through .bashrc/.ubcorerc .
	if [[ "$sessionid" != "" ]]
	then
		cat - >> "$HOME"/.ubcore/userlog/a-"$sessionid".log
		return 0
	fi
	cat - >> "$HOME"/.ubcore/userlog/a-undef.log
	
	return 0
}

_monitor_user_log_anchor() {
	! [[ -d "$HOME"/.ubcore/userlog ]] && return 1
	
	tail -f "$HOME"/.ubcore/userlog/a-*
}

#Universal debugging filesystem.
_user_log_template() {
	# DANGER Do NOT create automatically, or reference any existing directory!
	! [[ -d "$HOME"/.ubcore/userlog ]] && cat - > /dev/null 2>&1 && return 0
	
	#Terminal session may be used - the sessionid may be set through .bashrc/.ubcorerc .
	if [[ "$sessionid" != "" ]]
	then
		cat - >> "$HOME"/.ubcore/userlog/t-"$sessionid".log
		return 0
	fi
	cat - >> "$HOME"/.ubcore/userlog/t-undef.log
	
	return 0
}

# https://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html
_messageColors-common() {
	echo -e '\E[1;37m ' \''\\E[1;37m'\' white \''\\E[0m'\' ' \E[0m'
	echo -e '\E[0;30m ' \''\\E[0;30m'\' black \''\\E[0m'\' ' \E[0m'
	
	echo -e '\E[0;34m ' \''\\E[0;34m'\' blue \''\\E[0m'\' ' \E[0m'
	echo -e '\E[1;34m ' \''\\E[1;34m'\' blue_light \''\\E[0m'\' ' \E[0m'
	echo -e '\E[0;32m ' \''\\E[0;32m'\' green \''\\E[0m'\' ' \E[0m'
	echo -e '\E[1;32m ' \''\\E[1;32m'\' green_light \''\\E[0m'\' ' \E[0m'
	echo -e '\E[0;36m ' \''\\E[0;36m'\' cyan \''\\E[0m'\' ' \E[0m'
	echo -e '\E[1;36m ' \''\\E[1;36m'\' cyan_light \''\\E[0m'\' ' \E[0m'
	echo -e '\E[0;31m ' \''\\E[0;31m'\' red \''\\E[0m'\' ' \E[0m'
	echo -e '\E[1;31m ' \''\\E[1;31m'\' red_light \''\\E[0m'\' ' \E[0m'
	echo -e '\E[0;35m ' \''\\E[0;35m'\' purple \''\\E[0m'\' ' \E[0m'
	echo -e '\E[1;35m ' \''\\E[1;35m'\' purple_light \''\\E[0m'\' ' \E[0m'
	echo -e '\E[0;33m ' \''\\E[0;33m'\' brown \''\\E[0m'\' ' \E[0m'
	echo -e '\E[1;33m ' \''\\E[1;33m'\' yellow \''\\E[0m'\' ' \E[0m'
	
	echo -e '\E[0;30m ' \''\\E[0;30m'\' gray \''\\E[0m'\' ' \E[0m'
	echo -e '\E[1;37m ' \''\\E[1;37m'\' gray_light \''\\E[0m'\' ' \E[0m'
	return 0
}

# https://dev.to/ifenna__/adding-colors-to-bash-scripts-48g4
# Color		Foreground Code		Background Code
# Black			30	40
# Red			31	41
# Green			32	42
# Yellow		33	43
# Blue			34	44
# Magenta		35	45
# Cyan			36	46
# Light Gray		37	47
# Gray			90	100
# Light Red		91	101
# Light Green		92	102
# Light Yellow		93	103
# Light Blue		94	104
# Light Magenta		95	105
# Light Cyan		96	106
# White			97	107
_messageColors-extra() {
	local currentIterationA
	local currentIterationB
	
	for (( currentIterationA=30; currentIterationA<="37"; currentIterationA++ )) ; do
		echo -e '\033[0;'"$currentIterationA"'m ''\\033[0;'"$currentIterationA"'m 'message' \\033[0m'' \033[0m'
		echo -e '\033[1;'"$currentIterationA"'m ''\\033[1;'"$currentIterationA"'m 'message' \\033[0m'' \033[0m'
	done
	
	for (( currentIterationA=90; currentIterationA<="97"; currentIterationA++ )) ; do
		echo -e '\033[0;'"$currentIterationA"'m ''\\033[0;'"$currentIterationA"'m 'message' \\033[0m'' \033[0m'
		echo -e '\033[1;'"$currentIterationA"'m ''\\033[1;'"$currentIterationA"'m 'message' \\033[0m'' \033[0m'
	done
	
	
	
	currentIterationB=37
	for (( currentIterationA=40; currentIterationA<="46"; currentIterationA++ )) ; do
		echo -e '\033[0;'"$currentIterationB"';'"$currentIterationA"'m ' '\\033[0;'"$currentIterationB"';'"$currentIterationA"'m ' message ' \\033[0m' ' \033[0m'
	done
	currentIterationA=47
	currentIterationB=30
	echo -e '\033[0;'"$currentIterationB"';'"$currentIterationA"'m ' '\\033[0;'"$currentIterationB"';'"$currentIterationA"'m ' message ' \\033[0m' ' \033[0m'
	
	currentIterationB=37
	for (( currentIterationA=100; currentIterationA<="107"; currentIterationA++ )) ; do
		echo -e '\033[0;'"$currentIterationB"';'"$currentIterationA"'m ' '\\033[0;'"$currentIterationB"';'"$currentIterationA"'m ' message ' \\033[0m' ' \033[0m'
	done
}

_messageColors-all() {
	local currentIterationA
	local currentIterationB
	
	for (( currentIterationB=30; currentIterationB<="37"; currentIterationB++ )) ; do
		for (( currentIterationA=40; currentIterationA<="47"; currentIterationA++ )) ; do
			echo -e '\033[0;'"$currentIterationB"';'"$currentIterationA"'m ' '\\033[0;'"$currentIterationB"';'"$currentIterationA"'m ' message ' \\033[0m' ' \033[0m'
			echo -e '\033[1;'"$currentIterationB"';'"$currentIterationA"'m ' '\\033[0;'"$currentIterationB"';'"$currentIterationA"'m ' message ' \\033[0m' ' \033[0m'
		done
	done
	
	for (( currentIterationB=90; currentIterationB<="97"; currentIterationB++ )) ; do
		for (( currentIterationA=100; currentIterationA<="107"; currentIterationA++ )) ; do
			echo -e '\033[0;'"$currentIterationB"';'"$currentIterationA"'m ' '\\033[0;'"$currentIterationB"';'"$currentIterationA"'m ' message ' \\033[0m' ' \033[0m'
			echo -e '\033[1;'"$currentIterationB"';'"$currentIterationA"'m ' '\\033[0;'"$currentIterationB"';'"$currentIterationA"'m ' message ' \\033[0m' ' \033[0m'
		done
	done
}

_messageColors() {
	clear
	_messageColors-common "$@"
	echo
	echo '##########'
	echo
	_messageColors-extra "$@"
	echo
	echo '##########'
	echo
	_messageColors-all "$@"
}


_color_demo() {
	_messagePlain_request _color_demo
	_messagePlain_nominal _color_demo
	_messagePlain_probe _color_demo
	_messagePlain_probe_expr _color_demo
	_messagePlain_probe_var ubiquitousBashIDshort
	_messagePlain_good _color_demo
	_messagePlain_warn _color_demo
	_messagePlain_bad _color_demo
	_messagePlain_probe_cmd echo _color_demo
	_messagePlain_probe_quoteAddDouble echo _color_demo
	_messagePlain_probe_quoteAddSingle echo _color_demo
	_messageNormal _color_demo
	_messageError _color_demo
	_messageDELAYipc _color_demo
	_messageProcess _color_demo
}
_color_end() {
	( [[ "$current_scriptedIllustrator_markup" == "html" ]] || [[ "$current_scriptedIllustrator_markup" == "mediawiki" ]] ) && echo -e -n '</span>'
	[[ "$current_scriptedIllustrator_markup" == "" ]] && echo -e -n ' \E[0m'
}

_color_begin_request() {
	#b218b2
	#848484
	( [[ "$current_scriptedIllustrator_markup" == "html" ]] || [[ "$current_scriptedIllustrator_markup" == "mediawiki" ]] ) && echo -e -n '<span style="color:#b218b2;background-color:#848484;"> '
	[[ "$current_scriptedIllustrator_markup" == "" ]] && echo -e -n '\E[0;35m '
}
_color_begin_nominal() {
	#18b2b2
	#848484
	( [[ "$current_scriptedIllustrator_markup" == "html" ]] || [[ "$current_scriptedIllustrator_markup" == "mediawiki" ]] ) && echo -e -n '<span style="color:#18b2b2;background-color:#848484;"> '
	[[ "$current_scriptedIllustrator_markup" == "" ]] && echo -e -n '\E[0;36m '
}
_color_begin_probe() {
	#1818b2
	#848484
	( [[ "$current_scriptedIllustrator_markup" == "html" ]] || [[ "$current_scriptedIllustrator_markup" == "mediawiki" ]] ) && echo -e -n '<span style="color:#1818b2;background-color:#848484;"> '
	[[ "$current_scriptedIllustrator_markup" == "" ]] && echo -e -n '\E[0;34m '
}
_color_begin_probe_noindent() {
	#1818b2
	#848484
	( [[ "$current_scriptedIllustrator_markup" == "html" ]] || [[ "$current_scriptedIllustrator_markup" == "mediawiki" ]] ) && echo -e -n '<span style="color:#1818b2;background-color:#848484;">'
	[[ "$current_scriptedIllustrator_markup" == "" ]] && echo -e -n '\E[0;34m'
}
_color_begin_good() {
	#17ae17
	#848484
	( [[ "$current_scriptedIllustrator_markup" == "html" ]] || [[ "$current_scriptedIllustrator_markup" == "mediawiki" ]] ) && echo -e -n '<span style="color:#17ae17;background-color:#848484;"> '
	[[ "$current_scriptedIllustrator_markup" == "" ]] && echo -e -n '\E[0;32m '
}
_color_begin_warn() {
	#ffff54
	#848484
	( [[ "$current_scriptedIllustrator_markup" == "html" ]] || [[ "$current_scriptedIllustrator_markup" == "mediawiki" ]] ) && echo -e -n '<span style="color:#ffff54;background-color:#848484;"> '
	[[ "$current_scriptedIllustrator_markup" == "" ]] && echo -e -n '\E[1;33m '
}
_color_begin_bad() {
	#b21818
	#848484
	( [[ "$current_scriptedIllustrator_markup" == "html" ]] || [[ "$current_scriptedIllustrator_markup" == "mediawiki" ]] ) && echo -e -n '<span style="color:#b21818;background-color:#848484;"> '
	[[ "$current_scriptedIllustrator_markup" == "" ]] && echo -e -n '\E[0;31m '
}
_color_begin_Normal() {
	#54ff54
	#18b2b2
	( [[ "$current_scriptedIllustrator_markup" == "html" ]] || [[ "$current_scriptedIllustrator_markup" == "mediawiki" ]] ) && echo -e -n '<span style="color:#54ff54;background-color:#18b2b2;"> '
	[[ "$current_scriptedIllustrator_markup" == "" ]] && echo -e -n '\E[1;32;46m '
}
_color_begin_Error() {
	#ffff54
	#b21818
	( [[ "$current_scriptedIllustrator_markup" == "html" ]] || [[ "$current_scriptedIllustrator_markup" == "mediawiki" ]] ) && echo -e -n '<span style="color:#ffff54;background-color:#b21818;"> '
	[[ "$current_scriptedIllustrator_markup" == "" ]] && echo -e -n '\E[1;33;41m '
}
_color_begin_DELAYipc() {
	#ffff54
	#b2b2b2
	( [[ "$current_scriptedIllustrator_markup" == "html" ]] || [[ "$current_scriptedIllustrator_markup" == "mediawiki" ]] ) && echo -e -n '<span style="color:#ffff54;background-color:#b2b2b2;"> '
	[[ "$current_scriptedIllustrator_markup" == "" ]] && echo -e -n '\E[1;33;47m '
}



#Purple. User must do something manually to proceed. NOT to be used for dependency installation requests - use probe, bad, and fail statements for that.
_messagePlain_request() {
	_color_begin_request
	echo -n "$@"
	_color_end
	echo
	return 0
}

#Cyan. Harmless status messages.
#"generic/ubiquitousheader.sh"
_messagePlain_nominal() {
	_color_begin_nominal
	echo -n "$@"
	_color_end
	echo
	return 0
}

#Blue. Diagnostic instrumentation.
#"generic/ubiquitousheader.sh"
_messagePlain_probe() {
	_color_begin_probe
	#_color_begin_probe_noindent
	echo -n "$@"
	_color_end
	echo
	return 0
}
_messagePlain_probe_noindent() {
	#_color_begin_probe
	_color_begin_probe_noindent
	echo -n "$@"
	_color_end
	echo
	return 0
}

#Blue. Diagnostic instrumentation.
#"generic/ubiquitousheader.sh"
_messagePlain_probe_expr() {
	_color_begin_probe
	echo -e -n "$@"
	_color_end
	echo
	return 0
}

#Blue. Diagnostic instrumentation.
#"generic/ubiquitousheader.sh"
_messagePlain_probe_var() {
	_color_begin_probe
	
	echo -n "$1"'= '
	
	eval echo -e -n \$"$1"
	
	_color_end
	echo
	return 0
}
_messageVar() {
	_messagePlain_probe_var "$@"
}

#Green. Working as expected.
#"generic/ubiquitousheader.sh"
_messagePlain_good() {
	_color_begin_good
	echo -n "$@"
	_color_end
	echo
	return 0
}

#Yellow. May or may not be a problem.
#"generic/ubiquitousheader.sh"
_messagePlain_warn() {
	_color_begin_warn
	echo -n "$@"
	_color_end
	echo
	return 0
}

#Red. Will result in missing functionality, reduced performance, etc, but not necessarily program failure overall.
_messagePlain_bad() {
	_color_begin_bad
	echo -n "$@"
	_color_end
	echo
	return 0
}

#Blue. Diagnostic instrumentation.
#Prints "$@" and runs "$@".
# WARNING: Use with care.
_messagePlain_probe_cmd() {
	_color_begin_probe
	
	_safeEcho "$@"
	
	_color_end
	echo
	
	"$@"
	
	return
}
_messageCMD() {
	_messagePlain_probe_cmd "$@"
}

#Blue. Diagnostic instrumentation.
#Prints "$@" with quotes around every parameter.
_messagePlain_probe_quoteAddDouble() {
	_color_begin_probe
	
	_safeEcho_quoteAddDouble "$@"
	
	_color_end
	echo
	
	return
}
_messagePlain_probe_quoteAdd() {
	_messagePlain_probe_quoteAddDouble "$@"
}

#Blue. Diagnostic instrumentation.
#Prints "$@" with single quotes around every parameter.
_messagePlain_probe_quoteAddSingle() {
	_color_begin_probe
	
	_safeEcho_quoteAddSingle "$@"
	
	_color_end
	echo
	
	return
}

#Blue. Diagnostic instrumentation.
#Prints "$@" and runs "$@".
# WARNING: Use with care.
_messagePlain_probe_cmd_quoteAdd() {
	
	_messagePlain_probe_quoteAdd "$@"
	
	"$@"
	
	return
}
_messageCMD_quoteAdd() {
	_messagePlain_probe_cmd_quoteAdd "$@"
}

#Demarcate major steps.
_messageNormal() {
	_color_begin_Normal
	echo -n "$@"
	_color_end
	echo
	return 0
}

#Demarcate major failures.
_messageError() {
	_color_begin_Error
	echo -n "$@"
	_color_end
	echo
	return 0
}

#Demarcate need to fetch/generate dependency automatically - not a failure condition.
_messageNEED() {
	_messageNormal "NEED"
	#echo " NEED "
}

#Demarcate have dependency already, no need to fetch/generate.
_messageHAVE() {
	_messageNormal "HAVE"
	#echo " HAVE "
}

_messageWANT() {
	_messageNormal "WANT"
	#echo " WANT "
}

#Demarcate where PASS/FAIL status cannot be absolutely proven. Rarely appropriate - usual best practice is to simply progress to the next major step.
_messageDONE() {
	_messageNormal "DONE"
	#echo " DONE "
}

_messagePASS() {
	_messageNormal "PASS"
	#echo " PASS "
}

#Major failure. Program stopped.
_messageFAIL() {
	_messageError "FAIL"
	#echo " FAIL "
	_stop 1
	return 0
}

_messageWARN() {
	echo
	echo "$@"
	return 0
}

# Demarcate *any* delay performed to allow 'InterProcess-Communication' connections (perhaps including at least some network or serial port servers).
_messageDELAYipc() {
	_color_begin_DELAYipc
	echo -e -n 'delay: InterProcess-Communication'
	_color_end
	echo
}


_messageProcess() {
	local processString
	processString="$1""..."
	
	local processStringLength
	processStringLength=${#processString}
	
	local currentIteration
	currentIteration=0
	
	local padLength
	let padLength=40-"$processStringLength"
	
	[[ "$processStringLength" -gt "38" ]] && _messageNormal "$processString" && return 0
	
	_color_begin_Normal
	
	echo -n "$processString"
	
	_color_end
	
	while [[ "$currentIteration" -lt "$padLength" ]]
	do
		echo -e -n ' '
		let currentIteration="$currentIteration"+1
	done
	
	return 0
}

_mustcarry() {
	grep "$1" "$2" > /dev/null 2>&1 && return 0
	
	echo "$1" >> "$2"
	return
}

#"$1" == file path
_includeFile() {
	
	if [[ -e  "$1" ]]
	then
		cat "$1" >> "$progScript"
		echo >> "$progScript"
		return 0
	fi
	
	return 1
}

#Provide only approximate, realative paths. These will be disassembled and treated as a search query following strict preferences.
#"generic/filesystem/absolutepaths.sh"
_includeScript() {
	_tryExec "_includeScript_prog" "$1" && return 0

	local includeScriptFilename=$(basename "$1")
	local includeScriptSubdirectory=$(dirname "$1")
	
	_includeFile "$configDir"/"$includeScriptSubdirectory"/"$includeScriptFilename" && return 0
	
	_includeFile "$configDir"/"$includeScriptFilename" && return 0
	
	_includeFile "$progDir"/"$includeScriptSubdirectory"/"$includeScriptFilename" && return 0
	
	_includeFile "$progDir"/"$includeScriptFilename" && return 0
	
	_includeFile "$ubiquitousLibDir"/"$includeScriptSubdirectory"/"$includeScriptFilename" && return 0
	
	_includeFile "$ubiquitousLibDir"/"$includeScriptFilename" && return 0
	
	#[[ "$configBaseDir" == "" ]] && configBaseDir="_config"
	[[ "$configBaseDir" == "" ]] && configBaseDir=$(basename "$configDir")
	
	_includeFile "$ubiquitousLibDir"/"$configBaseDir"/"$includeScriptFilename" && return 0
	
	return 1
}

# "$1" == script list array
_includeScripts() {
	local currentIncludeScript
	local historyIncludeScript
	local historyIncludedScript
	local duplicateIncludeScript
	
	for currentIncludeScript in "$@"
	do	
		duplicateIncludeScript="false"
		for historyIncludedScript in "${historyIncludeScript[@]}"
		do
			if [[ "$historyIncludedScript" == "$currentIncludeScript" ]]
			then
				duplicateIncludeScript="true"
			fi
		done
		historyIncludeScript+=("$currentIncludeScript")
		
		[[ "$duplicateIncludeScript" != "true" ]] && _includeScript "$currentIncludeScript"
	done
}

# WARNING: Untested.
#_includeScript_prog() {
#	false
	
	# WARNING: Not recommended. Create folders and submodules under "_prog" instead, as in "_prog/libName".
	#_includeFile "$scriptLib"/libName/"$includeScriptSubdirectory"/"$includeScriptFilename" && return 0
	#_includeFile "$scriptLib"/libName/"$includeScriptFilename" && return 0
	
	#return 1
#}

#Gets filename extension, specifically any last three characters in given string.
#"$1" == filename
_getExt() {
	echo "$1" | tr -dc 'a-zA-Z0-9.' | tr '[:upper:]' '[:lower:]' | tail -c 4
}

#Reports either the directory provided, or the directory of the file provided.
_findDir() {
	local dirIn=$(_getAbsoluteLocation "$1")
	dirInLogical=$(_realpath_L_s "$dirIn")
	
	if [[ -d "$dirInLogical" ]]
	then
		echo "$dirInLogical"
		return
	fi
	
	echo $(_getAbsoluteFolder "$dirInLogical")
	return
	
}

_discoverResource() {
	
	[[ "$scriptAbsoluteFolder" == "" ]] && return 1
	
	local testDir
	testDir="$scriptAbsoluteFolder" ; [[ -e "$testDir"/"$1" ]] && echo "$testDir"/"$1" && return 0
	testDir="$scriptAbsoluteFolder"/.. ; [[ -e "$testDir"/"$1" ]] && echo "$testDir"/"$1" && return 0
	testDir="$scriptAbsoluteFolder"/../.. ; [[ -e "$testDir"/"$1" ]] && echo "$testDir"/"$1" && return 0
	testDir="$scriptAbsoluteFolder"/../../.. ; [[ -e "$testDir"/"$1" ]] && echo "$testDir"/"$1" && return 0
	
	return 1
}

_rmlink() {
	[[ "$1" == "/dev/null" ]] && return 1
	
	#[[ -h "$1" ]] && rm -f "$1" && return 0
	[[ -h "$1" ]] && rm -f "$1" > /dev/null 2>&1
	
	! [[ -e "$1" ]] && return 0
	
	return 1
}

#Like "ln -sf", but will not proceed if target is not link and exists (ie. will not erase files).
_relink_procedure() {
	#Do not update correct symlink.
	local existingLinkTarget
	existingLinkTarget=$(readlink "$2")
	[[ "$existingLinkTarget" == "$1" ]] && return 0
	
	! [[ "$relinkRelativeUb" == "true" ]] && _rmlink "$2" && ln -s "$1" "$2" && return 0
	
	if [[ "$relinkRelativeUb" == "true" ]]
	then
		_rmlink "$2" && ln -s --relative "$1" "$2" && return 0
	fi
	
	return 1
}

_relink() {
	[[ "$2" == "/dev/null" ]] && return 1
	[[ "$relinkRelativeUb" == "true" ]] && export relinkRelativeUb=""
	_relink_procedure "$@"
}

_relink_relative() {
	export relinkRelativeUb=""
	
	[[ "$relinkRelativeUb" != "true" ]] && ln --help 2>/dev/null | grep '\-\-relative' > /dev/null 2>&1 && export relinkRelativeUb="true"
	[[ "$relinkRelativeUb" != "true" ]] && ln 2>&1 | grep '\-\-relative' > /dev/null 2>&1 && export relinkRelativeUb="true"
	[[ "$relinkRelativeUb" != "true" ]] && man ln 2>/dev/null | grep '\-\-relative' > /dev/null 2>&1 && export relinkRelativeUb="true"
	
	_relink_procedure "$@"
	export relinkRelativeUb=""
	unset relinkRelativeUb
}

#Copies files only if source/destination do match. Keeps files in a completely written state as often as possible.
_cpDiff() {
	! diff "$1" "$2" > /dev/null 2>&1 && cp "$1" "$2"
}

#Waits for the process PID specified by first parameter to end. Useful in conjunction with $! to provide process control and/or PID files. Unlike wait command, does not require PID to be a child of the current shell.
_pauseForProcess() {
	while ps --no-headers -p $1 &> /dev/null
	do
		sleep 0.3
	done
}
alias _waitForProcess=_pauseForProcess
alias waitForProcess=_pauseForProcess

_test_daemon() {
	_getDep pkill
}

#To ensure the lowest descendents are terminated first, the file must be created in reverse order. Additionally, PID files created before a prior reboot must be discarded and ignored.
_prependDaemonPID() {
	
	#Reset locks from before prior reboot.
	_readLocked "$daemonPidFile"lk
	_readLocked "$daemonPidFile"op
	_readLocked "$daemonPidFile"cl
	
	while true
	do
		_createLocked "$daemonPidFile"op && break
		sleep 0.1
	done
	
	#Removes old PID file if not locked during current UNIX session (ie. since latest reboot).  Prevents termination of non-daemon PIDs.
	if ! _readLocked "$daemonPidFile"lk
	then
		rm -f "$daemonPidFile"
		rm -f "$daemonPidFile"t
	fi
	_createLocked "$daemonPidFile"lk
	
	[[ ! -e "$daemonPidFile" ]] && echo >> "$daemonPidFile"
	cat - "$daemonPidFile" >> "$daemonPidFile"t
	mv "$daemonPidFile"t "$daemonPidFile"
	
	rm -f "$daemonPidFile"op
}

#By default, process descendents will be terminated first. Doing so is essential to reaching sub-proesses of sub-scripts, without manual user input.
#https://stackoverflow.com/questions/34438189/bash-sleep-process-not-getting-killed
_daemonSendTERM() {
	#Terminate descendents if parent has not been able to quit.
	pkill -P "$1"
	! ps -p "$1" >/dev/null 2>&1 && return 0
	sleep 0.1
	! ps -p "$1" >/dev/null 2>&1 && return 0
	sleep 0.3
	! ps -p "$1" >/dev/null 2>&1 && return 0
	sleep 2
	! ps -p "$1" >/dev/null 2>&1 && return 0
	sleep 6
	! ps -p "$1" >/dev/null 2>&1 && return 0
	sleep 9
	
	#Kill descendents if parent has not been able to quit.
	pkill -KILL -P "$1"
	! ps -p "$1" >/dev/null 2>&1 && return 0
	sleep 0.1
	! ps -p "$1" >/dev/null 2>&1 && return 0
	sleep 0.3
	! ps -p "$1" >/dev/null 2>&1 && return 0
	sleep 2
	
	#Terminate parent if parent has not been able to quit.
	kill -TERM "$1"
	! ps -p "$1" >/dev/null 2>&1 && return 0
	sleep 0.1
	! ps -p "$1" >/dev/null 2>&1 && return 0
	sleep 0.3
	! ps -p "$1" >/dev/null 2>&1 && return 0
	sleep 2
	
	#Kill parent if parent has not been able to quit.
	kill KILL "$1"
	! ps -p "$1" >/dev/null 2>&1 && return 0
	sleep 0.1
	! ps -p "$1" >/dev/null 2>&1 && return 0
	sleep 0.3
	
	#Failure to immediately kill parent is an extremely rare, serious error.
	ps -p "$1" >/dev/null 2>&1 && return 1
	return 0
}

#No production use.
_daemonSendKILL() {
	pkill -KILL -P "$1"
	kill -KILL "$1"
}

#True if any daemon registered process is running.
_daemonAction() {
	[[ ! -e "$daemonPidFile" ]] && return 1
	
	local currentLine
	local processedLine
	local daemonStatus
	
	while IFS='' read -r currentLine || [[ -n "$currentLine" ]]; do
		processedLine=$(echo "$currentLine" | tr -dc '0-9')
		if [[ "$processedLine" != "" ]] && ps -p "$processedLine" >/dev/null 2>&1
		then
			daemonStatus="up"
			[[ "$1" == "status" ]] && return 0
			[[ "$1" == "terminate" ]] && _daemonSendTERM "$processedLine"
			[[ "$1" == "kill" ]] && _daemonSendKILL "$processedLine"
		fi
	done < "$daemonPidFile"
	
	[[ "$daemonStatus" == "up" ]] && return 0
	return 1
}

_daemonStatus() {
	_daemonAction "status"
}

#No production use.
_waitForTermination() {
	_daemonStatus && sleep 0.1
	_daemonStatus && sleep 0.3
	_daemonStatus && sleep 1
	_daemonStatus && sleep 2
}
alias _waitForDaemon=_waitForTermination

#Kills background process using PID file.
_killDaemon() {
	#Do NOT proceed if PID values may be invalid.
	! _readLocked "$daemonPidFile"lk && return 1
	
	#Do NOT proceed if daemon is starting (opening).
	_readLocked "$daemonPidFile"op && return 1
	
	! _createLocked "$daemonPidFile"cl && return 1
	
	#Do NOT proceed if daemon is starting (opening).
	_readLocked "$daemonPidFile"op && return 1
	
	_daemonAction "terminate"
	
	#Do NOT proceed to detele lock/PID files unless daemon can be confirmed down.
	_daemonStatus && return 1
	
	rm -f "$daemonPidFile" >/dev/null 2>&1
	rm -f "$daemonPidFile"lk
	rm -f "$daemonPidFile"cl
	
	return 0
}

_cmdDaemon_sequence() {
	export isDaemon=true
	
	"$@" &
	
	local currentPID="$!"
	
	#Any PID which may be part of a daemon may be appended to this file.
	echo "$currentPID" | _prependDaemonPID
	
	wait "$currentPID"
}

_cmdDaemon() {
	"$scriptAbsoluteLocation" _cmdDaemon_sequence "$@" &
	disown -a -h -r
	disown -a -r
}

#Executes self in background (ie. as daemon).
_execDaemon() {
	#_daemonStatus && return 1
	
	_cmdDaemon "$scriptAbsoluteLocation"
}

_launchDaemon() {
	_start
	
	_killDaemon
	
	
	_execDaemon
	while _daemonStatus
	do
		sleep 5
	done
	
	
	
	
	
	_stop
}

#Remote TERM signal wrapper. Verifies script is actually running at the specified PID before passing along signal to trigger an emergency stop.
#"$1" == pidFile
#"$2" == sessionid (optional for cleaning up stale systemd files)
_remoteSigTERM() {
	[[ ! -e "$1" ]] && [[ "$2" != "" ]] && _unhook_systemd_shutdown "$2"
	
	[[ ! -e "$1" ]] && return 0
	
	pidToTERM=$(cat "$1")
	
	kill -TERM "$pidToTERM"
	
	_pauseForProcess "$pidToTERM"
}

_embed_here() {
	cat << CZXWXcRMTo8EmM8i4d
#!/usr/bin/env bash

export scriptAbsoluteLocation="$scriptAbsoluteLocation"
export scriptAbsoluteFolder="$scriptAbsoluteFolder"
export sessionid="$sessionid"
. "$scriptAbsoluteLocation" --embed "\$@"
CZXWXcRMTo8EmM8i4d
}

_embed() {
	export sessionid="$1"
	"$scriptAbsoluteLocation" --embed "$@"
}

#"$@" == URL
_fetch() {
	if type axel > /dev/null 2>&1
	then
		axel "$@"
		return 0
	fi
	
	wget "$@"
	
	return 0
}

_validatePort() {
	[[ "$1" -lt "1024" ]] && return 1
	[[ "$1" -gt "65535" ]] && return 1
	
	return 0
}

_testFindPort() {
	! _wantGetDep ss
	! _wantGetDep sockstat
	
	# WARNING: Not yet relying exclusively on 'netstat' - recommend continuing to install 'nmap' for Cygwin port range detection (and also for _waitPort) .
	if uname -a | grep -i cygwin > /dev/null 2>&1
	then
		! type nmap > /dev/null 2>&1 && echo "missing socket detection: nmap" && _stop 1
		! type netstat | grep cygdrive > /dev/null 2>&1 && echo "missing socket detection: netstat" && _stop 1
		return 0
	fi
	
	! type ss > /dev/null 2>&1 && ! type sockstat > /dev/null 2>&1 && echo "missing socket detection" && _stop 1
	
	local machineLowerPort=$(cat /proc/sys/net/ipv4/ip_local_port_range 2> /dev/null | cut -f1)
	local machineUpperPort=$(cat /proc/sys/net/ipv4/ip_local_port_range 2> /dev/null | cut -f2)
	
	[[ "$machineLowerPort" == "" ]] && echo "warn: autodetect: lower_port"
	[[ "$machineUpperPort" == "" ]] && echo "warn: autodetect: upper_port"
	[[ "$machineLowerPort" == "" ]] || [[ "$machineUpperPort" == "" ]] && return 0
	
	[[ "$machineLowerPort" -lt "1024" ]] && echo "invalid lower_port" && _stop 1
	[[ "$machineLowerPort" -lt "32768" ]] && echo "warn: low lower_port"
	[[ "$machineLowerPort" -gt "32768" ]] && echo "warn: high lower_port"
	
	[[ "$machineUpperPort" -gt "65535" ]] && echo "invalid upper_port" && _stop 1
	[[ "$machineUpperPort" -gt "60999" ]] && echo "warn: high upper_port"
	[[ "$machineUpperPort" -lt "60999" ]] && echo "warn: low upper_port"
	
	local testFoundPort
	testFoundPort=$(_findPort)
	! _validatePort "$testFoundPort" && echo "invalid port discovery" && _stop 1
}

#True if port open (in use).
_checkPort_local() {
	[[ "$1" == "" ]] && return 1
	
	if type ss > /dev/null 2>&1
	then
		ss -lpn | grep ':'"$1"' ' > /dev/null 2>&1
		return $?
	fi
	
	if type sockstat > /dev/null 2>&1
	then
		sockstat -46ln | grep '\.'"$1"' ' > /dev/null 2>&1
		return $?
	fi
	
	if uname -a | grep -i cygwin > /dev/null 2>&1 && type netstat > /dev/null 2>&1 && type netstat | grep cygdrive > /dev/null 2>&1
	then
		#nmap --host-timeout 0.1 -Pn localhost -p "$1" 2> /dev/null | grep open > /dev/null 2>&1
		
		# https://www.maketecheasier.com/check-ports-in-use-windows10/
		#netstat -a | grep 'TCP\|UDP' | cut -f 1-7 -d\
		netstat -a -n -q | grep 'TCP\|UDP' | cut -f 1-8 -d\  | grep ':'"$1" > /dev/null 2>&1
		return $?
	fi
	
	if type nmap
	then
		nmap --host-timeout 0.1 -Pn localhost -p "$1" 2> /dev/null | grep open > /dev/null 2>&1
		return $?
	fi
	
	return 1
}

#Waits a reasonable time interval for port to be open (in use).
#"$1" == port
_waitPort_local() {
	local checksDone
	checksDone=0
	while ! _checkPort_local "$1" && [[ "$checksDone" -lt 72 ]]
	do
		let checksDone+=1
		sleep 0.1
	done
	
	local checksDone
	checksDone=0
	while ! _checkPort_local "$1" && [[ "$checksDone" -lt 72 ]]
	do
		let checksDone+=1
		sleep 0.3
	done
	
	local checksDone
	checksDone=0
	while ! _checkPort_local "$1" && [[ "$checksDone" -lt 72 ]]
	do
		let checksDone+=1
		sleep 1
	done
	
	return 0
}


#http://unix.stackexchange.com/questions/55913/whats-the-easiest-way-to-find-an-unused-local-port
_findPort() {
	local lower_port
	local upper_port
	
	lower_port="$1"
	upper_port="$2"
	
	#Non public ports are between 49152-65535 (2^15 + 2^14 to 2^16 - 1).
	#Convention is to assign ports 55000-65499 and 50025-53999 to specialized servers.
	#read lower_port upper_port < /proc/sys/net/ipv4/ip_local_port_range
	[[ "$lower_port" == "" ]] && lower_port=54000
	[[ "$upper_port" == "" ]] && upper_port=54999
	
	local range_port
	local rand_max
	let range_port="upper_port - lower_port"
	let rand_max="range_port / 2"
	
	local portRangeOffset
	portRangeOffset=$RANDOM
	#let "portRangeOffset %= 150"
	let "portRangeOffset %= rand_max"
	
	[[ "$opsautoGenerationMode" == "true" ]] && [[ "$lowestUsedPort" == "" ]] && export lowestUsedPort="$lower_port"
	[[ "$opsautoGenerationMode" == "true" ]] && lower_port="$lowestUsedPort"
	
	! [[ "$opsautoGenerationMode" == "true" ]] && let "lower_port += portRangeOffset"
	
	while true
	do
		for (( currentPort = lower_port ; currentPort <= upper_port ; currentPort++ )); do
			if ! _checkPort_local "$currentPort"
			then
				sleep 0.1
				if ! _checkPort_local "$currentPort"
				then
					break 2
				fi
			fi
		done
	done
	
	if [[ "$opsautoGenerationMode" == "true" ]]
	then
		local nextUsablePort
		
		let "nextUsablePort = currentPort + 1"
		export lowestUsedPort="$nextUsablePort"
		
	fi
	
	echo "$currentPort"
	
	_validatePort "$currentPort"
}

_test_waitport() {
	_getDep nmap
}

_showPort_ipv6() {
	nmap -6 --host-timeout "$netTimeout" -Pn "$1" -p "$2" 2> /dev/null
}

_showPort_ipv4() {
	nmap --host-timeout "$netTimeout" -Pn "$1" -p "$2" 2> /dev/null
}

_checkPort_ipv6() {
	if _showPort_ipv6 "$@" | grep open > /dev/null 2>&1
	then
		return 0
	fi
	return 1
}

#Checks hostname for open port.
#"$1" == hostname
#"$2" == port
_checkPort_ipv4() {
	if _showPort_ipv4 "$@" | grep open > /dev/null 2>&1
	then
		return 0
	fi
	return 1
}

_checkPort_sequence() {
	_start
	
	local currentEchoStatus
	currentEchoStatus=$(stty --file=/dev/tty -g 2>/dev/null)
	
	local currentExitStatus
	
	if ( [[ "$1" == 'localhost' ]] || [[ "$1" == '::1' ]] || [[ "$1" == '127.0.0.1' ]] )
	then
		_checkPort_ipv4 "localhost" "$2"
		return "$?"
	fi
	
	#Lack of coproc support implies old system, which implies IPv4 only.
	#if ! type coproc >/dev/null 2>&1
	#then
	#	_checkPort_ipv4 "$1" "$2"
	#	return "$?"
	#fi
	
	( ( _showPort_ipv4 "$1" "$2" ) 2> /dev/null > "$safeTmp"/_showPort_ipv4 & )
	
	( ( _showPort_ipv6 "$1" "$2" ) 2> /dev/null > "$safeTmp"/_showPort_ipv6 & )
	
	
	local currentTimer
	currentTimer=1
	while [[ "$currentTimer" -le "$netTimeout" ]]
	do
		grep -m1 'open' "$safeTmp"/_showPort_ipv4 > /dev/null 2>&1 && _stop
		grep -m1 'open' "$safeTmp"/_showPort_ipv6 > /dev/null 2>&1 && _stop
		
		! [[ $(jobs | wc -c) -gt '0' ]] && ! grep -m1 'open' "$safeTmp"/_showPort_ipv4 && grep -m1 'open' "$safeTmp"/_showPort_ipv6 > /dev/null 2>&1 && _stop 1
		
		let currentTimer="$currentTimer"+1
		sleep 1
	done
	
	
	_stop 1
}

# DANGER: Unstable, abandoned. Reference only.
# WARNING: Limited support for older systems.
#https://unix.stackexchange.com/questions/86270/how-do-you-use-the-command-coproc-in-various-shells
#http://wiki.bash-hackers.org/syntax/keywords/coproc
#http://mywiki.wooledge.org/BashFAQ/024
#[[ $COPROC_PID ]] && kill $COPROC_PID
#coproc { bash -c '(sleep 9 ; echo test) &' ; bash -c 'echo test' ;  } ; grep -m1 test <&${COPROC[0]}
#coproc { echo test ; echo x ; } ; sleep 1 ; grep -m1 test <&${COPROC[0]}
_checkPort_sequence_coproc() {
	local currentEchoStatus
	currentEchoStatus=$(stty --file=/dev/tty -g 2>/dev/null)
	
	local currentExitStatus
	
	if ( [[ "$1" == 'localhost' ]] || [[ "$1" == '::1' ]] || [[ "$1" == '127.0.0.1' ]] )
	then
		_checkPort_ipv4 "localhost" "$2"
		return "$?"
	fi
	
	#Lack of coproc support implies old system, which implies IPv4 only.
	if ! type coproc >/dev/null 2>&1
	then
		_checkPort_ipv4 "$1" "$2"
		return "$?"
	fi
	
	#coproc { sleep 30 ; echo foo ; sleep 30 ; echo bar; } ; grep -m1 foo <&${COPROC[0]}
	#[[ $COPROC_PID ]] && kill $COPROC_PID ; coproc { ((sleep 1 ; echo test) &) ; echo x ; sleep 3 ; } ; sleep 0.1 ; grep -m1 test <&${COPROC[0]}
	
	[[ "$COPROC_PID" ]] && kill "$COPROC_PID" > /dev/null 2>&1
	coproc {
		( ( _showPort_ipv4 "$1" "$2" ) & )
		
		#[sleep] Lessens unlikely occurrence of interleaved text within "open" keyword.
		#IPv6 delayed instead of IPv4 due to likelihood of additional delay by IPv6 tunneling.
		#sleep 0.1
		
		# TODO: Better characterize problems with sleep.
		# Workaround - sleep may disable 'stty echo', which may be irreversable within SSH proxy command.
		#_timeout 0.1 cat < /dev/zero > /dev/null
		if ! ping -c 2 -i 0.1 localhost > /dev/null 2>&1
		then
			ping -c 2 -i 1 localhost > /dev/null 2>&1
		fi
		
		#[sleep] Lessens unlikely occurrence of interleaved text within "open" keyword.
		#IPv6 delayed instead of IPv4 due to likelihood of additional delay by IPv6 tunneling.
		( ( _showPort_ipv6 "$1" "$2" ) & )

		#sleep 2
		ping -c 2 -i 2 localhost > /dev/null 2>&1
	}
	grep -m1 open <&"${COPROC[0]}" > /dev/null 2>&1
	currentExitStatus="$?"
	
	stty --file=/dev/tty "$currentEchoStatus" 2> /dev/null
	
	return "$currentExitStatus"
}

#Checks hostname for open port.
#"$1" == hostname
#"$2" == port
_checkPort() {
	#local currentEchoStatus
	#currentEchoStatus=$(stty --file=/dev/tty -g 2>/dev/null)
	
	#if bash -c \""$scriptAbsoluteLocation"\"\ _checkPort_sequence\ \""$1"\"\ \""$2"\" > /dev/null 2>&1
	if "$scriptAbsoluteLocation" _checkPort_sequence "$1" "$2" > /dev/null 2>&1
	then
		#stty --file=/dev/tty "$currentEchoStatus" 2> /dev/null
		return 0
	fi
	#stty --file=/dev/tty "$currentEchoStatus" 2> /dev/null
	return 1
}


#Waits a reasonable time interval for port to be open.
#"$1" == hostname
#"$2" == port
_waitPort() {
	_checkPort "$1" "$2" && return 0
	sleep 0.1
	_checkPort "$1" "$2" && return 0
	sleep 0.1
	_checkPort "$1" "$2" && return 0
	sleep 0.1
	_checkPort "$1" "$2" && return 0
	sleep 0.1
	_checkPort "$1" "$2" && return 0
	sleep 0.1
	_checkPort "$1" "$2" && return 0
	sleep 0.1
	_checkPort "$1" "$2" && return 0
	sleep 0.1
	_checkPort "$1" "$2" && return 0
	sleep 0.1
	_checkPort "$1" "$2" && return 0
	sleep 0.3
	_checkPort "$1" "$2" && return 0
	sleep 0.3
	_checkPort "$1" "$2" && return 0
	sleep 0.6
	
	local checksDone
	checksDone=0
	while ! _checkPort "$1" "$2" && [[ "$checksDone" -lt 72 ]]
	do
		let checksDone+=1
		sleep 1
	done
	
	return 0
}

#Run command and output to terminal with colorful formatting. Controlled variant of "bash -v".
_showCommand() {
	echo -e '\E[1;32;46m $ '"$1"' \E[0m'
	"$@"
}

#Validates non-empty request.
_validateRequest() {
	echo -e -n '\E[1;32;46m Validating request '"$1"'...	\E[0m'
	[[ "$1" == "" ]] && echo -e '\E[1;33;41m BLANK \E[0m' && return 1
	echo "PASS"
	return
}

#http://www.commandlinefu.com/commands/view/3584/remove-color-codes-special-characters-with-sed
_nocolor() {
	sed -r "s/\x1B\[([0-9]{1,2}(;[0-9]{1,2})?)?[m|K]//g"
}

_noFireJail() {
	if ( [[ -L /usr/local/bin/"$1" ]] && ls -l /usr/local/bin/"$1" | grep firejail > /dev/null 2>&1 ) || ( [[ -L /usr/bin/"$1" ]] && ls -l /usr/bin/"$1" | grep firejail > /dev/null 2>&1 )
	then
		 _messagePlain_bad 'conflict: firejail: '"$1"
		 return 1
	fi
	
	return 0
}

#Copy log files to "$permaLog" or current directory (default) for analysis.
_preserveLog() {
	if [[ ! -d "$permaLog" ]]
	then
		permaLog="$PWD"
	fi
	
	cp "$logTmp"/* "$permaLog"/ > /dev/null 2>&1
}

_typeShare() {
	_typeDep "$1" && return 0
	
	[[ -e /usr/share/"$1" ]] && ! [[ -d /usr/share/"$1" ]] && return 0
	[[ -e /usr/local/share/"$1" ]] && ! [[ -d /usr/local/share/"$1" ]] && return 0
	
	[[ -d /usr/share/"$1" ]] && return 2
	[[ -d /usr/local/share/"$1" ]] && return 2
	
	[[ "$1" == '/'* ]] && [[ -e "$1"* ]] && return 3
	ls /usr/share/"$1"* > /dev/null 2>&1 && return 3
	ls /usr/local/share/"$1"* > /dev/null 2>&1 && return 3
	
	return 1
}

_typeShare_dir_wildcard() {
	local currentFunctionReturn
	_typeShare "$@"
	currentFunctionReturn="$?"
	
	[[ "$currentFunctionReturn" == '0' ]] && return 0
	[[ "$currentFunctionReturn" == '2' ]] && return 0
	[[ "$currentFunctionReturn" == '3' ]] && return 0
	return 1
}

_typeShare_dir() {
	local currentFunctionReturn
	_typeShare "$@"
	currentFunctionReturn="$?"
	
	[[ "$currentFunctionReturn" == '0' ]] && return 0
	[[ "$currentFunctionReturn" == '2' ]] && return 0
	return 1
}

_typeDep() {
	
	# WARNING: Allows specification of entire path from root. *Strongly* prefer use of subpath matching, for increased portability.
	[[ "$1" == '/'* ]] && [[ -e "$1" ]] && return 0
	
	[[ -e /lib/"$1" ]] && ! [[ -d /lib/"$1" ]] && return 0
	[[ -e /lib/x86_64-linux-gnu/"$1" ]] && ! [[ -d /lib/x86_64-linux-gnu/"$1" ]] && return 0
	[[ -e /lib64/"$1" ]] && ! [[ -d /lib64/"$1" ]] && return 0
	[[ -e /lib64/x86_64-linux-gnu/"$1" ]] && ! [[ -d /lib64/x86_64-linux-gnu/"$1" ]] && return 0
	[[ -e /usr/lib/"$1" ]] && ! [[ -d /usr/lib/"$1" ]] && return 0
	[[ -e /usr/lib/x86_64-linux-gnu/"$1" ]] && ! [[ -d /usr/lib/x86_64-linux-gnu/"$1" ]] && return 0
	[[ -e /usr/local/lib/"$1" ]] && ! [[ -d  /usr/local/lib/"$1" ]] && return 0
	[[ -e /usr/local/lib/x86_64-linux-gnu/"$1" ]] && ! [[ -d /usr/local/lib/x86_64-linux-gnu/"$1" ]] && return 0
	[[ -e /usr/include/"$1" ]] && ! [[ -d /usr/include/"$1" ]] && return 0
	[[ -e /usr/include/x86_64-linux-gnu/"$1" ]] && ! [[ -d /usr/include/x86_64-linux-gnu/"$1" ]] && return 0
	[[ -e /usr/local/include/"$1" ]] && ! [[ -d /usr/local/include/"$1" ]] && return 0
	[[ -e /usr/local/include/x86_64-linux-gnu/"$1" ]] && ! [[ -d /usr/local/include/x86_64-linux-gnu/"$1" ]] && return 0
	
	if ! type "$1" >/dev/null 2>&1
	then
		return 1
	fi
	
	return 0
}

_wantDep() {
	_typeDep "$1" && return 0
	
	# Expect already root if 'MSW/Cygwin' and obstructive popup dialog if 'sudo' is called through 'MSW/Cygwin' .
	_if_cygwin && return 1
	
	_wantSudo && sudo -n "$scriptAbsoluteLocation" _typeDep "$1" && return 0
	
	return 1
}

_mustGetDep() {
	_typeDep "$1" && return 0
	
	# Expect already root if 'MSW/Cygwin' and obstructive popup dialog if 'sudo' is called through 'MSW/Cygwin' .
	_if_cygwin && return 1
	
	_wantSudo && sudo -n "$scriptAbsoluteLocation" _typeDep "$1" && return 0
	
	echo "$1" missing
	_stop 1
}

_fetchDep_distro() {
	if [[ -e /etc/issue ]] && cat /etc/issue | grep 'Debian' > /dev/null 2>&1
	then
		_tryExecFull _fetchDep_debian "$@"
		return
	fi
	return 1
}

_wantGetDep() {
	_wantDep "$@" && return 0
	
	_fetchDep_distro "$@"
	
	_wantDep "$@" && return 0
	return 1
}

_getDep() {
	_wantDep "$@" && return 0
	
	_fetchDep_distro "$@"
	
	_mustGetDep "$@"
}

#Determines if user is root. If yes, then continue. If not, exits after printing error message.
_mustBeRoot() {
if [[ $(id -u) != 0 ]]; then 
	echo "This must be run as root!"
	exit
fi
}
alias mustBeRoot=_mustBeRoot

#Determines if sudo is usable by scripts.
_mustGetSudo() {
	# WARNING: What is otherwise considered bad practice may be accepted to reduce substantial MSW/Cygwin inconvenience .
	_if_cygwin && return 0
	
	local rootAvailable
	rootAvailable=false
	
	rootAvailable=$(sudo -n echo true)
	
	#[[ $(id -u) == 0 ]] && rootAvailable=true
	
	! [[ "$rootAvailable" == "true" ]] && exit 1
	
	return 0
}

#Determines if sudo is usable by scripts. Will not exit on failure.
_wantSudo() {
	# WARNING: What is otherwise considered bad practice may be accepted to reduce substantial MSW/Cygwin inconvenience .
	_if_cygwin && return 0
	
	local rootAvailable
	rootAvailable=false
	
	rootAvailable=$(sudo -n echo true 2> /dev/null)
	
	#[[ $(id -u) == 0 ]] && rootAvailable=true
	
	! [[ "$rootAvailable" == "true" ]] && return 1
	
	return 0
}

#Returns a UUID in the form of xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx
_getUUID() {
	if [[ -e /proc/sys/kernel/random/uuid ]]
	then
		cat /proc/sys/kernel/random/uuid
		return 0
	fi
	
	
	if type -p uuidgen > /dev/null 2>&1
	then
		uuidgen
		return 0
	fi
	
	# Failure. Intentionally adds extra characters to cause any tests of uuid output to fail.
	_uid 40
	return 1
}
alias getUUID=_getUUID

_resetFakeHomeEnv_extra() {
	true
}

_resetFakeHomeEnv_nokeep() {
	! [[ "$setFakeHome" == "true" ]] && return 0
	export setFakeHome="false"
	
	export HOME="$realHome"
	
	#export realHome=""
	
	_resetFakeHomeEnv_extra
}

_resetFakeHomeEnv() {
	#[[ "$keepFakeHome" == "true" ]] && return 0
	[[ "$keepFakeHome" != "false" ]] && return 0
	
	_resetFakeHomeEnv_nokeep
} 

#####Shortcuts

# https://unix.stackexchange.com/questions/434409/make-a-bash-ps1-that-counts-streak-of-correct-commands
_visualPrompt_promptCommand() {
	[[ "$PS1_lineNumber" == "" ]] && PS1_lineNumber='0'
	#echo "$PS1_lineNumber"
	let PS1_lineNumber="$PS1_lineNumber"+1
	#export PS1_lineNumber

	PS1_lineNumberText="$PS1_lineNumber"
	if [[ "$PS1_lineNumber" == '1' ]]
	then
		# https://unix.stackexchange.com/questions/266921/is-it-possible-to-use-ansi-color-escape-codes-in-bash-here-documents
		PS1_lineNumberText=$(echo -e -n '\E[1;36m'1)
		#PS1_lineNumberText=$(echo -e -n '\E[1;36m'1)
		#PS1_lineNumberText=$(echo -e -n '\[\033[01;36m\]'1)
		#PS1_lineNumberText=$(echo -e -n '\033[01;36m'1)
	fi
}

_visualPrompt() {
	#+%H:%M:%S\ %Y-%m-%d\ Q%q
	#+%H:%M:%S\ %b\ %d,\ %y

	#Long.
	#export PS1='\[\033[01;40m\]\[\033[01;36m\]+\[\033[01;34m\]-|\[\033[01;31m\]${?}:${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\u\[\033[01;32m\]@\h\[\033[01;36m\]\[\033[01;34m\])-\[\033[01;36m\]--\[\033[01;34m\]-(\[\033[01;35m\]$(date +%H:%M:%S\ .%d)\[\033[01;34m\])-\[\033[01;36m\]-|\[\033[00m\]\n\[\033[01;40m\]\[\033[01;36m\]+\[\033[01;34m\]-|\[\033[37m\][\w]\[\033[00m\]\n\[\033[01;36m\]+\[\033[01;34m\]-|\#) \[\033[36m\]>\[\033[00m\] '

	#Short.
	#export PS1='\[\033[01;40m\]\[\033[01;36m\]+\[\033[01;34m\]|\[\033[01;31m\]${?}:${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\u\[\033[01;32m\]@\h\[\033[01;36m\]\[\033[01;34m\])-\[\033[01;36m\]-\[\033[01;34m\]-(\[\033[01;35m\]$(date +%H:%M:%S\ .%d)\[\033[01;34m\])\[\033[01;36m\]|\[\033[00m\]\n\[\033[01;40m\]\[\033[01;36m\]+\[\033[01;34m\]|\[\033[37m\][\w]\[\033[00m\]\n\[\033[01;36m\]+\[\033[01;34m\]|\#) \[\033[36m\]>\[\033[00m\] '
	
	#Truncated, 40 columns.
	#export PS1='\[\033[01;40m\]\[\033[01;36m\]\[\033[01;34m\]|\[\033[01;31m\]${?}:${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\u\[\033[01;32m\]@\h\[\033[01;36m\]\[\033[01;34m\])\[\033[01;36m\]\[\033[01;34m\]-(\[\033[01;35m\]$(date +%H:%M:%S\.%d)\[\033[01;34m\])\[\033[01;36m\]|\[\033[00m\]\n\[\033[01;40m\]\[\033[01;36m\]\[\033[01;34m\]|\[\033[37m\][\w]\[\033[00m\]\n\[\033[01;36m\]\[\033[01;34m\]|\#) \[\033[36m\]>\[\033[00m\] '
	
	
	# https://unix.stackexchange.com/questions/434409/make-a-bash-ps1-that-counts-streak-of-correct-commands
	
	#export PROMPT_COMMAND=$(declare -f _visualPrompt_promptCommand)' ; _visualPrompt_promptCommand'
	#export PROMPT_COMMAND='_visualPrompt_promptCommand () { [[ "$PS1_lineNumber" == "" ]] && PS1_lineNumber="0"; let PS1_lineNumber="$PS1_lineNumber"+1; PS1_lineNumberText="$PS1_lineNumber"; if [[ "$PS1_lineNumber" == "1" ]]; then PS1_lineNumberText=$(echo -e -n "'"\E[1;36m"'"1"'"\E[0m"'"); fi } ; _visualPrompt_promptCommand'
	
	export -f _visualPrompt_promptCommand
	export PROMPT_COMMAND=_visualPrompt_promptCommand
	
	#export PS1='\[\033[01;40m\]\[\033[01;36m\]\[\033[01;34m\]|\[\033[01;31m\]${?}:${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\u\[\033[01;32m\]@\h\[\033[01;36m\]\[\033[01;34m\])\[\033[01;36m\]\[\033[01;34m\]-(\[\033[01;35m\]$(date +%H:%M:%S\.%d)\[\033[01;34m\])\[\033[01;36m\]|\[\033[00m\]\n\[\033[01;40m\]\[\033[01;36m\]\[\033[01;34m\]|\[\033[37m\][\w]\[\033[00m\]\n\[\033[01;36m\]\[\033[01;34m\]|$PS1_lineNumberText\[\033[01;34m\]) \[\033[36m\]>\[\033[00m\] '
	
	
	#export PS1='\[\033[01;40m\]\[\033[01;36m\]\[\033[01;34m\]|\[\033[01;31m\]${?}:${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\u\[\033[01;32m\]@\h\[\033[01;36m\]\[\033[01;34m\])\[\033[01;36m\]\[\033[01;34m\]-'"$prompt_cloudNetName"'(\[\033[01;35m\]$(date +%H:%M:%S\.%d)\[\033[01;34m\])\[\033[01;36m\]|\[\033[00m\]\n\[\033[01;40m\]\[\033[01;36m\]\[\033[01;34m\]|\[\033[37m\][\w]\[\033[00m\]\n\[\033[01;36m\]\[\033[01;34m\]|$PS1_lineNumberText\[\033[01;34m\]) \[\033[36m\]'""'>\[\033[00m\] '
	
	
	export PS1='\[\033[01;40m\]\[\033[01;36m\]\[\033[01;34m\]|\[\033[01;31m\]${?}:${debian_chroot:+($debian_chroot)}\[\033[01;33m\]\u\[\033[01;32m\]@\h\[\033[01;36m\]\[\033[01;34m\])\[\033[01;36m\]\[\033[01;34m\]-'"$prompt_cloudNetName"'(\[\033[01;35m\]$(date +%H:%M:%S\.%d)\[\033[01;34m\])\[\033[01;36m\]|\[\033[00m\]\n\[\033[01;40m\]\[\033[01;36m\]\[\033[01;34m\]|\[\033[37m\][\w]\[\033[00m\]\n\[\033[01;36m\]\[\033[01;34m\]|$([[ "$PS1_lineNumber" == "1" ]] && echo -e -n '"'"'\[\033[01;36m\]'"'"'$PS1_lineNumber || echo -e -n $PS1_lineNumber)\[\033[01;34m\]) \[\033[36m\]'""'>\[\033[00m\] '
}

#https://stackoverflow.com/questions/15432156/display-filename-before-matching-line-grep
_grepFileLine() {
	grep -n "$@" /dev/null
}

_findFunction() {
	#-name '*.sh'
	#-not -path "./_local/*"
	#find ./blockchain -name '*.sh' -type f -size -10000k -exec grep -n "$@" '{}' /dev/null \;
	#find ./generic -name '*.sh' -type f -size -10000k -exec grep -n "$@" '{}' /dev/null \;
	#find ./instrumentation -name '*.sh' -type f -size -10000k -exec grep -n "$@" '{}' /dev/null \;
	#find ./labels -name '*.sh' -type f -size -10000k -exec grep -n "$@" '{}' /dev/null \;
	#find ./os -name '*.sh' -type f -size -10000k -exec grep -n "$@" '{}' /dev/null \;
	#find ./shortcuts -name '*.sh' -type f -size -10000k -exec grep -n "$@" '{}' /dev/null \;
	#find . -name '*.sh' -type f -size -10000k -exec grep -n "$@" '{}' /dev/null \;
	
	find . -not -path "./_local/*" -name '*.sh' -type f -size -3000k -exec grep -n "$@" '{}' /dev/null \;
}



_octave_terse() {
	if [[ "$1" != "" ]]
	then
		_safeEcho_newline "$@" | octave --quiet --silent --no-window-system --no-gui 2>/dev/null | _octave_filter-messages
		return
	fi
	
	octave --quiet --silent --no-window-system --no-gui 2>/dev/null | _octave_filter-messages
	return
}

_octave() {
	if [[ "$1" != "" ]]
	then
		_octave_terse "$@"
		return
	fi
	
	octave --quiet --silent --no-window-system --no-gui "$@"
	return
}

# ATTENTION: EXAMPLE: echo 'solve(x == y * 2, y)' | _octave_pipe
_octave_pipe() {
	_octave_terse "$@"
	#octave --quiet --silent --no-window-system --no-gui "$@" 2>/dev/null | _octave_filter-messages
}

# ATTENTION: EXAMPLE: _octave_script 'octave_script.m'
# echo 'solve(x == y * 2, y)' > octave_script.m
_octave_script() {
	local currentFile="$1"
	shift
	
	cat "$currentFile" | _octave_terse "$@"
	
	#octave --quiet --silent --no-window-system --no-gui "$@" 2>/dev/null | _octave_filter-messages
}











_octave_filter-messages() {
	grep -v 'Symbolic pkg .*1: Python communication link active, SymPy v' | grep -v '_____' | grep -v '^$' | sed 's/^ans = //' | sed 's/^(sym) //'
	#cat
}






# solve '( y  == x * 2, x)'

_octave_solve() {
	_safeEcho_newline solve"$@" | _octave_pipe
}
_octave_nsolve() {
	_safeEcho_newline nsolve"$@" | _octave_pipe
}

if type -p octave > /dev/null 2>&1
then
	_solve() {
		_octave_solve "$@"
	}
	solve() {
		_octave_solve "$@"
	}
	nsolve() {
		_octave_nsolve "$@"
	}

	_clc() {
		_octave "$@"
	}
	clc() {
		_octave "$@"
	}
	c() {
		_octave "$@"
	}
fi






_test_devgnuoctave() {
	_wantGetDep octave
	_wantGetDep octave-cli
	
	
	_wantGetDep octave-config
	_wantGetDep mkoctfile
	
	_wantGetDep 'x86_64-linux-gnu/liboctave.so'
	_wantGetDep 'x86_64-linux-gnu/liboctinterp.so'
	
	
	_wantGetDep 'x86_64-linux-gnu/octave/site/oct/x86_64-pc-linux-gnu/libsbml5/OutputSBML.mex'
	_wantGetDep 'x86_64-linux-gnu/octave/site/oct/x86_64-pc-linux-gnu/libsbml5/TranslateSBML.mex'
	
	_wantGetDep 'x86_64-linux-gnu/qt5/plugins/cantor/backends/cantor_octavebackend.so'
	
	
	#if ! _wantGetDep dh_octave_check
	#then
		#! _typeShare 'dh-octave/install-pkg.m' && _wantGetDep dh-octave/install-pkg.m
	#fi
	
	
	
	_tryExec '_test_devgnuoctave-debian-x64'
	
	
	
	return 0
}


# ATTENTION: WARNING: Only tested with Debian Stable. May require rewrite to accommodate other distro (ie. Gentoo).
_test_devgnuoctave_wantGetDep-octavePackage-debian-x64() {
	# If not Debian, then simply accept these pacakges may not be available.
	[[ -e /etc/issue ]] && ! cat /etc/issue | grep 'Debian' > /dev/null 2>&1 && return 0
	
	# If not x64, then simply accept these pacakges may not be available.
	local hostArch
	hostArch=$(uname -m)
	if [[ "$hostArch" != "x86_64" ]]
	then
		return 0
	fi
	
	! _typeShare_dir_wildcard 'octave/packages/'"$1" && ! _typeShare_dir_wildcard 'octave/packages/'octave-"$1" && _wantGetDep octave-"$1"
	#_wantGetDep octave-"$1"
	
	return 0
}

_test_devgnuoctave-debian-x64() {
	# If not Debian, then simply accept these pacakges may not be available.
	[[ -e /etc/issue ]] && ! cat /etc/issue | grep 'Debian' > /dev/null 2>&1 && return 0
	
	
	# If not x64, then simply accept these pacakges may not be available.
	local hostArch
	hostArch=$(uname -m)
	if [[ "$hostArch" != "x86_64" ]]
	then
		return 0
	fi
	
	
	
	
	if ! _typeShare_dir_wildcard 'octave/packages/arduino' && ! _typeShare 'doc-base/octave-arduino-manual' && ! _typeShare 'info/arduino.info.gz' && ! _typeShare 'doc/octave-arduino/arduino.pdf.gz'
	then
		_wantGetDep octave-arduino
	fi
	
	
	_wantGetDep /usr/share/octave/site/m/bart/bart.m
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 bim
	
	_wantGetDep x86_64-linux-gnu/octave/site/oct/x86_64-pc-linux-gnu/biosig/mexSLOAD.mex
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 bsltl
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 cgi
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 control
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 data-smoothing
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 dataframe
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 dicom
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 divand
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 doctest
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 econometrics
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 financial
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 fits
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 fpl
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 fuzzy-logic-toolkit
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 ga-
	
	_wantGetDep x86_64-linux-gnu/octave/site/oct/x86_64-pc-linux-gnu/gdf/gdf_reader.mex
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 general
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 geometry
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 gsl
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 image
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 image-acquisition
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 instrument-control
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 interval
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 io-
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 level-set
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 linear-algebra
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 lssa
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 ltfat
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 mapping
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 miscellaneous
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 missing-functions
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 mpi-
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 msh-
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 mvn-
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 nan-
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 ncarray
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 netcdf
	
	_wantGetDep x86_64-linux-gnu/octave/site/oct/x86_64-pc-linux-gnu/nlopt/nlopt_optimize.oct
	! _typeShare 'octave/site/m/nlopt/nlopt_optimize.m' && _wantGetDep octave-nlopt
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 nurbs
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 netcdf
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 octclip
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 octproj
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 openems
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 optics
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 optim
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 optiminterp
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 parallel
	
	_wantGetDep x86_64-linux-gnu/octave/site/oct/x86_64-pc-linux-gnu/pfstools/pfsread.oct
	! _typeShare 'octave/site/m/pfstools/pfs_read_xyz.m' && _wantGetDep octave-pfstools
	
	_wantGetDep x86_64-linux-gnu/octave/site/oct/api-v52/x86_64-pc-linux-gnu/plplot_octave.oct
	! _typeShare 'plplot_octave/mesh.m' && _wantGetDep octave-plplot
	
	_wantGetDep psychtoolbox-3/PsychBasic/PsychPortAudio.mex
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 quaternion
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 queueing
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 secs1d
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 secs2d
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 secs3d
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 signal
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 sockets
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 sparsersb
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 specfun
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 splines
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 statistics
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 stk
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 strings
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 struct
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 symbolic
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 tsa
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 vibes
	
	_wantGetDep x86_64-linux-gnu/octave/site/oct/x86_64-pc-linux-gnu/vlfeat/toolbox/vl_binsearch.mex
	! _typeShare 'octave/site/m/vlfeat/toolbox/misc/vl_binsearch.m' && _wantGetDep octave-vlfeat
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 vrml
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 zenity
	
	_test_devgnuoctave_wantGetDep-octavePackage-debian-x64 zeromq
	
	
	return 0
}





_qalculate_terse() {
	# https://stackoverflow.com/questions/17998978/removing-colors-from-output
	#sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g"
	
	# https://stackoverflow.com/questions/4233159/grep-regex-whitespace-behavior
	#grep -v '^\s*$'
	
	if [[ "$1" != "" ]]
	then
		_safeEcho_newline "$@" | qalc -t | grep -v '^>\ ' | grep -v '^$' | sed 's/^  //' | grep -v '^\s*$' | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g"
		return
	fi
	
	qalc -t "$@" | grep -v '^>\ ' | grep -v '^$' | sed 's/^  //' | grep -v '^\s*$' | sed -r "s/\x1B\[([0-9]{1,3}(;[0-9]{1,2})?)?[mGK]//g"
	return
}

# Interactive.
_qalculate() {
	if [[ "$1" != "" ]]
	then
		_qalculate_terse "$@"
		return
	fi
	
	qalc "$@"
	return
}

# ATTENTION: EXAMPLE: echo 'solve(x == y * 2, y)' | _qalculate_pipe
_qalculate_pipe() {
	_qalculate_terse "$@"
}

# ATTENTION: _qalculate_script 'qalculate_script.m'
# echo 'solve(x == y * 2, y)' > qalculate_script.m
_qalculate_script() {
	local currentFile="$1"
	shift
	
	cat "$currentFile" | _qalculate_pipe "$@"
}










_qalculate_solve() {
	_safeEcho_newline solve"$@" | _qalculate_pipe
}
_qalculate_nsolve() {
	_safeEcho_newline solve"$@" | _qalculate_pipe
}

if type -p qalc > /dev/null 2>&1
then
	_solve() {
		_qalculate_solve "$@"
	}
	solve() {
		_qalculate_solve "$@"
	}
	nsolve() {
		_qalculate_solve "$@"
	}

	_clc() {
		_qalculate "$@"
	}
	clc() {
		_qalculate "$@"
	}
	c() {
		_qalculate "$@"
	}
fi




_test_devqalculate() {
	_wantGetDep qalculate-gtk
	_wantGetDep qalculate
	
	_wantGetDep qalc
	
	! _typeShare 'texmf/tex/latex/gnuplot/gnuplot.cfg' && _wantGetDep gnuplot-data
	! _typeShare 'texmf/tex/latex/gnuplot/gnuplot.cfg' && echo 'warn: missing: gnuplot-data'
	
	#_wantGetDep gnuplot-data
	#_wantGetDep gnuplot-x11
	_wantGetDep gnuplot-qt
	
	_wantGetDep gnuplot
	
	! _typeDep qalculate-gtk && echo 'warn: missing: qalculate-gtk'
	
	return 0
}




_set_markup_terminal() {
	
	#&& [[ "$flag__NOT_shell" == "" ]] && [[ "$comment_shell_line" == "" ]]
	if [[ "$current_scriptedIllustrator_markup" == "" ]] && [[ "$current_scriptedIllustrator_markup_markdown" == "" ]] && [[ "$workaround_noInterpret_begin" == "" ]] && [[ "$workaround_noInterpret_end" == "" ]] && [[ "$workaround_comment_shell_line" == "" ]]
	then
		
		export flag__NOT_shell='scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
		export comment_shell_line='#'
		
		
		_e() {
			export currentFunctionName="${FUNCNAME[0]}"
			_e-terminal "$@"
		}
		#export -f _e
		
		_e_() {
			export currentFunctionName="${FUNCNAME[0]}"
			_e_-terminal "$@"
		}
		#export -f _e_
		
		_o() {
			export currentFunctionName="${FUNCNAME[0]}"
			_o-terminal "$@"
		}
		#export -f _o
		
		_o_() {
			export currentFunctionName="${FUNCNAME[0]}"
			_o_-terminal "$@"
		}
		#export -f _o_
		
		_i() {
			export currentFunctionName="${FUNCNAME[0]}"
			_i-terminal "$@"
		}
		#export -f _i
		
		_v() {
			export currentFunctionName="${FUNCNAME[0]}"
			_v-terminal "$@"
		}
		#export -f _v
		
		_t() {
			export currentFunctionName="${FUNCNAME[0]}"
			_t-terminal "$@"
		}
		#export -f _t
		
		_r() {
			export currentFunctionName="${FUNCNAME[0]}"
			_r-terminal "$@"
		}
		#export -f _r
		
		_() {
			export currentFunctionName="${FUNCNAME[0]}"
			_h-terminal "$@"
		}
		_h() {
			export currentFunctionName="${FUNCNAME[0]}"
			_h-terminal "$@"
		}
		#export -f _
		#export -f _h
		
		
		
		_heading1() {
			export currentFunctionName="${FUNCNAME[0]}"
			_heading1-terminal "$@"
		}
		#export -f _heading1
		_heading2() {
			export currentFunctionName="${FUNCNAME[0]}"
			_heading2-terminal "$@"
		}
		#export -f _heading2
		_heading3() {
			export currentFunctionName="${FUNCNAME[0]}"
			_heading3-terminal "$@"
		}
		#export -f _heading3
		_heading4() {
			export currentFunctionName="${FUNCNAME[0]}"
			_heading4-terminal "$@"
		}
		#export -f _heading4
		_heading5() {
			export currentFunctionName="${FUNCNAME[0]}"
			_heading5-terminal "$@"
		}
		#export -f _heading5
		_heading6() {
			export currentFunctionName="${FUNCNAME[0]}"
			_heading6-terminal "$@"
		}
		#export -f _heading6
		
		_page() {
			export currentFunctionName="${FUNCNAME[0]}"
			_page-terminal "$@"
		}
		#export -f _page
		
		_paragraph_begin() {
			export currentFunctionName="${FUNCNAME[0]}"
			_paragraph_begin-terminal "$@"
		}
		#export -f _paragraph_begin
		_paragraph_end() {
			export currentFunctionName="${FUNCNAME[0]}"
			_paragraph_end-terminal "$@"
		}
		#export -f _paragraph_end
		
		
		_picture() {
			export currentFunctionName="${FUNCNAME[0]}"
			_picture-terminal "$@"
		}
		#export -f _picture
		_image() {
			export currentFunctionName="${FUNCNAME[0]}"
			_image-terminal "$@"
		}
		#export -f _image
		
		
		_cells_begin() {
			export currentFunctionName="${FUNCNAME[0]}"
			_cells_begin-terminal "$@"
		}
		#export -f _cells_begin
		_cells_end() {
			export currentFunctionName="${FUNCNAME[0]}"
			_cells_end-terminal "$@"
		}
		#export -f _cells_end
		_cells_row_begin() {
			export currentFunctionName="${FUNCNAME[0]}"
			_cells_row_begin-terminal "$@"
		}
		#export -f _cells_row_begin
		_cells_row_end() {
			export currentFunctionName="${FUNCNAME[0]}"
			_cells_row_end-terminal "$@"
		}
		#export -f _cells_row_end
		_cells_speck_begin() {
			export currentFunctionName="${FUNCNAME[0]}"
			_cells_speck_begin-terminal "$@"
		}
		#export -f _cells_speck_begin
		_cells_speck_end() {
			export currentFunctionName="${FUNCNAME[0]}"
			_cells_speck_end-terminal "$@"
		}
		#export -f _cells_speck_end
		
		
		
		
		_markup_asciidoc_disable_begin() {
			export currentFunctionName="${FUNCNAME[0]}"
			_markup_asciidoc_disable_begin-terminal "$@"
		}
		#export -f _markup_asciidoc_disable_begin
		
		_markup_asciidoc_disable_end() {
			export currentFunctionName="${FUNCNAME[0]}"
			_markup_asciidoc_disable_end-terminal "$@"
		}
		#export -f _markup_asciidoc_disable_end
		
		
		
		
		
		
		
		
		
		
		export markup_terminal_cmd_begin='\033[0;37;100m'
		export markup_terminal_cmd_end='\033[0m'
		#export markup_terminal_cmd_end=' \E[0m'
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		
		# Echo command with commented (shell prepending '#' ) output.
		_e-terminal() {
			#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			#_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			#echo -e -n "$markup_terminal_cmd_begin"
			
			_messagePlain_probe_quoteAddSingle "$@" | cat | _markup_terminal_cmd
			"$@" | _shellCommentLines | cat
			
			#echo -e -n "$markup_terminal_cmd_end"
			#echo "$interpret__terminal_NOT_shell__end"
		}
		
		_e_-terminal() {
			#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			#_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			#echo -e -n "$markup_terminal_cmd_begin"
			
			local current_miniSessionID=$(_uid 8)
			
			_messagePlain_probe_quoteAddSingle "$@" | cat
			
			eval "$@" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
			cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _shellCommentLines | cat | _markup_terminal_cmd
			rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
			
			#echo -e -n "$markup_terminal_cmd_end"
			#echo "$interpret__terminal_NOT_shell__end"
		}
		
		# Output only. Useful for '_messagePlain_probe_var', _messagePlain_request' and similar.
		_o-terminal() {
			#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			#_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			#echo -e -n "$markup_terminal_cmd_begin"
			#echo -e -n ' \033[0;37;100m '
			
			local current_miniSessionID=$(_uid 8)
			
			#_messagePlain_probe_quoteAddSingle "$@" | cat
			
			
			# | _shellCommentLines
			
			"$@" | _workaround_preformattedCharacters-terminal | cat | _markup_terminal_cmd
			
			#echo -e -n ' \033[0m '
			#echo -e -n "$markup_terminal_cmd_end"
			#echo "$interpret__terminal_NOT_shell__end"
		}
		
		# Output only. Useful for '_messagePlain_probe_var', _messagePlain_request' and similar.
		_o_-terminal() {
			#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			#_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			#echo -e -n "$markup_terminal_cmd_begin"
			
			local current_miniSessionID=$(_uid 8)
			
			#_messagePlain_probe_quoteAddSingle "$@" | cat
			
			
			# | _shellCommentLines
			
			eval "$@" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
			cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _workaround_preformattedCharacters-terminal | cat | _markup_terminal_cmd
			rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
			
			#echo -e -n "$markup_terminal_cmd_end"
			#echo "$interpret__terminal_NOT_shell__end"
		}
		
		# Internal. Use for variables, equation solving, etc.
		_i-terminal() {
			#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			#_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			##echo "$markup_terminal_cmd_begin"
			
			#_messagePlain_probe_quoteAddSingle "$@" | cat
			
			eval "$@" > /dev/null 2>&1
			
			##echo "$markup_terminal_cmd_begin"
			#echo "$interpret__terminal_NOT_shell__end"
		}
		
		# Useful to read out a variable (ie. set from 'COLLECT') as preformatted text.
		# Variable. Roughly equivalent to '_messagePlain_probe_var' , however, without any declaration of the variable name .
		# https://stackoverflow.com/questions/11386586/how-to-show-div-tag-literally-in-code-pre-tag
		# 	'You can't (in modern HTML) write markup and have it be interpreted as text.'
		_v-terminal() {
			#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			#_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			#echo "$markup_terminal_pre_begin"
			
			local current_miniSessionID=$(_uid 8)
			
			#_messagePlain_probe_quoteAddSingle "$@" | cat
			
			eval echo -e \$"$1" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
			cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _fold-terminal | cat
			rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
			
			#echo "$markup_terminal_pre_end"
			#echo "$interpret__terminal_NOT_shell__end"
		}
		
		
		
		
		
		# Show preformatted text.
		_t-terminal() {
			# No parameters (no input) is meaningless and nothing can be done with that.
			[[ "$1" == "" ]] && return 0
			
			#_t-terminal #_safeEcho_newline _t "'"
			#_t-terminal _safeEcho _t "'"
			#echo -n "$flag__NOT_shell $comment_terminal_end""$markup_terminal_pre_begin"
			
			
			local currentLine
			local currentLine_previous
			local currentIteration
			currentIteration=0
			while read -r currentLine && [[ "$currentIteration" -lt 2 ]]
			do
				if [[ "$currentIteration" == 1 ]] && _safeEcho_newline "$currentLine" | _filter__scriptedIllustrator_markup > /dev/null 2>&1 && [[ "$currentLine_previous" != "" ]] && [[ "$currentLine" != "" ]]
				then
					_safeEcho_newline
					true
				fi
				
				currentLine_previous="$currentLine"
				let currentIteration=currentIteration+1
			done <<<$(_safeEcho "$@")
			[[ "$currentIteration" == 1 ]] && [[ "$currentLine_previous" != "" ]] && _safeEcho_newline
			
			#sed 's/^mediawiki_noLineBreak --><pre.*>//'
			_safeEcho "$@" | sed 's/^mediawiki_noLineBreak --><nowiki>//' | sed 's/^mediawiki_noLineBreak --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">//' | _filter__scriptedIllustrator_markup | _fold-terminal | _workaround_preformattedCharacters-terminal
			
			#echo "$markup_terminal_pre_end""$comment_terminal_begin $flag__NOT_shell"
			#_t-terminal _safeEcho_newline "'"
		}
		
		
		# Raw. Experimental. No production use.
		_r-terminal() {
			# No parameters (no input) is meaningless and nothing can be done with that.
			[[ "$1" == "" ]] && return 0
			
			#_r-terminal #_safeEcho_newline _r "'"
			_safeEcho _r "'"
			#echo -n "$flag__NOT_shell $comment_terminal_end"
			
			
			local currentLine
			local currentLine_previous
			local currentIteration
			currentIteration=0
			while read -r currentLine && [[ "$currentIteration" -lt 2 ]]
			do
				if [[ "$currentIteration" == 1 ]] && _safeEcho_newline "$currentLine" | _filter__scriptedIllustrator_markup > /dev/null 2>&1 && [[ "$currentLine_previous" != "" ]]
				then
					_safeEcho_newline
				fi
				
				currentLine_previous="$currentLine"
				let currentIteration=currentIteration+1
			done <<<$(_safeEcho "$@")
			[[ "$currentIteration" == 1 ]] && _safeEcho_newline
			
			_safeEcho "$@" | sed 's/^mediawiki_noLineBreak -->//' | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-terminal
			
			
			#echo "$comment_terminal_begin $flag__NOT_shell"
			_safeEcho_newline "'"
		}
		
		# Hidden. Use for comments and (shell code only) spacing.
		_h-terminal() {
			true
			#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			#_safeEcho_newline
		}
		
		
		
		
		
		
		
		_heading1-terminal() {
			#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			
			_safeEcho_newline '_ '"$@"' _' | cat
			
			#echo "$interpret__terminal_NOT_shell__end"
		}
		_heading2-terminal() {
			#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			
			_safeEcho_newline '__ '"$@"' __' | cat
			
			#echo "$interpret__terminal_NOT_shell__end"
		}
		_heading3-terminal() {
			#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			
			_safeEcho_newline '___ '"$@"' ___' | cat
			
			#echo "$interpret__terminal_NOT_shell__end"
		}
		_heading4-terminal() {
			#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			
			_safeEcho_newline '____ '"$@"' ____' | cat
			
			#echo "$interpret__terminal_NOT_shell__end"
		}
		_heading5-terminal() {
			#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			
			_safeEcho_newline '_____ '"$@"' _____' | cat
			
			#echo "$interpret__terminal_NOT_shell__end"
		}
		_heading6-terminal() {
			#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			
			_safeEcho_newline '______ '"$@"' ______' | cat
			
			#echo "$interpret__terminal_NOT_shell__end"
		}
		
		# Page break.
		#title page (experiment)
		#<div style="page-break-before: always;"> </div>
		#<p>
		#text page (experiment)
		#</p>
		_page-terminal() {
			_safeEcho_newline
			_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			#_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			
			_safeEcho_newline 'PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak -H-H-H-H- PageBreak' | cat
			
			_safeEcho_newline
			
			#_safeEcho_newline '<p style="page-break-after: always;">&nbsp;</p>' | cat
			#_safeEcho_newline '<p style="page-break-before: always;">&nbsp;</p>' | cat
			
			#_safeEcho_newline '<p style="page-break-after: always;">&nbsp;</p><p style="page-break-before: always;">&nbsp;</p>' | cat
			
			#_safeEcho_newline '<div style="page-break-after: always;"> </div>' | cat
			#_safeEcho_newline '<div></div>' | cat
			
			#echo "$interpret__terminal_NOT_shell__end"
		}
		
		_paragraph_begin-terminal() {
			#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			#_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			
			_safeEcho_newline '' | cat
			#_safeEcho_newline '<p style="margin: 0;padding: 0; border-width: 0px;">' | cat
			
			#echo "$interpret__terminal_NOT_shell__end"
		}
		_paragraph_end-terminal() {
			#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			#_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			
			_safeEcho_newline '' | cat
			
			#echo "$interpret__terminal_NOT_shell__end"
		}
		
		_picture-terminal() {
			local currentWidth
			currentWidth=""
			[[ "$2" != "" ]] && currentWidth="$2"
			
			local currentWidthParameter
			currentWidthParameter=""
			[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
			
			_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			
			#./
			#https://www.hostpapa.com/knowledgebase/align-float-images-website/
			#_safeEcho_newline '<img '"$currentWidthParameter"'src="'"$1"'" style="float: right;margin: 0 0 0 15px;border: 5px solid transparent;">' | cat
			
			#echo "$interpret__terminal_NOT_shell__end"
		}
		_image-terminal() {
			local currentWidth
			currentWidth="96%"
			[[ "$2" != "" ]] && currentWidth="$2"
			
			local currentWidthParameter
			currentWidthParameter=""
			[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
			
			_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			
			#./
			#_safeEcho_newline '<img '"$currentWidthParameter"'src="'"$1"'" style="margin: 0 0 0 15px;border: 5px solid transparent;">' | cat
			
			#echo "$interpret__terminal_NOT_shell__end"
		}
		
		
		
		_cells_begin-terminal() {
			local currentWidth
			currentWidth="0%"
			[[ "$1" != "" ]] && currentWidth="$1"
			
			local currentWidthParameter
			currentWidthParameter=""
			[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
			
			_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			
			#_safeEcho_newline '<table '"$currentWidthParameter"'style="empty-cells: show; border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">' | cat
			
			#echo "$interpret__terminal_NOT_shell__end"
		}
		_cells_end-terminal() {
			_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			
			#_safeEcho_newline '</table>' | cat
			
			#echo "$interpret__terminal_NOT_shell__end"
		}
		_cells_row_begin-terminal() {
			_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			
			#_safeEcho_newline '<tr>' | cat
			
			#echo "$interpret__terminal_NOT_shell__end"
		}
		_cells_row_end-terminal() {
			_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			
			#_safeEcho_newline '</tr>' | cat
			
			#echo "$interpret__terminal_NOT_shell__end"
		}
		_cells_speck_begin-terminal() {
			local currentWidth
			currentWidth="0%"
			[[ "$1" != "" ]] && currentWidth="$1"
			
			local currentWidthParameter
			currentWidthParameter=""
			[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
			
			
			local currentColspan
			currentColspan="1"
			[[ "$2" != "" ]] && currentColspan="$2"
			
			local currentColspanParameter
			currentColspanParameter=""
			[[ "$currentColspan" != "" ]] && currentColspanParameter='colspan="'"$currentColspan"'" '
			
			
			_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			
			#_safeEcho_newline '<td '"$currentWidthParameter"''"$currentColspanParameter"'style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">' | cat
			
			#echo "$interpret__terminal_NOT_shell__end"
		}
		_cells_speck_end-terminal() {
			_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
			_safeEcho_newline
			
			
			#echo "$interpret__terminal_NOT_shell__begin"
			
			#_safeEcho_newline '</td>' | cat
			
			#echo "$interpret__terminal_NOT_shell__end"
		}
		
		
		
		_markup_asciidoc_disable_begin-terminal() {
			true
		}
		_markup_asciidoc_disable_end-terminal() {
			true
		}
		
		
		
		
		_fold-terminal() {
			#if [[ "$markup_terminal_fold" != "" ]]
			#then
				#fold -w "$markup_terminal_fold" -s
				#return
			#fi
			cat
		}
		
		
		
		_workaround_preformattedCharacters-terminal() {
			#sed 's/\&#35;/#/g'
			#sed 's/\&#35;/#/g' | sed "s/\\\x27/\&#39;/g" | sed "s/\\\047/\&#39;/g" | sed "s/%27/\&#39;/g" | sed "s/\&#39;/\&#39;/g"
			
			#sed "s/\\\x27/\&#39;/g" | sed "s/\\\047/\&#39;/g" | sed "s/%27/\&#39;/g" | sed "s/\&#39;/\&#39;/g"
			#sed "s/\\\x3c/\&lt;;/g" | sed "s/\\\060/\&lt;;/g" | sed "s/%3c/\&lt;;/g" | sed "s/\&lt;;/\&lt;;/g"
			
			#sed 's/\&#35;/#/g' | sed "s/\\\x27/\&#39;/g" | sed "s/\\\047/\&#39;/g" | sed "s/%27/\&#39;/g" | sed "s/\&#39;/\&#39;/g" | sed "s/\\\x3c/\&lt;;/g" | sed "s/\\\060/\&lt;;/g" | sed "s/%3c/\&lt;;/g" | sed "s/\&lt;;/\&lt;;/g"
			
			cat
			
			
			#| sed "s/\&#92;/\\\/"
		}
		
		
		_markup_terminal_cmd() {
			local currentString
			
			while read -r currentString
			do
				[ "$currentString" ] && printf '%b' "$markup_terminal_cmd_begin""$currentString""$markup_terminal_cmd_end"
				echo
			done
		}
	fi
	
	if [[ "$current_scriptedIllustrator_markup" == "" ]] && [[ "$current_scriptedIllustrator_markup_markdown" == "" ]] && [[ "$workaround_noInterpret_begin" == "" ]] && [[ "$workaround_noInterpret_end" == "" ]] && [[ "$workaround_comment_shell_line" == "" ]]
	then
		_shellCommentLines() {
			local currentString
			
			while read -r currentString
			do
				[ "$currentString" ] && printf '%b' "$comment_shell_line $currentString"
				echo
			done
			
			#echo -n "$comment_shell_line"' '
			##LANG=C IFS=
			#while LANG=C IFS= read -r -d '' -n 1 currentString
			#do
				#[ "$currentString" ] && printf '%b' "$currentString"
				#[[ "$currentString" == $'\n' ]] && echo -n "$comment_shell_line"' '
			#done
		}
		
		# WARNING: Affects accurate prevention of '_r' and '_t' inaccurately accumulating or removing newlines.
		_filter__scriptedIllustrator_markup() {
			# Inherently add newline if not already present.
			grep -v "$flag__NOT_shell"
			
			# Add newline if already present.
			#grep -v $(_uid) | grep -v "$flag__NOT_shell"
			
			# Do not add newline if not already present.
			#sed 's/^.*'"$flag__NOT_shell"'.*$//g'
		}
	fi
	
}
_set_markup_terminal


_set_markup_terminal_exportFunctions() {
	_set_markup_terminal "$@"
	
	#export current_scriptedIllustrator_markup='terminal'
	export current_scriptedIllustrator_markup=''
	
	export -f _e
	
	export -f _e_
	
	export -f _o
	
	export -f _o_
	
	export -f _i
	
	export -f _v
	
	export -f _t
	
	export -f _r
	
	export -f _
	export -f _h
	
	
	
	export -f _heading1
	export -f _heading2
	export -f _heading3
	export -f _heading4
	export -f _heading5
	export -f _heading6
	
	export -f _page
	
	export -f _paragraph_begin
	export -f _paragraph_end
	
	
	export -f _picture
	export -f _image
	
	
	export -f _cells_begin
	export -f _cells_end
	export -f _cells_row_begin
	export -f _cells_row_end
	export -f _cells_speck_begin
	export -f _cells_speck_end
	
	export -f _markup_asciidoc_disable_begin
	export -f _markup_asciidoc_disable_end
}

_declareFunctions_markup_terminal() {
	declare -f _set_markup_terminal
	declare -f _set_markup_terminal_exportFunctions
	
	
	# WARNING: Most functions would be declared twice, substantially increasing 'current_internal_CompressedFunctions_bytes' .
	return 0
	
	declare -f _e
	declare -f _e-terminal
	
	declare -f _e_
	declare -f _e_-terminal
	
	declare -f _o
	declare -f _o-terminal
	
	declare -f _o_
	declare -f _o_-terminal
	
	declare -f _i
	declare -f _i-terminal
	
	declare -f _v
	declare -f _v-terminal
	
	declare -f _t
	declare -f _t-terminal
	
	declare -f _r
	declare -f _r-terminal
	
	declare -f _
	declare -f _h
	declare -f _h-terminal
	
	
	
	
	
	
	declare -f _heading1
	declare -f _heading1-terminal
	declare -f _heading2
	declare -f _heading2-terminal
	declare -f _heading3
	declare -f _heading3-terminal
	declare -f _heading4
	declare -f _heading4-terminal
	declare -f _heading5
	declare -f _heading5-terminal
	declare -f _heading6
	declare -f _heading6-terminal
	
	declare -f _page
	declare -f _page-terminal
	
	declare -f _paragraph_begin
	declare -f _paragraph_begin-terminal
	declare -f _paragraph_end
	declare -f _paragraph_end-terminal
	
	declare -f _picture
	declare -f _picture-terminal
	declare -f _image
	declare -f _image-terminal
	
	declare -f _cells_begin
	declare -f _cells_begin-terminal
	declare -f _cells_end
	declare -f _cells_end-terminal
	declare -f _cells_row_begin
	declare -f _cells_row_begin-terminal
	declare -f _cells_row_end
	declare -f _cells_row_end-terminal
	declare -f _cells_speck_begin
	declare -f _cells_speck_begin-terminal
	declare -f _cells_speck_end
	declare -f _cells_speck_end-terminal
	
	
	declare -f _markup_asciidoc_disable_begin
	declare -f _markup_asciidoc_disable_begin-terminal
	declare -f _markup_asciidoc_disable_end
	declare -f _markup_asciidoc_disable_end-terminal
	
	
	declare -f _fold-terminal
	
	
	declare -f _workaround_preformattedCharacters-terminal
}


#Simulated client/server discussion testing.

_log_query() {
	[[ "$1" == "" ]] && return 1
	
	tee "$1"
	
	return 0
}

_report_query_stdout() {
	[[ "$1" == "" ]] && return 1
	
	_messagePlain_probe 'stdout: strings'
	strings "$1"
	
	_messagePlain_probe 'stdout: hex'
	xxd -p "$1" | tr -d '\n'
	echo
	
	return 0
}

# ATTENTION: Overload with "core.sh" or similar.
_prepare_query_prog() {
	true
}

_prepare_query() {
	export ub_queryclientdir="$queryTmp"/client
	export qc="$ub_queryclientdir"
	
	export ub_queryclient="$ub_queryclientdir"/script
	export qce="$ub_queryclient"
	
	export ub_queryserverdir="$queryTmp"/server
	export qs="$ub_queryserverdir"
	
	export ub_queryserver="$ub_queryserverdir"/script
	export qse="$ub_queryserver"
	
	mkdir -p "$ub_queryclientdir"
	mkdir -p "$ub_queryserverdir"
	
	! [[ -e "$ub_queryclient" ]] && cp "$scriptAbsoluteLocation" "$ub_queryclient"
	! [[ -e "$ub_queryserver" ]] && cp "$scriptAbsoluteLocation" "$ub_queryserver"
	
	_prepare_query_prog "$@"
}

_queryServer_sequence() {
	_start
	
	local currentExitStatus
	
	export queryType="server"
	"$ub_queryserver" "$@"
	currentExitStatus="$?"
	
	env > env_$(_uid)
	
	_stop "$currentExitStatus"
}
_queryServer() {
	"$scriptAbsoluteLocation" _queryServer_sequence "$@"
}
_qs() {
	_queryServer "$@"
}

_queryClient_sequence() {
	_start
	
	local currentExitStatus
	
	export queryType="client"
	"$ub_queryclient" "$@"
	currentExitStatus="$?"
	
	env > env_$(_uid)
	
	_stop "$currentExitStatus"
}
_queryClient() {
	"$scriptAbsoluteLocation" _queryClient_sequence "$@"
}
_qc() {
	_queryClient "$@"
}

_query_diag() {
	echo test | _query "$@"
	local currentExitStatus="$?"
	
	_messagePlain_nominal 'diag: tx.log'
	_report_query_stdout "$queryTmp"/tx.log
	
	_messagePlain_nominal 'diag: xc.log'
	_report_query_stdout "$queryTmp"/xc.log
	
	_messagePlain_nominal 'diag: rx.log'
	_report_query_stdout "$queryTmp"/rx.log
	
	return "$currentExitStatus"
}

# ATTENTION: Overload with "core.sh" or similar.
_query() {
	_prepare_query
	
	( cd "$qc" ; _queryClient _bin cat | _log_query "$queryTmp"/tx.log | ( cd "$qs" ; _queryServer _bin cat | _log_query "$queryTmp"/xc.log | ( cd "$qc" ; _queryClient _bin cat | _log_query "$queryTmp"/rx.log ; return "${PIPESTATUS[0]}" )))
}


# ATTENTION: Override with 'ops.sh' , 'core.sh' , or similar.
_setupUbiquitous_accessories_here-gnuoctave() {
	cat << CZXWXcRMTo8EmM8i4d

%# https://stackoverflow.com/questions/8260619/how-can-i-suppress-the-output-of-a-command-in-octave
%# oldpager = PAGER('/dev/null');
%# oldpso = page_screen_output(1);
%# oldpoi = page_output_immediately(1);


format long g;


deci = 10^-1;
centi = 10^-2;
milli = 10^-3;
micro = 10^-6;
nano =-10^-9;
pico = 10^-12;
femto = 10^-15;
atto = 10^-18;

kilo = 10^3;
mega = kilo * 10^3;
giga = mega * 10^3;
tera = giga * 10^3;


bit = 1;
byte = bit * 8;
Byte = bit * 8;

kilobit = kilo * bit;
megabit = mega * bit;
gigabit = giga * bit;
terabit = tera * bit;

kb = kilobit;
Kb = kilobit;
Mb = megabit;
Gb = gigabit;
Tb = terabit;

kiloByte = kilobit * Byte;
megaByte = megabit * Byte;
gigaByte = gigabit * Byte;
teraByte = terabit * Byte;

kilobyte = kilobit * Byte;
megabyte = megabit * Byte;
gigabyte = gigabit * Byte;
terabyte = terabit * Byte;

kB = kiloByte;
KB = kiloByte;
MB = megaByte;
GB = gigaByte;
TB = teraByte;


kibi = 1024;
mebi = kibi * 1024;
gibi = mebi * 1024;
tebi = gibi * 1024;

kibibit = kibi * bit;
mebibit = mebi * bit;
gibibit = gibi * bit;
tebibit = tebi * bit;

Kib = kibibit;
Mib = mebibit;
Gib = gibibit;
Tib = tebibit;

kibiByte = kibi * Byte;
mebiByte = mebi * Byte;
gibiByte = gibi * Byte;
tebiByte = tebi * Byte;

kibibyte = kibi * Byte;
mebibyte = mebi * Byte;
gibibyte = gibi * Byte;
tebibyte = tebi * Byte;

KiB = kibiByte;
MiB = mebiByte;
GiB = gibiByte;
TiB = tebiByte;



meter = 1;

kilometer = kilo * meter;
megameter = mega * meter;
Megameter = megameter;

decimeter = deci * meter;
centimeter = centi * meter;
millimeter = milli * meter;
micrometer = micro * meter;
nanometer = nano * meter;
picometer = pico * meter;
femtometer = femto * meter;
attometer = atto * meter;



%# 1 * lightsecond ~= 300 * Mega * meter
lightsecond = 299792458 * meter;
lightSecond = lightsecond;

lightyear = lightsecond * 365 * 24 * 3600;
lightYear = lightyear;



hertz = 1;

kilohertz = kilo * hertz;
megahertz = mega * hertz;
gigahertz = giga * hertz;
terahertz = tera * hertz;

kHz = kilohertz;
KHz = kilohertz;
MHz = megahertz;
GHz = gigahertz;
THz = terahertz;



unix("true");
system("true");

cd;

%# Equivalent to Ctrl-L . 
%# https://stackoverflow.com/questions/11269571/how-to-clear-the-command-line-in-octave
clc;


%# PAGER(oldpager);
%# page_screen_output(oldpso);
%# page_output_immediately(oldpoi);

CZXWXcRMTo8EmM8i4d


	! _if_cygwin && cat << CZXWXcRMTo8EmM8i4d

pkg load symbolic;

syms a b c d e f g h i j k l m n o p q r s t u v w x y z;


%# https://octave.sourceforge.io/symbolic/overview.html
nsolve = @vpasolve;

CZXWXcRMTo8EmM8i4d

}


_setupUbiquitous_accessories_here-gnuoctave_hook() {
	cat << CZXWXcRMTo8EmM8i4d

%# oldpager = PAGER('/dev/null');
%# oldpso = page_screen_output(1);
%# oldpoi = page_output_immediately(1);

%# ubcore
run("$ubcore_accessoriesFile_gnuoctave_ubhome");

%# PAGER(oldpager);
%# page_screen_output(oldpso);
%# page_output_immediately(oldpoi);

CZXWXcRMTo8EmM8i4d
}




_setupUbiquitous_accessories_here-cloud_bin() {
	cat << CZXWXcRMTo8EmM8i4d

if [[ "$PATH" != *'.ebcli-virtual-env/executables'* ]] && [[ -e "$HOME"/.ebcli-virtual-env/executables ]]
then
	# WARNING: Must interpret "$HOME" as is at this point and NOT after any "$HOME" override.
	export PATH="$HOME"/.ebcli-virtual-env/executables:"$PATH"
fi


if [[ "$PATH" != *'.gcloud/google-cloud-sdk'* ]] && [[ -e "$HOME"/.gcloud/google-cloud-sdk/completion.bash.inc ]] && [[ -e "$HOME"/.gcloud/google-cloud-sdk/path.bash.inc ]]
then
	. "$HOME"/.gcloud/google-cloud-sdk/completion.bash.inc
	. "$HOME"/.gcloud/google-cloud-sdk/path.bash.inc
fi

CZXWXcRMTo8EmM8i4d
}





_setupUbiquitous_accessories_here-python() {
	
	_generate_lean-lib-python_here "$@"
	
} 

_setupUbiquitous_accessories_here-python_hook() {
	cat << CZXWXcRMTo8EmM8i4d

# ATTENTION: Without either 'exec(exec(open()))' or 'execfile()' , 'from ubcorerc_pythonrc import *' must take effect!
# If 'exec(exec(open()))' is substituted for 'from ubcorerc_pythonrc import *' then copying home directory files independent of '.ubcore' 
import os
if os.path.exists("$ubcore_accessoriesFile_python"):
	import sys
	import os
	# https://stackoverflow.com/questions/2349991/how-to-import-other-python-files
	sys.path.append(os.path.abspath("$ubcoreDir_accessories/python"))
	from ubcorerc_pythonrc import *





import sys
# https://stackoverflow.com/questions/436198/what-is-an-alternative-to-execfile-in-python-3
if sys.hexversion > 0x03000000:
	exec('exec(open( "$ubcore_accessoriesFile_python_ubhome" ).read() )')
else:
	execfile("$ubcore_accessoriesFile_python_ubhome")




CZXWXcRMTo8EmM8i4d
}



_setupUbiquitous_accessories_here-python_bashrc() {
	cat << CZXWXcRMTo8EmM8i4d

# Interactive bash shell will default to calling 'python3' while scripts invoking '#! /usr/bin/env python' or similar may still be given 'python2' equivalent.
alias python=python3

export PYTHONSTARTUP="$HOME"/.pythonrc

CZXWXcRMTo8EmM8i4d
}























_setupUbiquitous_accessories-gnuoctave() {
	_messagePlain_nominal 'init: _setupUbiquitous_accessories-gnuoctave'
	
	mkdir -p "$ubcoreDir_accessories"/gnuoctave
	
	export ubcore_accessoriesFile_gnuoctave="$ubcoreDir_accessories"/gnuoctave/ubcorerc.m
	export ubcore_accessoriesFile_gnuoctave_ubhome="$ubHome"/.ubcorerc-gnuoctave.m
	
	rm -f "$ubcore_accessoriesFile_gnuoctave"
	rm -f "$ubcore_accessoriesFile_gnuoctave_ubhome"
	ln -s "$ubcore_accessoriesFile_gnuoctave_ubhome" "$ubcore_accessoriesFile_gnuoctave"
	
	_setupUbiquitous_accessories_here-gnuoctave > "$ubcore_accessoriesFile_gnuoctave_ubhome"
	
	
	if ! grep ubcore "$ubHome"/.octaverc > /dev/null 2>&1 && _messagePlain_probe 'octaverc'
	then
		# https://www.mathworks.com/matlabcentral/answers/194868-what-about-the-character
		#echo '%# ubcore' >> "$ubHome"/.octaverc
		#_safeEcho_newline run'("'"$ubcore_accessoriesFile_gnuoctave_ubhome"'")' >> "$ubHome"/.octaverc
		_setupUbiquitous_accessories_here-gnuoctave_hook >> "$ubHome"/.octaverc
	fi
	
	return 0
}


_setupUbiquitous_accessories_bashrc-cloud_bin() {
	
	_setupUbiquitous_accessories_here-cloud_bin
	
	echo 'true'
	
	return 0
}



_setupUbiquitous_accessories-python() {
	_messagePlain_nominal 'init: _setupUbiquitous_accessories-python'
	
	mkdir -p "$ubcoreDir_accessories"/python
	
	export ubcore_accessoriesFile_python="$ubcoreDir_accessories"/python/ubcorerc_pythonrc.py
	export ubcore_accessoriesFile_python_ubhome="$ubHome"/.ubcorerc_pythonrc.py
	
	rm -f "$ubcore_accessoriesFile_python"
	rm -f "$ubcore_accessoriesFile_python_ubhome"
	ln -s "$ubcore_accessoriesFile_python_ubhome" "$ubcore_accessoriesFile_python"
	
	_setupUbiquitous_accessories_here-python > "$ubcore_accessoriesFile_python_ubhome"
	
	
	if ! grep ubcore "$ubHome"/.pythonrc > /dev/null 2>&1 && _messagePlain_probe 'pythonrc'
	then
		# https://www.mathworks.com/matlabcentral/answers/194868-what-about-the-character
		#echo '%# ubcore' >> "$ubHome"/.pythonrc
		#_safeEcho_newline run'("'"$ubcore_accessoriesFile_python_ubhome"'")' >> "$ubHome"/.pythonrc
		_setupUbiquitous_accessories_here-python_hook >> "$ubHome"/.pythonrc
	fi
	
	return 0
}



_setupUbiquitous_accessories() {
	
	_setupUbiquitous_accessories-gnuoctave "$@"
	
	_setupUbiquitous_accessories-python "$@"
	
	return 0
}

_setupUbiquitous_accessories_bashrc() {
	#_messagePlain_nominal 'init: _setupUbiquitous_accessories_bashrc'
	
	_setupUbiquitous_accessories_bashrc-cloud_bin "$@"
	
	_setupUbiquitous_accessories_here-python_bashrc "$@"
}


_setupUbiquitous_accessories_requests() {
	
	# EXAMPLE .
	#_messagePlain_request 'request: request'
	
	return 0
}






_setupUbiquitous_here() {
	! uname -a | grep -i cygwin > /dev/null 2>&1 && cat << CZXWXcRMTo8EmM8i4d

if type sudo > /dev/null 2>&1 && groups | grep -E 'wheel|sudo' > /dev/null 2>&1 && ! uname -a | grep -i cygwin > /dev/null 2>&1
then
	# Greater or equal, '_priority_critical_pid_root' .
	sudo -n renice -n -15 -p \$\$ > /dev/null 2>&1
	sudo -n ionice -c 2 -n 2 -p \$\$ > /dev/null 2>&1
fi

# ^
# Ensures admin user shell startup, including Ubiquitous Bash, is relatively quick under heavy system load.
# Near-realtime priority may be acceptable, due to reliability of relevant Ubiquitous Bash functions.
# WARNING: Do NOT prioritize highly enough to interfere with embedded hard realtime processes.

CZXWXcRMTo8EmM8i4d


	# WARNING: What is otherwise considered bad practice may be accepted to reduce substantial MSW/Cygwin inconvenience .
	_if_cygwin && cat << CZXWXcRMTo8EmM8i4d

[[ -e '/cygdrive' ]] && uname -a | grep -i cygwin > /dev/null 2>&1 && echo -n '.'

[[ "\$profileScriptLocation" == "" ]] && export profileScriptLocation_new='true'

CZXWXcRMTo8EmM8i4d


	cat << CZXWXcRMTo8EmM8i4d
PS1_lineNumber=""


# WARNING: Importing complete 'ubiquitous_bash.sh' may cause other scripts to call functions inappropriate for their needs during "_test" and "_setup" .
# This may be acceptable if the user has already run "_setup" from the imported script .
#export profileScriptLocation="$ubcoreUBdir"/ubiquitous_bash.sh
export profileScriptLocation="$ubcoreUBdir"/ubcore.sh
#export profileScriptLocation="$ubcoreUBdir"/lean.sh
export profileScriptFolder="$ubcoreUBdir"
[[ "\$scriptAbsoluteLocation" != "" ]] && . "\$scriptAbsoluteLocation" --parent _importShortcuts
[[ "\$scriptAbsoluteLocation" == "" ]] && . "\$profileScriptLocation" --profile _importShortcuts
[[ "\$ub_setScriptChecksum_disable" == 'true' ]] && export ub_setScriptChecksum_disable="" && unset ub_setScriptChecksum_disable


# Returns priority to normal.
# Greater or equal, '_priority_app_pid_root' .
#ionice -c 2 -n 3 -p \$\$
#renice -n -5 -p \$\$ > /dev/null 2>&1

# Returns priority to normal.
# Greater or equal, '_priority_app_pid' .
ionice -c 2 -n 4 -p \$\$
renice -n 0 -p \$\$ > /dev/null 2>&1

[[ -e "$ubcoreDir"/cloudrc ]] && . "$ubcoreDir"/cloudrc

true

CZXWXcRMTo8EmM8i4d


	# WARNING: What is otherwise considered bad practice may be accepted to reduce substantial MSW/Cygwin inconvenience .
	_if_cygwin && cat << CZXWXcRMTo8EmM8i4d

if [[ -e '/cygdrive' ]] && uname -a | grep -i cygwin > /dev/null 2>&1
then
	#echo -n '.'
	#clear
	
	# https://stackoverflow.com/questions/238073/how-to-add-a-progress-bar-to-a-shell-script
	echo -e -n '.\r'
	
	if [[ "\$profileScriptLocation_new" == 'true' ]]
	then
		export profileScriptLocation_new=''
		unset profileScriptLocation_new
		
		sleep 0.1
		echo '.'
		sleep 0.1
		echo '.'
		sleep 0.1
		clear
	fi
fi

true

CZXWXcRMTo8EmM8i4d

}

_configureLocal() {
	_configureFile "$1" "_local"
}

_configureFile() {
	cp "$scriptAbsoluteFolder"/"$1" "$scriptAbsoluteFolder"/"$2"
}

_configureOps() {
	echo "$@" >> "$scriptAbsoluteFolder"/ops
}

_resetOps() {
	rm "$scriptAbsoluteFolder"/ops
}

_importShortcuts() {
	_tryExec "_resetFakeHomeEnv"
	
	if ! [[ "$PATH" == *":""$HOME""/bin"* ]] && ! [[ "$PATH" == "$HOME""/bin"* ]] && [[ -e "$HOME"/bin ]] && [[ -d "$HOME"/bin ]]
	then
		export PATH="$PATH":"$HOME"/bin
	fi
	
	_tryExec "_visualPrompt"
	
	_tryExec "_scopePrompt"
	
	return 0
}

_gitPull_ubiquitous() {
	git pull
}

_gitClone_ubiquitous() {
	git clone --depth 1 git@github.com:mirage335/ubiquitous_bash.git
}

_selfCloneUbiquitous() {
	"$scriptBin"/.ubrgbin.sh _ubrgbin_cpA "$scriptBin" "$ubcoreUBdir"/ > /dev/null 2>&1
	cp -a "$scriptAbsoluteLocation" "$ubcoreUBdir"/lean.sh
	cp -a "$scriptAbsoluteLocation" "$ubcoreUBdir"/ubcore.sh
	cp -a "$scriptAbsoluteFolder"/lean.sh "$ubcoreUBdir"/lean.sh > /dev/null 2>&1
	cp -a "$scriptAbsoluteFolder"/lean.sh "$ubcoreUBdir"/ubcore.sh > /dev/null 2>&1
	cp -a "$scriptAbsoluteFolder"/ubcore.sh "$ubcoreUBdir"/ubcore.sh > /dev/null 2>&1
	cp -a "$scriptAbsoluteLocation" "$ubcoreUBdir"/ubiquitous_bash.sh
	
	cp -a "$scriptAbsoluteFolder"/lean.py "$ubcoreUBdir"/lean.py > /dev/null 2>&1
}

_installUbiquitous() {
	local localFunctionEntryPWD
	localFunctionEntryPWD="$PWD"
	
	cd "$ubcoreDir"
	
	cd "$ubcoreUBdir"
	_messagePlain_nominal 'attempt: git pull'
	if [[ "$nonet" != "true" ]] && type git > /dev/null 2>&1
	then
		
		local ub_gitPullStatus
		git pull
		ub_gitPullStatus="$?"
		[[ "$ub_gitPullStatus" != 0 ]] && git pull && ub_gitPullStatus="$?"
		! cd "$localFunctionEntryPWD" && return 1
		
		[[ "$ub_gitPullStatus" == "0" ]] && _messagePlain_good 'pass: git pull' && cd "$localFunctionEntryPWD" && return 0
	fi
	_messagePlain_warn 'fail: git pull'
	
	cd "$ubcoreDir"
	_messagePlain_nominal 'attempt: git clone'
	[[ "$nonet" != "true" ]] && type git > /dev/null 2>&1 && [[ ! -e ".git" ]] && [[ ! -e "$ubcoreUBdir"/.git ]] && _gitClone_ubiquitous && _messagePlain_good 'pass: git clone' && return 0
	[[ "$nonet" != "true" ]] && type git > /dev/null 2>&1 && [[ ! -e ".git" ]] && [[ ! -e "$ubcoreUBdir"/.git ]] && _gitClone_ubiquitous && _messagePlain_good 'pass: git clone' && return 0
	_messagePlain_warn 'fail: git clone'
	
	cd "$ubcoreUBdir"
	_messagePlain_nominal 'attempt: self git pull'
	# WARNING: Not attempted if 'nonet' has been set 'true', due to possible conflicts with scripts intending only to copy one file (ie. by SSH transfer).
	if [[ "$nonet" != "true" ]] && type git > /dev/null 2>&1 && [[ -e "$scriptAbsoluteFolder"/.git ]] && [[ -e "$scriptAbsoluteFolder"/.git ]]
	then
		
		local ub_gitPullStatus
		#git reset --hard
		[[ -e "$scriptAbsoluteFolder"/lean.sh ]] && rm -f "$ubcoreUBdir"/lean.sh > /dev/null 2>&1
		[[ -e "$scriptAbsoluteFolder"/ubcore.sh ]] && rm -f "$ubcoreUBdir"/ubcore.sh > /dev/null 2>&1
		[[ -e "$scriptAbsoluteFolder"/ubiquitous_bash.sh ]] && rm -f "$ubcoreUBdir"/ubiquitous_bash.sh > /dev/null 2>&1
		[[ -e "$scriptAbsoluteFolder"/lean_compressed.sh ]] && rm -f "$ubcoreUBdir"/lean_compressed.sh > /dev/null 2>&1
		[[ -e "$scriptAbsoluteFolder"/core_compressed.sh ]] && rm -f "$ubcoreUBdir"/core_compressed.sh > /dev/null 2>&1
		[[ -e "$scriptAbsoluteFolder"/ubcore_compressed.sh ]] && rm -f "$ubcoreUBdir"/ubcore_compressed.sh > /dev/null 2>&1
		[[ -e "$scriptAbsoluteFolder"/ubiquitous_bash_compressed.sh ]] && rm -f "$ubcoreUBdir"/ubiquitous_bash_compressed.sh > /dev/null 2>&1
		[[ -e "$scriptAbsoluteFolder"/lean.py ]] && rm -f "$ubcoreUBdir"/lean.py > /dev/null 2>&1
		git reset --hard
		git pull "$scriptAbsoluteFolder"
		ub_gitPullStatus="$?"
		! cd "$localFunctionEntryPWD" && return 1
		
		[[ "$ub_gitPullStatus" == "0" ]] && _messagePlain_good 'pass: self git pull' && cd "$localFunctionEntryPWD" && return 0
	fi
	_messagePlain_warn 'fail: self git pull'
	
	cd "$ubcoreDir"
	_messagePlain_nominal 'attempt: self clone'
	[[ -e ".git" ]] && _messagePlain_bad 'fail: self clone' && return 1
	_selfCloneUbiquitous && return 0
	_messagePlain_bad 'fail: self clone' && return 1
	
	return 0
	
	cd "$localFunctionEntryPWD"
}




_setupUbiquitous() {
	_messageNormal "init: setupUbiquitous"
	
	_if_cygwin && _setup_ubiquitousBash_cygwin_procedure
	
	
	local ubHome
	ubHome="$HOME"
	[[ "$1" != "" ]] && ubHome="$1"
	
	export ubcoreDir="$ubHome"/.ubcore
	export ubcoreFile="$ubcoreDir"/.ubcorerc
	
	export ubcoreDir_accessories="$ubHome"/.ubcore/accessories
	
	
	# WARNING: Despite the name, do NOT point this to 'ubcore.sh' or similar. Full set of functions are expected from this file by some use cases!
	export ubcoreUBdir="$ubcoreDir"/ubiquitous_bash
	export ubcoreUBfile="$ubcoreDir"/ubiquitous_bash/ubiquitous_bash.sh
	
	_messagePlain_probe 'ubHome= '"$ubHome"
	_messagePlain_probe 'ubcoreDir= '"$ubcoreDir"
	_messagePlain_probe 'ubcoreFile= '"$ubcoreFile"
	
	_messagePlain_probe 'ubcoreUBdir= '"$ubcoreUBdir"
	_messagePlain_probe 'ubcoreUBfile= '"$ubcoreUBfile"
	
	mkdir -p "$ubcoreUBdir"
	! [[ -e "$ubcoreUBdir" ]] && _messagePlain_bad 'missing: ubcoreUBdir= '"$ubcoreUBdir" && _messageFAIL && return 1
	
	mkdir -p "$ubcoreDir_accessories"
	! [[ -e "$ubcoreDir_accessories" ]] && _messagePlain_bad 'missing: ubcoreUBdir_accessories= '"$ubcoreDir_accessories" && _messageFAIL && return 1
	
	
	_messageNormal "install: setupUbiquitous"
	! _installUbiquitous && _messageFAIL && return 1
	! [[ -e "$ubcoreUBfile" ]] && _messagePlain_bad 'missing: ubcoreUBfile= '"$ubcoreUBfile" && _messageFAIL && return 1
	
	
	_messageNormal "hook: setupUbiquitous"
	if ! _permissions_ubiquitous_repo "$ubcoreUBdir" && _messagePlain_bad 'permissions: ubcoreUBdir = '"$ubcoreUBdir"
	then
		if ! _if_cygwin
		then
			_messageFAIL
			return 1
		else
			echo 'warn: accepted: cygwin: permissions'
		fi
	fi
	
	mkdir -p "$ubHome"/bin/
	ln -sf "$ubcoreUBfile" "$ubHome"/bin/ubiquitous_bash.sh
	ln -sf "$ubcoreUBfile" "$ubHome"/bin/_winehere
	ln -sf "$ubcoreUBfile" "$ubHome"/bin/_winecfghere
	
	_setupUbiquitous_here > "$ubcoreFile"
	_setupUbiquitous_accessories_bashrc >> "$ubcoreFile"
	! [[ -e "$ubcoreFile" ]] && _messagePlain_bad 'missing: ubcoreFile= '"$ubcoreFile" && _messageFAIL && return 1
	
	
	! grep ubcore "$ubHome"/.bashrc > /dev/null 2>&1 && _messagePlain_probe "$ubcoreFile"' >> '"$ubHome"/.bashrc && echo ". ""$ubcoreFile" >> "$ubHome"/.bashrc
	! grep ubcore "$ubHome"/.bashrc > /dev/null 2>&1 && _messagePlain_bad 'missing: bashrc hook' && _messageFAIL && return 1
	
	
	
	
	_messageNormal "install: setupUbiquitous_accessories"
	
	_setupUbiquitous_accessories "$@"
	
	
	_messageNormal "request: setupUbiquitous_accessories , setupUbiquitous"
	
	_setupUbiquitous_accessories_requests "$@"
	
	if ! _if_cygwin
	then
		# WARNING: End user file association. Do NOT call within scripts.
		# WARNING: Necessarily relies on a 'deprecated' 'field code' with the 'Exec key' of a 'Desktop Entry' file association.
		# https://specifications.freedesktop.org/desktop-entry-spec/desktop-entry-spec-latest.html
		_messagePlain_request 'association: *.bat'
		echo 'konsole --workdir %d -e /bin/bash %f (open in graphical terminal emulator from file manager) (preferred)'
		echo "bash ('Advanced Options -> Run in terminal')"
	fi
	
	_messagePlain_request "Now import new functionality into current shell if not in current shell."
	_messagePlain_request ". "'"'"$scriptAbsoluteLocation"'"' --profile _importShortcuts
	
	sleep 3
	return 0
}

_setupUbiquitous_nonet() {
	local oldNoNet
	oldNoNet="$nonet"
	export nonet="true"
	_setupUbiquitous "$@"
	[[ "$oldNoNet" != "true" ]] && export nonet="$oldNoNet"
}

_upgradeUbiquitous() {
	_setupUbiquitous
}

_resetUbiquitous_sequence() {
	_start scriptLocal_mkdir_disable
	
	[[ ! -e "$HOME"/.bashrc ]] && return 0
	cp "$HOME"/.bashrc "$HOME"/.bashrc.bak
	cp "$HOME"/.bashrc "$safeTmp"/.bashrc
	grep -v 'ubcore' "$safeTmp"/.bashrc > "$safeTmp"/.bashrc.tmp
	mv "$safeTmp"/.bashrc.tmp "$HOME"/.bashrc
	
	[[ ! -e "$HOME"/.ubcore ]] && return 0
	rm "$HOME"/.ubcorerc
	
	_stop
}

_resetUbiquitous() {
	"$scriptAbsoluteLocation" _resetUbiquitous_sequence
}

_refresh_anchors_ubiquitous() {
	#cp -a "$scriptAbsoluteFolder"/_anchor "$scriptAbsoluteFolder"/_ubide
	
	cp -a "$scriptAbsoluteFolder"/_anchor "$scriptAbsoluteFolder"/_ubdb
	
	cp -a "$scriptAbsoluteFolder"/_anchor "$scriptAbsoluteFolder"/_test
	cp -a "$scriptAbsoluteFolder"/_anchor "$scriptAbsoluteFolder"/_true
	cp -a "$scriptAbsoluteFolder"/_anchor "$scriptAbsoluteFolder"/_false
	
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_test.bat
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_true.bat
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_false.bat
	
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_bin.bat
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_bash.bat
	
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_setup_ubcp.bat
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_setup_ubiquitousBash_cygwin.bat
	
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_setupUbiquitous.bat
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_setupUbiquitous_nonet.bat
	
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_demand_broadcastPipe_page.bat
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_terminate_broadcastPipe_page.bat
	
	
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_packetDriveDevice.bat
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_packetDriveDevice_remove.bat
}


_refresh_anchors_cautossh() {
	cp -a "$scriptAbsoluteFolder"/_anchor "$scriptAbsoluteFolder"/_test
	cp -a "$scriptAbsoluteFolder"/_anchor "$scriptAbsoluteFolder"/_setup
	cp -a "$scriptAbsoluteFolder"/_anchor "$scriptAbsoluteFolder"/_bash
	cp -a "$scriptAbsoluteFolder"/_anchor "$scriptAbsoluteFolder"/_bin
	cp -a "$scriptAbsoluteFolder"/_anchor "$scriptAbsoluteFolder"/_grsync
	
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_test.bat
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_setup.bat
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_bash.bat
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_bin.bat
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_grsync.bat
}


# EXAMPLE ONLY.
# _refresh_anchors() {
# 	cp -a "$scriptAbsoluteFolder"/_anchor "$scriptAbsoluteFolder"/_true
# }


# CAUTION: Anchor scripts MUST include code to ignore '--' suffix specific software name convention!
# CAUTION: ONLY intended to be used either with generic software, or anchors following '--' suffix specific software name convention!
# WARNING: DO NOT enable in "core.sh". Intended to be enabled by "_local/ops.sh".
# ATTENTION: Set "$ub_anchor_specificSoftwareName" or similar in "ops.sh".
# ATTENTION: Set ub_anchor_user='true' or similar in "ops.sh".
#export ub_anchor_specificSoftwareName='experimental'
#export ub_anchor_user="true"
_set_refresh_anchors_specific() {
	export ub_anchor_suffix=
	export ub_anchor_suffix
	
	[[ "$ub_anchor_specificSoftwareName" == "" ]] && return 0
	
	export ub_anchor_suffix='--'"$ub_anchor_specificSoftwareName"
	
	return 0
}

_refresh_anchors_specific_single_procedure() {
	[[ "$ub_anchor_specificSoftwareName" == "" ]] && return 1
	
	_set_refresh_anchors_specific
	
	cp -a "$scriptAbsoluteFolder"/_anchor "$scriptAbsoluteFolder"/"$1""$ub_anchor_suffix"
	
	return 0
}
# Assumes user has included "$HOME"/bin in their "$PATH".
_refresh_anchors_user_single_procedure() {
	[[ "$ub_anchor_user" != 'true' ]] && return 1
	
	_set_refresh_anchors_specific
	! mkdir -p "$HOME"/bin && return 1
	
	
	# WARNING: Default to replacement. Rare case considered acceptable for several reasons.
	# Negligible damage potential - all replaced files are symlinks or anchors.
	# Limited to specifically named anchor symlinks, defined in "_associate_anchors_request", typically overloaded with 'core.sh' or similar.
	# Usually requested 'manually' through "_setup" or "_anchor", even if called through a multi-installation request.
	# Incorrectly calling a moved, uninstalled, or otherwise incorrect previous version, of linked software, is anticipated to be a more commonly impose greater risk.
	#ln -s "$scriptAbsoluteFolder"/"$1""$ub_anchor_suffix" "$HOME"/bin/ > /dev/null 2>&1
	ln -sf "$scriptAbsoluteFolder"/"$1""$ub_anchor_suffix" "$HOME"/bin/
	
	return 0
}

# ATTENTION: Overload with 'core.sh' or similar.
# # EXAMPLE ONLY.
# _refresh_anchors_specific() {
# 	_refresh_anchors_specific_single_procedure _true
# }
# # EXAMPLE ONLY.
# _refresh_anchors_user() {
# 	_refresh_anchors_user_single_procedure _true
# }


# ATTENTION: Overload with 'core'sh' or similar.
# _associate_anchors_request() {
# 	if type "_refresh_anchors_user" > /dev/null 2>&1
# 	then
# 		_tryExec "_refresh_anchors_user"
# 		#return
# 	fi
# 	
# 	_messagePlain_request 'association: dir'
# 	echo _scope_konsole"$ub_anchor_suffix"
# 	
# 	_messagePlain_request 'association: dir'
# 	echo _scope_designer_designeride"$ub_anchor_suffix"
# 	
# 	_messagePlain_request 'association: dir, *.ino'
# 	echo _designer_generate"$ub_anchor_suffix"
# }



# ATTENTION: Overload with 'core.sh' or similar.
# WARNING: May become default behavior.
_anchor_autoupgrade() {
	local currentScriptBaseName
	currentScriptBaseName=$(basename $scriptAbsoluteLocation)
	[[ "$currentScriptBaseName" != "ubiquitous_bash.sh" ]] && return 1
	
	[[ "$ub_anchor_autoupgrade" != 'true' ]] && return 0
	
	_findUbiquitous
	
	[[ -e "$ubiquitousLibDir"/_anchor ]] && cp -a "$ubiquitousLibDir"/_anchor "$scriptAbsoluteFolder"/_anchor
}

_anchor_configure() {
	export ubAnchorTemplateCurrent="$scriptAbsoluteFolder"/_anchor
	[[ "$1" != "" ]] && export ubAnchorTemplateCurrent="$1"
	
	! [[ -e "$ubAnchorTemplateCurrent" ]] && return 1
	
	#https://superuser.com/questions/450868/what-is-the-simplest-scriptable-way-to-check-whether-a-shell-variable-is-exporte
	! [ "$(bash -c 'echo ${objectName}')" ] && return 1
	
	
	rm -f "$scriptAbsoluteFolder"/_anchor.tmp "$scriptAbsoluteFolder"/_anchor.tmp1 "$scriptAbsoluteFolder"/_anchor.tmp2 > /dev/null 2>&1
	cp "$ubAnchorTemplateCurrent" "$scriptAbsoluteFolder"/_anchor.tmp
	cp "$ubAnchorTemplateCurrent" "$scriptAbsoluteFolder"/_anchor.tmp1
	cp "$ubAnchorTemplateCurrent" "$scriptAbsoluteFolder"/_anchor.tmp2
	
	cat "$scriptAbsoluteFolder"/_anchor.tmp  | sed 's/^export anchorSourceDir\=.*$/export anchorSourceDir\=\"'"$objectName"'\"/g' > "$scriptAbsoluteFolder"/_anchor.tmp1
	#perl -p -e 's/export anchorSourceDir=.*/export anchorSourceDir="$ENV{objectName}"/g' "$scriptAbsoluteFolder"/_anchor.tmp > "$scriptAbsoluteFolder"/_anchor.tmp1
	
	cat "$scriptAbsoluteFolder"/_anchor.tmp1 | sed 's/^SET \"MSWanchorSourceDir\=.*$/SET \"MSWanchorSourceDir\='"$objectName"'\"/g' > "$scriptAbsoluteFolder"/_anchor.tmp2
	#perl -p -e 's/SET "MSWanchorSourceDir=.*/SET "MSWanchorSourceDir=$ENV{objectName}"/g' "$scriptAbsoluteFolder"/_anchor.tmp1 > "$scriptAbsoluteFolder"/_anchor.tmp2
	
	local currentScriptBaseName
	currentScriptBaseName=$(basename $scriptAbsoluteLocation)
	
	# ATTENTION: Configure with 'ops.sh' , 'core.sh' , or similar.
	if [[ "$scriptAbsoluteLocation" == *"cautossh" ]] || [[ "$scriptAbsoluteLocation" != *"ubiquitous_bash.sh" ]]
	then
		cat "$scriptAbsoluteFolder"/_anchor.tmp2  | sed 's/^export anchorSource\=.*$/export anchorSource\=\"'"$currentScriptBaseName"'\"/g' > "$scriptAbsoluteFolder"/_anchor.tmp3
		#perl -p -e 's/export anchorSource=.*/export anchorSource="cautossh"/g' "$scriptAbsoluteFolder"/_anchor.tmp2 > "$scriptAbsoluteFolder"/_anchor.tmp3
		
		cat "$scriptAbsoluteFolder"/_anchor.tmp3 | sed 's/^SET \"MSWanchorSource\=.*$/SET \"MSWanchorSource\='"$currentScriptBaseName"'\"/g' > "$scriptAbsoluteFolder"/_anchor.tmp4
		#perl -p -e 's/SET "MSWanchorSource=.*/SET "MSWanchorSource=cautossh"/g' "$scriptAbsoluteFolder"/_anchor.tmp3 > "$scriptAbsoluteFolder"/_anchor.tmp4
	else
		cat "$scriptAbsoluteFolder"/_anchor.tmp2 > "$scriptAbsoluteFolder"/_anchor.tmp4
	fi
	
	mv "$scriptAbsoluteFolder"/_anchor.tmp4 "$ubAnchorTemplateCurrent"
	chmod u+x "$ubAnchorTemplateCurrent"
	rm -f "$scriptAbsoluteFolder"/_anchor.tmp "$scriptAbsoluteFolder"/_anchor.tmp1 "$scriptAbsoluteFolder"/_anchor.tmp2 "$scriptAbsoluteFolder"/_anchor.tmp3 "$scriptAbsoluteFolder"/_anchor.tmp4 > /dev/null 2>&1
}


_anchor() {
	_anchor_autoupgrade
	
	_anchor_configure
	_anchor_configure "$scriptAbsoluteFolder"/_anchor.bat
	
	! [[ -e "$scriptAbsoluteFolder"/_anchor ]] && ! [[ -e "$scriptAbsoluteFolder"/_anchor.bat ]] && return 1
	
	[[ "$scriptAbsoluteFolder" == *"ubiquitous_bash" ]] && _refresh_anchors_ubiquitous
	
	if type "_refresh_anchors_cautossh" > /dev/null 2>&1 && [[ "$scriptAbsoluteLocation" == *"cautossh" ]]
	then
		_tryExec "_refresh_anchors_cautossh"
		#return
	fi
	
	
	if type "_refresh_anchors" > /dev/null 2>&1
	then
		_tryExec "_refresh_anchors"
		#return
	fi
	
	# CAUTION: Anchor scripts MUST include code to ignore '--' suffix specific software name convention!
	# WARNING: DO NOT enable in "core.sh". Intended to be enabled by "_local/ops.sh".
	if type "_refresh_anchors_specific" > /dev/null 2>&1
	then
		_tryExec "_refresh_anchors_specific"
		#return
	fi
	
	# CAUTION: ONLY intended to be used either with generic software, or anchors following '--' suffix specific software name convention!
	# WARNING: DO NOT enable in "core.sh". Intended to be enabled by "_local/ops.sh".
	if type "_refresh_anchors_user" > /dev/null 2>&1
	then
		_tryExec "_refresh_anchors_user"
		#return
	fi
	
	# WARNING: Calls _refresh_anchors_user . Same variables required to enable, intended to be set by "_local/ops.sh".
	#if type "_associate_anchors_request" > /dev/null 2>&1
	#then
		#_tryExec "_associate_anchors_request"
		##return
	#fi
	
	
	
	return 0
}




_setup_renice() {
	_messageNormal '_setup_renice'
	
	if [[ "$scriptAbsoluteFolder" == *'ubiquitous_bash' ]] && [[ "$1" != '--force' ]]
	then
		_messagePlain_bad 'bad: generic ubiquitous_bash installation detected'
		_messageFAIL
		_stop 1
	fi
	
	
	_messagePlain_nominal '_setup_renice: hook: ubcore'
	local ubHome
	ubHome="$HOME"
	export ubcoreDir="$ubHome"/.ubcore
	export ubcoreFile="$ubcoreDir"/.ubcorerc
	
	if ! [[ -e "$ubcoreFile" ]]
	then
		_messagePlain_warn 'fail: hook: missing: .ubcorerc'
		return 1
	fi
	
	if grep 'token_ub_renice' "$ubcoreFile" > /dev/null 2>&1
	then
		_messagePlain_good 'good: hook: present: .ubcorerc'
		return 0
	fi
	
	#echo '# token_ub_renice' >> "$ubcoreFile"
	cat << CZXWXcRMTo8EmM8i4d >> "$ubcoreFile"

# token_ub_renice
if [[ "\$__overrideRecursionGuard_make" != 'true' ]] && [[ "\$__overrideKeepPriority_make" != 'true' ]] && type type > /dev/null 2>&1 && type -p make > /dev/null 2>&1
then
	__overrideRecursionGuard_make='true'
	__override_make=$(type -p make 2>/dev/null)
	make() {
		#Greater or equal, _priority_idle_pid
		
 		ionice -c 2 -n 5 -p \$\$ > /dev/null 2>&1
		renice -n 3 -p \$\$ > /dev/null 2>&1
		
		"\$__override_make" "\$@"
	}
fi

CZXWXcRMTo8EmM8i4d
	
	if grep 'token_ub_renice' "$ubcoreFile" > /dev/null 2>&1
	then
		_messagePlain_good 'good: hook: present: .ubcorerc'
		#return 0
	else
		_messagePlain_bad 'fail: hook: missing: token: .ubcorerc'
		_messageFAIL
		return 1
	fi
	
	
	
	_messagePlain_nominal '_setup_renice: hook: cron'
	echo '@reboot '"$scriptAbsoluteLocation"' _unix_renice_execDaemon' | crontab -
	
	#echo '*/7 * * * * '"$scriptAbsoluteLocation"' _unix_renice'
	#echo '*/1 * * * * '"$scriptAbsoluteLocation"' _unix_renice_app'
}

# WARNING: Recommend, using an independent installation (ie. not '~/core/infrastructure/ubiquitous_bash').
_unix_renice_execDaemon() {
	_cmdDaemon "$scriptAbsoluteLocation" _unix_renice_repeat
}

_unix_renice_daemon() {
	_priority_idle_pid "$$" > /dev/null 2>&1
	
	_start
	
	_killDaemon
	
	
	_unix_renice_execDaemon
	while _daemonStatus
	do
		sleep 5
	done
	
	_stop
}

_unix_renice_repeat() {
	# sleep 0.7
	_unix_renice_app
	_unix_renice
	
	sleep 3
	_unix_renice_app
	_unix_renice
	
	sleep 9
	_unix_renice_app
	_unix_renice
	
	sleep 27
	_unix_renice_app
	_unix_renice
	
	sleep 27
	_unix_renice_app
	_unix_renice
	
	local currentIteration
	while true
	do
		currentIteration=0
		while [[ "$currentIteration" -lt "4" ]]
		do
			sleep 120
			[[ "$matchingEMBEDDED" != 'false' ]] && sleep 120
			_unix_renice_app > /dev/null 2>&1
			let currentIteration="$currentIteration"+1
		done
		
		_unix_renice
	done
}

_unix_renice() {
	_priority_idle_pid "$$" > /dev/null 2>&1
	
	_unix_renice_critical > /dev/null 2>&1
	_unix_renice_interactive > /dev/null 2>&1
	_unix_renice_app > /dev/null 2>&1
	_unix_renice_idle > /dev/null 2>&1
}

_unix_renice_critical() {
	local processListFile
	processListFile="$tmpSelf"/.pidlist_$(_uid)
	
	_priority_enumerate_pattern "^ksysguard$" >> "$processListFile"
	_priority_enumerate_pattern "^ksysguardd$" >> "$processListFile"
	_priority_enumerate_pattern "^top$" >> "$processListFile"
	_priority_enumerate_pattern "^iotop$" >> "$processListFile"
	_priority_enumerate_pattern "^latencytop$" >> "$processListFile"
	
	_priority_enumerate_pattern "^Xorg$" >> "$processListFile"
	_priority_enumerate_pattern "^modeset$" >> "$processListFile"
	
	_priority_enumerate_pattern "^smbd$" >> "$processListFile"
	_priority_enumerate_pattern "^nmbd$" >> "$processListFile"
	
	_priority_enumerate_pattern "^ssh$" >> "$processListFile"
	_priority_enumerate_pattern "^sshd$" >> "$processListFile"
	_priority_enumerate_pattern "^ssh-agent$" >> "$processListFile"
	
	_priority_enumerate_pattern "^sshfs$" >> "$processListFile"
	
	_priority_enumerate_pattern "^socat$" >> "$processListFile"
	
	#_priority_enumerate_pattern "^cron$" >> "$processListFile"
	
	local currentPID
	
	while read -r currentPID
	do
		_priority_critical_pid "$currentPID"
	done < "$processListFile"
	
	rm "$processListFile"
}

_unix_renice_interactive() {
	local processListFile
	processListFile="$tmpSelf"/.pidlist_$(_uid)
	
	_priority_enumerate_pattern "^kwin$" >> "$processListFile"
	_priority_enumerate_pattern "^pager$" >> "$processListFile"
	
	_priority_enumerate_pattern "^pulseaudio$" >> "$processListFile"
	
	_priority_enumerate_pattern "^synergy$" >> "$processListFile"
	_priority_enumerate_pattern "^synergys$" >> "$processListFile"
	
	_priority_enumerate_pattern "^kactivitymanagerd$" >> "$processListFile"
	
	_priority_enumerate_pattern "^dbus" >> "$processListFile"
	
	local currentPID
	
	while read -r currentPID
	do
		_priority_interactive_pid "$currentPID"
	done < "$processListFile"
	
	rm "$processListFile"
}

_unix_renice_app() {
	local processListFile
	processListFile="$tmpSelf"/.pidlist_$(_uid)
	
	_priority_enumerate_pattern "^plasmashell$" >> "$processListFile"
	
	_priority_enumerate_pattern "^audacious$" >> "$processListFile"
	_priority_enumerate_pattern "^vlc$" >> "$processListFile"
	
	_priority_enumerate_pattern "^firefox$" >> "$processListFile"
	
	_priority_enumerate_pattern "^dolphin$" >> "$processListFile"
	
	_priority_enumerate_pattern "^kwrite$" >> "$processListFile"
	
	_priority_enumerate_pattern "^konsole$" >> "$processListFile"
	
	
	_priority_enumerate_pattern "^okular$" >> "$processListFile"
	
	_priority_enumerate_pattern "^xournal$" >> "$processListFile"
	
	_priority_enumerate_pattern "^soffice.bin$" >> "$processListFile"
	
	
	_priority_enumerate_pattern "^pavucontrol$" >> "$processListFile"
	
	local currentPID
	
	while read -r currentPID
	do
		_priority_app_pid "$currentPID"
	done < "$processListFile"
	
	rm "$processListFile"
}

_unix_renice_idle() {
	local processListFile
	processListFile="$tmpSelf"/.pidlist_$(_uid)
	
	_priority_enumerate_pattern "^packagekitd$" >> "$processListFile"
	
	_priority_enumerate_pattern "^apt-config$" >> "$processListFile"
	
	#_priority_enumerate_pattern "^ModemManager$" >> "$processListFile"
	
	#_priority_enumerate_pattern "^sddm$" >> "$processListFile"
	
	#_priority_enumerate_pattern "^lpqd$" >> "$processListFile"
	#_priority_enumerate_pattern "^cupsd$" >> "$processListFile"
	#_priority_enumerate_pattern "^cups-browsed$" >> "$processListFile"
	
	_priority_enumerate_pattern "^akonadi" >> "$processListFile"
	_priority_enumerate_pattern "^akonadi_indexing_agent$" >> "$processListFile"
	
	#_priority_enumerate_pattern "^kdeconnectd$" >> "$processListFile"
	#_priority_enumerate_pattern "^kacceessibleapp$" >> "$processListFile"
	#_priority_enumerate_pattern "^kglobalaccel5$" >> "$processListFile"
	
	#_priority_enumerate_pattern "^kded4$" >> "$processListFile"
	#_priority_enumerate_pattern "^ksmserver$" >> "$processListFile"
	
	_priority_enumerate_pattern "^sleep$" >> "$processListFile"
	
	_priority_enumerate_pattern "^exim4$" >> "$processListFile"
	_priority_enumerate_pattern "^apache2$" >> "$processListFile"
	_priority_enumerate_pattern "^mysqld$" >> "$processListFile"
	_priority_enumerate_pattern "^ntpd$" >> "$processListFile"
	#_priority_enumerate_pattern "^avahi-daemon$" >> "$processListFile"
	
	
	# WARNING: Probably unnecessary and counterproductive. May risk halting important compile jobs.
	#_priority_enumerate_pattern "^cc1$" >> "$processListFile"
	#_priority_enumerate_pattern "^cc1plus$" >> "$processListFile"
	
	
	local currentPID
	
	while read -r currentPID
	do
		_priority_idle_pid "$currentPID"
	done < "$processListFile"
	
	rm "$processListFile"
}



# WARNING: End user function. Do NOT call within scripts.
# No production use.
# DANGER: Removes all 'service' files with the correct number of characters. In practice, no non-temporary service is known to meet this criteria.
_systemd_cleanup() {
	# DANGER: Obsolete, more likely to cause unintended deletion. Will be disabled eventually.
	sudo -n rm -f /etc/systemd/system/??????????????????.service
	
	# WARNING: Relies on a >72char filename.
	sudo -n rm -f /etc/systemd/system/????????????????????????????????????????????????????????????????????????.service
}

#####Basic Variable Management

#Reset prefixes.
export tmpPrefix=""
export tmpSelf=""

# ATTENTION: CAUTION: Should only be used by a single unusual Cygwin override. Must be reset if used for any other purpose.
#export descriptiveSelf=""

#####Global variables.
#Fixed unique identifier for ubiquitous bash created global resources, such as bootdisc images to be automaticaly mounted by guests. Should NEVER be changed.
export ubiquitiousBashIDnano=uk4u
export ubiquitiousBashIDshort="$ubiquitiousBashIDnano"PhB6
export ubiquitiousBashID="$ubiquitiousBashIDshort"63kVcygT0q
export ubiquitousBashIDnano=uk4u
export ubiquitousBashIDshort="$ubiquitousBashIDnano"PhB6
export ubiquitousBashID="$ubiquitousBashIDshort"63kVcygT0q

##Parameters
#"--shell", ""
#"--profile"
#"--parent", "--return", "--devenv"
#"--call", "--script" "--bypass"
if [[ "$ub_import_param" == "--profile" ]]
then
	ub_import=true
	export scriptAbsoluteLocation="$profileScriptLocation"
	export scriptAbsoluteFolder="$profileScriptFolder"
	export sessionid=$(_uid)
	_messagePlain_probe_expr 'profile: scriptAbsoluteLocation= '"$scriptAbsoluteLocation"'\n ''profile: scriptAbsoluteFolder= '"$scriptAbsoluteFolder"'\n ''profile: sessionid= '"$sessionid" | _user_log-ub
elif ( [[ "$ub_import_param" == "--parent" ]] || [[ "$ub_import_param" == "--embed" ]] || [[ "$ub_import_param" == "--return" ]] || [[ "$ub_import_param" == "--devenv" ]] ) && [[ "$scriptAbsoluteLocation" != "" ]] && [[ "$scriptAbsoluteFolder" != "" ]] && [[ "$sessionid" != "" ]]
then
	ub_import=true
	true #Do not override.
	_messagePlain_probe_expr 'parent: scriptAbsoluteLocation= '"$scriptAbsoluteLocation"'\n ''parent: scriptAbsoluteFolder= '"$scriptAbsoluteFolder"'\n ''parent: sessionid= '"$sessionid" | _user_log-ub
elif [[ "$ub_import_param" == "--call" ]] || [[ "$ub_import_param" == "--script" ]] || [[ "$ub_import_param" == "--bypass" ]] || [[ "$ub_import_param" == "--shell" ]] || [[ "$ub_import_param" == "--compressed" ]] || ( [[ "$ub_import" == "true" ]] && [[ "$ub_import_param" == "" ]] )
then
	ub_import=true
	export scriptAbsoluteLocation="$importScriptLocation"
	export scriptAbsoluteFolder="$importScriptFolder"
	export sessionid=$(_uid)
	_messagePlain_probe_expr 'call: scriptAbsoluteLocation= '"$scriptAbsoluteLocation"'\n ''call: scriptAbsoluteFolder= '"$scriptAbsoluteFolder"'\n ''call: sessionid= '"$sessionid" | _user_log-ub
elif [[ "$ub_import" != "true" ]]	#"--shell", ""
then
	export scriptAbsoluteLocation=$(_getScriptAbsoluteLocation)
	export scriptAbsoluteFolder=$(_getScriptAbsoluteFolder)
	export sessionid=$(_uid)
	_messagePlain_probe_expr 'default: scriptAbsoluteLocation= '"$scriptAbsoluteLocation"'\n ''default: scriptAbsoluteFolder= '"$scriptAbsoluteFolder"'\n ''default: sessionid= '"$sessionid" | _user_log-ub
else	#FAIL, implies [[ "$ub_import" == "true" ]]
	_messagePlain_bad 'import: fall: fail' | _user_log-ub
	return 1 >/dev/null 2>&1
	exit 1
fi
[[ "$importScriptLocation" != "" ]] && export importScriptLocation=
[[ "$importScriptFolder" != "" ]] && export importScriptFolder=

[[ ! -e "$scriptAbsoluteLocation" ]] && _messagePlain_bad 'missing: scriptAbsoluteLocation= '"$scriptAbsoluteLocation" | _user_log-ub && exit 1
[[ "$sessionid" == "" ]] && _messagePlain_bad 'missing: sessionid' | _user_log-ub && exit 1

#Current directory for preservation.
export outerPWD=$(_getAbsoluteLocation "$PWD")

export initPWD="$PWD"
intInitPWD="$PWD"


# DANGER: CAUTION: Undefined removal of (at least temporary) directories may be possible. Do NOT use without thorough consideration!
# Only known use is setting the temporary directory of a subsequent background process through "$scriptAbsoluteLocation" .
# EXAMPLE: _interactive_pipe() { ... }
if [[ "$ub_force_sessionid" != "" ]]
then
	sessionid="$ub_force_sessionid"
	[[ "$ub_force_sessionid_repeat" != 'true' ]] && export ub_force_sessionid=""
fi


_get_ub_globalVars_sessionDerived() {

export lowsessionid=$(echo -n "$sessionid" | tr A-Z a-z )

# ATTENTION: CAUTION: Unusual Cygwin override to accommodate MSW network drive ( at least when provided by '_userVBox' ) !
if [[ "$scriptAbsoluteFolder" == '/cygdrive/'* ]] && [[ -e /cygdrive ]] && uname -a | grep -i cygwin > /dev/null 2>&1 && [[ "$scriptAbsoluteFolder" != '/cygdrive/c'* ]] && [[ "$scriptAbsoluteFolder" != '/cygdrive/C'* ]]
then
	if [[ "$tmpSelf" == "" ]]
	then
		
		export tmpMSW=$( cd "$LOCALAPPDATA" 2>/dev/null ; pwd )"/Temp"
		[[ ! -e "$tmpMSW" ]] && export tmpMSW=$( cd "$LOCALAPPDATA" 2>/dev/null ; pwd )"/faketemp"
		
		if [[ "$tmpMSW" != "" ]]
		then
			export descriptiveSelf="$sessionid"
			type md5sum > /dev/null 2>&1 && [[ "$scriptAbsoluteLocation" != '/bin/'* ]] && [[ "$scriptAbsoluteLocation" != '/usr/'* ]] && export descriptiveSelf=$(_getScriptAbsoluteLocation | md5sum | head -c 2)$(echo "$sessionid" | head -c 16)
			export tmpSelf="$tmpMSW"/"$descriptiveSelf"
			
			[[ "$descriptiveSelf" == "" ]] && export tmpSelf="$tmpMSW"/"$sessionid"
			true
		fi
		
		( [[ "$tmpSelf" == "" ]] || [[ "$tmpMSW" == "" ]] ) && export tmpSelf=/tmp/"$sessionid"
		true
		
	fi
fi


# CAUTION: 'Proper' UNIX platforms are expected to use "$scriptAbsoluteFolder" as "$tmpSelf" . Only by necessity may these variables be different.
# CAUTION: If not blank, '$tmpSelf' must include first 16 digits of "$sessionid". Failure to do so may cause 'rmdir' collisions and prevent '_safeRMR' from allowing appropriate removal.
# Virtualization and OS image modification functions in particular are not guaranteed to have been otherwise tested.
[[ "$tmpSelf" == "" ]] && export tmpSelf="$scriptAbsoluteFolder"

#Temporary directories.
export safeTmp="$tmpSelf""$tmpPrefix"/w_"$sessionid"
export scopeTmp="$tmpSelf""$tmpPrefix"/s_"$sessionid"
export queryTmp="$tmpSelf""$tmpPrefix"/q_"$sessionid"
export logTmp="$safeTmp"/log
#Solely for misbehaved applications called upon.
export shortTmp=/tmp/w_"$sessionid"
[[ "$tmpMSW" != "" ]] && export shortTmp="$tmpMSW"/w_"$sessionid"

}
_get_ub_globalVars_sessionDerived "$@"






export scriptBin="$scriptAbsoluteFolder"/_bin
export scriptBundle="$scriptAbsoluteFolder"/_bundle
export scriptLib="$scriptAbsoluteFolder"/_lib
#For trivial installations and virtualized guests. Exclusively intended to support _setupUbiquitous and _drop* hooks.
[[ ! -e "$scriptBin" ]] && export scriptBin="$scriptAbsoluteFolder"
[[ ! -e "$scriptBundle" ]] && export scriptBundle="$scriptAbsoluteFolder"
[[ ! -e "$scriptLib" ]] && export scriptLib="$scriptAbsoluteFolder"


# WARNING: Standard relied upon by other standalone scripts (eg. MSW compatible _anchor.bat )
export scriptLocal="$scriptAbsoluteFolder"/_local

#For system installations (exclusively intended to support _setupUbiquitous and _drop* hooks).
if [[ "$scriptAbsoluteLocation" == "/usr/local/bin"* ]] || [[ "$scriptAbsoluteLocation" == "/usr/bin"* ]]
then
	[[ "$scriptAbsoluteLocation" == "/usr/bin"* ]] && export scriptBin="/usr/share/ubcore/bin"
	[[ "$scriptAbsoluteLocation" == "/usr/local/bin"* ]] && export scriptBin="/usr/local/share/ubcore/bin"
	
	if [[ -d "$HOME" ]]
	then
		export scriptLocal="$HOME"/".ubcore"/_sys
	fi
fi

#Essentially temporary tokens which may need to be reused. 
export scriptTokens="$scriptLocal"/.tokens

#Reboot Detection Token Storage
# WARNING WIP. Not tested on all platforms. Requires a directory to be tmp/ram fs mounted. Worst case result is to preserve tokens across reboots.
# WARNING: Does NOT work on Cygwin, files written to either '/tmp' or '/dev/shm' are persistent.
#Fail-Safe
export bootTmp="$scriptLocal"
#Typical BSD
[[ -d /tmp ]] && export bootTmp='/tmp'
#Typical Linux
[[ -d /dev/shm ]] && export bootTmp='/dev/shm'
#Typical MSW - WARNING: Persistent!
[[ "$tmpMSW" != "" ]] && export bootTmp="$tmpMSW"

#Specialized temporary directories.

#MetaEngine/Engine Tmp Defaults (example, no production use)
#export metaTmp="$tmpSelf""$tmpPrefix"/.m_"$sessionid"
#export engineTmp="$tmpSelf""$tmpPrefix"/.e_"$sessionid"

# WARNING: Only one user per (virtual) machine. Requires _prepare_abstract . Not default.
# DANGER: Mandatory strict directory 8.3 compliance for this variable! Long subdirectory/filenames permitted thereafter.
# DANGER: Permitting multi-user access to this directory may cause unexpected behavior, including inconsitent file ownership.
#Consistent absolute path abstraction.
export abstractfs_root=/tmp/"$ubiquitousBashIDnano"
( [[ "$bootTmp" == '/dev/shm' ]] || [[ "$bootTmp" == '/tmp' ]] || [[ "$tmpMSW" != "" ]] ) && export abstractfs_root="$bootTmp"/"$ubiquitousBashIDnano"
export abstractfs_lock="$bootTmp"/"$ubiquitousBashID"/afslock

# Unusually, safeTmpSSH must not be interpreted by client, and therefore is single quoted.
# TODO Test safeTmpSSH variants including spaces in path.
export safeTmpSSH='~/.sshtmp/.s_'"$sessionid"

#Process control.
export pidFile="$safeTmp"/.pid
#Invalid do-not-match default.
export uPID="cwrxuk6wqzbzV6p8kPS8J4APYGX"

export daemonPidFile="$scriptLocal"/.bgpid

#export varStore="$scriptAbsoluteFolder"/var

export vncPasswdFile="$safeTmp"/.vncpasswd

#Network Defaults
[[ "$netTimeout" == "" ]] && export netTimeout=18

export AUTOSSH_FIRST_POLL=45
export AUTOSSH_POLL=45
#export AUTOSSH_GATETIME=0
export AUTOSSH_GATETIME=15

#export AUTOSSH_PORT=0

#export AUTOSSH_DEBUG=1
#export AUTOSSH_LOGLEVEL=7

#Monolithic shared files.
export lock_pathlock="$scriptLocal"/l_path
#Used to make locking operations atomic as possible.
export lock_quicktmp="$scriptLocal"/l_qt
export lock_emergency="$scriptLocal"/l_em
export lock_open="$scriptLocal"/l_o
export lock_opening="$scriptLocal"/l_opening
export lock_closed="$scriptLocal"/l_closed
export lock_closing="$scriptLocal"/l_closing
export lock_instance="$scriptLocal"/l_instance
export lock_instancing="$scriptLocal"/l_instancing

#Specialized lock files. Recommend five character or less suffix. Not all of these may yet be implemented.
export specialLocks
specialLocks=""

export lock_open_image="$lock_open"-img
specialLocks+=("$lock_open_image")

export lock_loop_image="$lock_open"-loop
specialLocks+=("$lock_loop_image")

export lock_open_chroot="$lock_open"-chrt
specialLocks+=("$lock_open_chroot")
export lock_open_docker="$lock_open"-dock
specialLocks+=("$lock_open_docker")
export lock_open_vbox="$lock_open"-vbox
specialLocks+=("$lock_open_vbox")
export lock_open_qemu="$lock_open"-qemu
specialLocks+=("$lock_open_qemu")

export specialLock=""
export specialLocks

export ubVirtImageLocal="true"

#Monolithic shared log files.
export importLog="$scriptLocal"/import.log

#Resource directories.
#export guidanceDir="$scriptAbsoluteFolder"/guidance

#Object Dir
export objectDir="$scriptAbsoluteFolder"

#Object Name
export objectName=$(basename "$objectDir")

#Modify PATH to include own directories.
if ! [[ "$PATH" == *":""$scriptAbsoluteFolder"* ]] && ! [[ "$PATH" == "$scriptAbsoluteFolder"* ]]
then
	export PATH="$PATH":"$scriptAbsoluteFolder":"$scriptBin":"$scriptBundle"
fi

export permaLog="$scriptLocal"

export HOST_USER_ID=$(id -u)
export HOST_GROUP_ID=$(id -g)

export globalArcDir="$scriptLocal"/a
export globalArcFS="$globalArcDir"/fs
export globalArcTmp="$globalArcDir"/tmp

export globalBuildDir="$scriptLocal"/b
export globalBuildFS="$globalBuildDir"/fs
export globalBuildTmp="$globalBuildDir"/tmp


export ub_anchor_specificSoftwareName=""
export ub_anchor_specificSoftwareName

export ub_anchor_user=""
export ub_anchor_user

export ub_anchor_autoupgrade=""
export ub_anchor_autoupgrade







_queue_descriptiveSelf() {
	[[ ! -e "$scriptAbsoluteFolder" ]] && exit 1
	[[ ! -d "$scriptAbsoluteFolder" ]] && exit 1
	
	if type -p md5sum > /dev/null 2>&1
	then
		_safeEcho "$scriptAbsoluteFolder" | md5sum | head -c 18
		return 0
	fi
	if type -p sha512sum > /dev/null 2>&1
	then
		_safeEcho "$scriptAbsoluteFolder" | sha512sum | head -c 18
		return 0
	fi
	
	
	_stop 1
}

_prepare_demand_dir_queue() {
	mkdir -p "$scriptLocal"/_queue
}

# ATTENTION: Override with 'ops' or similar.
_demand_dir_broadcastPipe_page() {
	_prepare_demand_dir_queue "$@"
	
	local currentDescriptiveSelf
	currentDescriptiveSelf=$(_queue_descriptiveSelf)
	[[ "$currentDescriptiveSelf" == "" ]] && _stop 1
	
	local currentLink
	currentLink="$scriptLocal"/_queue/broadcastPipe_page_lnk
	
	local currentValue
	currentValue="$scriptLocal"/_queue/broadcastPipe_page_dir
	
	if [[ "$1" != "" ]]
	then
		mkdir -p "$currentValue"
		_safeEcho "$currentValue"
		return 0
	fi
	
	if [[ -e '/dev/shm' ]] && ! _if_cygwin && type -p mount > /dev/null 2>&1 && mount | grep '/dev/shm' > /dev/null 2>&1
	then
		currentValue=/dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_page_dir
		mkdir -p "$currentValue"
		_relink "$currentValue" "$currentLink" > /dev/null 2>&1
		_safeEcho "$currentValue"
		return 0
	fi
	
	mkdir -p "$currentValue"
	_relink "$currentValue" "$currentLink" > /dev/null 2>&1
	_safeEcho "$currentValue"
	
	return 0
}


_rm_dir_broadcastPipe_page() {
	local currentDescriptiveSelf
	currentDescriptiveSelf=$(_queue_descriptiveSelf)
	[[ "$currentDescriptiveSelf" == "" ]] && _stop 1
	
	rm -f "$scriptLocal"/_queue/broadcastPipe_page_lnk > /dev/null 2>&1
	
	rmdir "$scriptLocal"/_queue/broadcastPipe_page_dir > /dev/null 2>&1
	rmdir "$scriptLocal"/_queue > /dev/null 2>&1
	
	rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_page_dir/inputBufferDir > /dev/null 2>&1
	rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_page_dir/outputBufferDir > /dev/null 2>&1
	rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_page_dir > /dev/null 2>&1
	
	rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue > /dev/null 2>&1
	rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local > /dev/null 2>&1
	rmdir /dev/shm/queue_"$currentDescriptiveSelf" > /dev/null 2>&1
	
	return 0
}





# ATTENTION: Override with 'ops' or similar.
_demand_dir_broadcastPipe_aggregatorStatic() {
	_prepare_demand_dir_queue "$@"
	
	local currentDescriptiveSelf
	currentDescriptiveSelf=$(_queue_descriptiveSelf)
	[[ "$currentDescriptiveSelf" == "" ]] && _stop 1
	
	local currentLink
	currentLink="$scriptLocal"/_queue/broadcastPipe_aggregatorStatic_lnk
	
	local currentValue
	currentValue="$scriptLocal"/_queue/broadcastPipe_aggregatorStatic_dir
	
	if [[ "$1" != "" ]]
	then
		mkdir -p "$currentValue"
		_safeEcho "$currentValue"
		return 0
	fi
	
	# Pipe/Socket backends (eg. 'aggregatorStatic' , 'aggregatorDynamic' ) should NOT be expected to benefit from 'shared memory'.
	#if [[ -e '/dev/shm' ]] && ! _if_cygwin && type -p mount > /dev/null 2>&1 && mount | grep '/dev/shm' > /dev/null 2>&1
	#then
		#currentValue=/dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_aggregatorStatic_dir
		#mkdir -p "$currentValue"
		#_relink "$currentValue" "$currentLink" > /dev/null 2>&1
		#_safeEcho "$currentValue"
		#return 0
	#fi
	
	# ATTENTION: CAUTION: Unusual Cygwin override to accommodate MSW network drive ( at least when provided by '_userVBox' ) !
	# DANGER: Assumption: If possibility of script running from network drive excluded, "$tmpMSW" == "" .
	if _if_cygwin && [[ "$scriptAbsoluteFolder" == '/cygdrive/'* ]] && [[ -e /cygdrive ]] && uname -a | grep -i cygwin > /dev/null 2>&1 && [[ "$scriptAbsoluteFolder" != '/cygdrive/c'* ]] && [[ "$scriptAbsoluteFolder" != '/cygdrive/C'* ]] && [[ "$tmpMSW" != "" ]] && [[ "$LOCALAPPDATA" != "" ]] && [[ -e "$LOCALAPPDATA" ]] && [[ -d "$LOCALAPPDATA" ]]
	then
		currentValue="$tmpMSW"/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_aggregatorStatic_dir
		mkdir -p "$currentValue"
		
		#_relink "$currentValue" "$currentLink" > /dev/null 2>&1
		rm -f "$currentLink" > /dev/null 2>&1
		_safeEcho "$currentValue" > "$currentLink"
		
		_safeEcho "$currentValue"
		return 0
	fi
	
	mkdir -p "$currentValue"
	_relink "$currentValue" "$currentLink" > /dev/null 2>&1
	_safeEcho "$currentValue"
	
	return 0
}


_rm_dir_broadcastPipe_aggregatorStatic() {
	local currentDescriptiveSelf
	currentDescriptiveSelf=$(_queue_descriptiveSelf)
	[[ "$currentDescriptiveSelf" == "" ]] && _stop 1
	
	rm -f "$scriptLocal"/_queue/broadcastPipe_aggregatorStatic_lnk > /dev/null 2>&1
	
	rmdir "$scriptLocal"/_queue/broadcastPipe_aggregatorStatic_dir > /dev/null 2>&1
	rmdir "$scriptLocal"/_queue > /dev/null 2>&1
	
	rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_aggregatorStatic_dir/inputBufferDir > /dev/null 2>&1
	rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_aggregatorStatic_dir/outputBufferDir > /dev/null 2>&1
	rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_aggregatorStatic_dir > /dev/null 2>&1
	
	rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue > /dev/null 2>&1
	rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local > /dev/null 2>&1
	rmdir /dev/shm/queue_"$currentDescriptiveSelf" > /dev/null 2>&1
	
	return 0
}




_demand_socket_broadcastPipe_page_unixAddress() {
	_prepare_demand_dir_queue "$@"
	
	local currentDescriptiveSelf
	currentDescriptiveSelf=$(_queue_descriptiveSelf)
	[[ "$currentDescriptiveSelf" == "" ]] && _stop 1
	
	local currentLink
	currentLink="$scriptLocal"/_queue/broadcastPipe_page_socketUNIX_lnk
	
	local currentValue
	currentValue="$scriptLocal"/_queue/broadcastPipe_page_socketUNIX_dir
	
	if [[ "$1" != "" ]]
	then
		mkdir -p "$currentValue"
		_safeEcho "$currentValue"/unix.sock
		return 0
	fi
	
	# Pipe/Socket backends (eg. 'aggregatorStatic' , 'aggregatorDynamic' ) should NOT be expected to benefit from 'shared memory'.
	#if [[ -e '/dev/shm' ]] && ! _if_cygwin && type -p mount > /dev/null 2>&1 && mount | grep '/dev/shm' > /dev/null 2>&1
	#then
	#	currentValue=/dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_page_socketUNIX_dir
	#	mkdir -p "$currentValue"
	#	_relink "$currentValue" "$currentLink" > /dev/null 2>&1
	#	_safeEcho "$currentValue"/unix.sock
	#	return 0
	#fi
	
	# WARNING: At best, no benefit is expected from using a 'unix domain socket' through Cygwin .
	# https://stackoverflow.com/questions/23086038/what-mechanism-is-used-by-msys-cygwin-to-emulate-unix-domain-sockets
	# ATTENTION: CAUTION: Unusual Cygwin override to accommodate MSW network drive ( at least when provided by '_userVBox' ) !
	# DANGER: Assumption: If possibility of script running from network drive excluded, "$tmpMSW" == "" .
	#if _if_cygwin && [[ "$scriptAbsoluteFolder" == '/cygdrive/'* ]] && [[ -e /cygdrive ]] && uname -a | grep -i cygwin > /dev/null 2>&1 && [[ "$scriptAbsoluteFolder" != '/cygdrive/c'* ]] && [[ "$scriptAbsoluteFolder" != '/cygdrive/C'* ]] && [[ "$tmpMSW" != "" ]] && [[ "$LOCALAPPDATA" != "" ]] && [[ -e "$LOCALAPPDATA" ]] && [[ -d "$LOCALAPPDATA" ]]
	#then
		#currentValue="$tmpMSW"/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_page_socketUNIX_dir
		#mkdir -p "$currentValue"
		
		##_relink "$currentValue" "$currentLink" > /dev/null 2>&1
		#rm -f "$currentLink" > /dev/null 2>&1
		#_safeEcho "$currentValue" > "$currentLink"
		
		#_safeEcho "$currentValue"/unix.sock
		#return 0
	#fi
	
	# WARNING: UNIX domain socket apparently requires short address.
	# 'E unix socket address 111 characters long, max length is 108'
	if [[ -e '/tmp' ]]
	then
		#currentValue=/tmp/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_page_socketUNIX_dir
		currentValue=/tmp/que_skt_"$currentDescriptiveSelf"/bP_p_sktU_d
		mkdir -p "$currentValue"
		
		#_relink "$currentValue" "$currentLink" > /dev/null 2>&1
		rm -f "$currentLink" > /dev/null 2>&1
		_safeEcho "$currentValue" > "$currentLink"
		
		_safeEcho "$currentValue"/unix.sock
		return 0
	fi
	
	
	mkdir -p "$currentValue"
	_relink "$currentValue" "$currentLink" > /dev/null 2>&1
	_safeEcho "$currentValue"/unix.sock
	
	return 0
}


_rm_socket_broadcastPipe_page_unixAddress() {
	local currentDescriptiveSelf
	currentDescriptiveSelf=$(_queue_descriptiveSelf)
	[[ "$currentDescriptiveSelf" == "" ]] && _stop 1
	
	rm -f "$scriptLocal"/_queue/broadcastPipe_aggregatorStatic_lnk > /dev/null 2>&1
	
	
	
	
	rm -f "$scriptLocal"/_queue/broadcastPipe_aggregatorStatic_dir/unix.sock > /dev/null 2>&1
	
	rmdir "$scriptLocal"/_queue/broadcastPipe_aggregatorStatic_dir > /dev/null 2>&1
	rmdir "$scriptLocal"/_queue > /dev/null 2>&1
	
	
	
	rm -f rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_aggregatorStatic_dir/unix.sock > /dev/null 2>&1
	
	rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_aggregatorStatic_dir > /dev/null 2>&1
	
	rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue > /dev/null 2>&1
	rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local > /dev/null 2>&1
	rmdir /dev/shm/queue_"$currentDescriptiveSelf" > /dev/null 2>&1
	
	
	
	rm -f "$tmpMSW"/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_page_socketUNIX_dir/unix.sock > /dev/null 2>&1
	
	rmdir "$tmpMSW"/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_page_socketUNIX_dir > /dev/null 2>&1
	
	rmdir "$tmpMSW"/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_page_socketUNIX_dir > /dev/null 2>&1
	rmdir "$tmpMSW"/queue_"$currentDescriptiveSelf"/_local/_queue > /dev/null 2>&1
	rmdir "$tmpMSW"/queue_"$currentDescriptiveSelf"/_local > /dev/null 2>&1
	
	
	
	rm -f /tmp/que_skt_"$currentDescriptiveSelf"/bP_p_sktU_d/unix.sock > /dev/null 2>&1
	rmdir /tmp/que_skt_"$currentDescriptiveSelf"/bP_p_sktU_d > /dev/null 2>&1
	rmdir /tmp/que_skt_"$currentDescriptiveSelf" > /dev/null 2>&1
	
	
	return 0
}













_demand_socket_broadcastPipe_aggregatorStatic_unixAddress() {
	_prepare_demand_dir_queue "$@"
	
	local currentDescriptiveSelf
	currentDescriptiveSelf=$(_queue_descriptiveSelf)
	[[ "$currentDescriptiveSelf" == "" ]] && _stop 1
	
	local currentLink
	currentLink="$scriptLocal"/_queue/broadcastPipe_aggregatorStatic_socketUNIX_lnk
	
	local currentValue
	currentValue="$scriptLocal"/_queue/broadcastPipe_aggregatorStatic_socketUNIX_dir
	
	if [[ "$1" != "" ]]
	then
		mkdir -p "$currentValue"
		_safeEcho "$currentValue"/unix.sock
		return 0
	fi
	
	# Pipe/Socket backends (eg. 'aggregatorStatic' , 'aggregatorDynamic' ) should NOT be expected to benefit from 'shared memory'.
	#if [[ -e '/dev/shm' ]] && ! _if_cygwin && type -p mount > /dev/null 2>&1 && mount | grep '/dev/shm' > /dev/null 2>&1
	#then
	#	currentValue=/dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_aggregatorStatic_socketUNIX_dir
	#	mkdir -p "$currentValue"
	#	_relink "$currentValue" "$currentLink" > /dev/null 2>&1
	#	_safeEcho "$currentValue"/unix.sock
	#	return 0
	#fi
	
	# WARNING: At best, no benefit is expected from using a 'unix domain socket' through Cygwin .
	# https://stackoverflow.com/questions/23086038/what-mechanism-is-used-by-msys-cygwin-to-emulate-unix-domain-sockets
	# ATTENTION: CAUTION: Unusual Cygwin override to accommodate MSW network drive ( at least when provided by '_userVBox' ) !
	# DANGER: Assumption: If possibility of script running from network drive excluded, "$tmpMSW" == "" .
	#if _if_cygwin && [[ "$scriptAbsoluteFolder" == '/cygdrive/'* ]] && [[ -e /cygdrive ]] && uname -a | grep -i cygwin > /dev/null 2>&1 && [[ "$scriptAbsoluteFolder" != '/cygdrive/c'* ]] && [[ "$scriptAbsoluteFolder" != '/cygdrive/C'* ]] && [[ "$tmpMSW" != "" ]] && [[ "$LOCALAPPDATA" != "" ]] && [[ -e "$LOCALAPPDATA" ]] && [[ -d "$LOCALAPPDATA" ]]
	#then
		#currentValue="$tmpMSW"/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_aggregatorStatic_socketUNIX_dir
		#mkdir -p "$currentValue"
		
		##_relink "$currentValue" "$currentLink" > /dev/null 2>&1
		#rm -f "$currentLink" > /dev/null 2>&1
		#_safeEcho "$currentValue" > "$currentLink"
		
		#_safeEcho "$currentValue"/unix.sock
		#return 0
	#fi
	
	# WARNING: UNIX domain socket apparently requires short address.
	# 'E unix socket address 111 characters long, max length is 108'
	if [[ -e '/tmp' ]]
	then
		#currentValue=/tmp/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_aggregatorStatic_socketUNIX_dir
		currentValue=/tmp/que_skt_"$currentDescriptiveSelf"/bP_aS_sktU_d
		mkdir -p "$currentValue"
		
		#_relink "$currentValue" "$currentLink" > /dev/null 2>&1
		rm -f "$currentLink" > /dev/null 2>&1
		_safeEcho "$currentValue" > "$currentLink"
		
		_safeEcho "$currentValue"/unix.sock
		return 0
	fi
	
	
	mkdir -p "$currentValue"
	_relink "$currentValue" "$currentLink" > /dev/null 2>&1
	_safeEcho "$currentValue"/unix.sock
	
	return 0
}


_rm_socket_broadcastPipe_aggregatorStatic_unixAddress() {
	local currentDescriptiveSelf
	currentDescriptiveSelf=$(_queue_descriptiveSelf)
	[[ "$currentDescriptiveSelf" == "" ]] && _stop 1
	
	rm -f "$scriptLocal"/_queue/broadcastPipe_aggregatorStatic_lnk > /dev/null 2>&1
	
	
	
	
	rm -f "$scriptLocal"/_queue/broadcastPipe_aggregatorStatic_dir/unix.sock > /dev/null 2>&1
	
	rmdir "$scriptLocal"/_queue/broadcastPipe_aggregatorStatic_dir > /dev/null 2>&1
	rmdir "$scriptLocal"/_queue > /dev/null 2>&1
	
	
	
	rm -f rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_aggregatorStatic_dir/unix.sock > /dev/null 2>&1
	
	rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_aggregatorStatic_dir > /dev/null 2>&1
	
	rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local/_queue > /dev/null 2>&1
	rmdir /dev/shm/queue_"$currentDescriptiveSelf"/_local > /dev/null 2>&1
	rmdir /dev/shm/queue_"$currentDescriptiveSelf" > /dev/null 2>&1
	
	
	
	rm -f "$tmpMSW"/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_aggregatorStatic_socketUNIX_dir/unix.sock > /dev/null 2>&1
	
	rmdir "$tmpMSW"/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_aggregatorStatic_socketUNIX_dir > /dev/null 2>&1
	
	rmdir "$tmpMSW"/queue_"$currentDescriptiveSelf"/_local/_queue/broadcastPipe_aggregatorStatic_socketUNIX_dir > /dev/null 2>&1
	rmdir "$tmpMSW"/queue_"$currentDescriptiveSelf"/_local/_queue > /dev/null 2>&1
	rmdir "$tmpMSW"/queue_"$currentDescriptiveSelf"/_local > /dev/null 2>&1
	
	
	
	rm -f /tmp/que_skt_"$currentDescriptiveSelf"/bP_aS_sktU_d/unix.sock > /dev/null 2>&1
	rmdir /tmp/que_skt_"$currentDescriptiveSelf"/bP_aS_sktU_d > /dev/null 2>&1
	rmdir /tmp/que_skt_"$currentDescriptiveSelf" > /dev/null 2>&1
	
	
	return 0
}




















_default_page_write_maxTime() {
	local currentValue
	currentValue=725
	_if_cygwin && currentValue=4475
	echo "$currentValue"
}

_default_page_write_maxBytes() {
	local currentValue
	currentValue=86400
	#_if_cygwin && currentValue=864000
	echo "$currentValue"
}



_default_page_read_maxTime() {
	local currentValue
	currentValue=100
	_if_cygwin && currentValue=575
	echo "$currentValue"
}





_broadcastPipe_page_read_maxTime() {
	local currentValue
	currentValue=100
	_if_cygwin && currentValue=975
	echo "$currentValue"
}















# ATTENTION: Only the test procedures are disabled if the 'queue' dependency is not declared. Due to the lengthy timing required to reliabily test the inherently unpredictability of any InterProcess-Communication with non-dedicated non-realtime software.
unset _test_queue
unset _test_selfTime
unset _test_bashTime
unset _test_filemtime
unset _test_timeoutRead
#unset _timetest
unset _test_broadcastPipe_page
unset _test_broadcastPipe_aggregatorStatic






# "$1" == inputBufferDir
# "$2" == inputFilesPrefix
# "$3" == maxTime (approximately how many milliseconds buffer should be checked for new data)
# "$4" == maxBytes (IGNORED)
# "$ub_force_limit_page_rate"
#	'' == Write new pages as fast as buffers fill up. Readers may miss some pages. (Default. Strongly recommended.)
#	'true' == Write only one page per "$maxTime" interval. WARNING: Writes may backlog indefinitely, breaking real-time messaging. (IGNORED by '_page_read')
#	'false' == Write and read new pages continiously. WARNING: Read processes will consume 100% CPU. Readers may still miss some pages, although reads may happen faster than writes.
_page_read() {
	local inputBufferDir="$1"
	local inputFilesPrefix="$2"
	local service_inputBufferDir
	if [[ "$inputBufferDir" == "" ]] || [[ "$inputBufferDir" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_page "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		inputBufferDir="$current_demand_dir"/outputBufferDir
		! mkdir -p "$inputBufferDir" && return 1
		
		service_inputBufferDir="$current_demand_dir"/inputBufferDir
		
		[[ "$inputFilesPrefix" == "" ]] && inputFilesPrefix='out-'
	fi
	
	
	! mkdir -p "$inputBufferDir" && return 1
	! [[ -e "$inputBufferDir" ]] && return 1
	! [[ -d "$inputBufferDir" ]] && return 1
	
	local currentMaxTime
	currentMaxTime="$3"
	# 6/60Hz == 100ms , loop time ~ 35ms
	# 0.1s desired minimum sleep
	#[[ "$currentMaxTime" == "" ]] && currentMaxTime=175
	[[ "$currentMaxTime" == "" ]] && currentMaxTime=$(_default_page_read_maxTime)
	
	local currentMaxTime_seconds
	currentMaxTime_seconds=$(bc <<< "$currentMaxTime * 0.001")
	
	
	local measureTickA
	local measureTickB
	
	while true
	do
		if [[ "$service_inputBufferDir" != "" ]]
		then
			#[[ ! -d "$service_inputBufferDir" ]] && return 0
			[[ -e "$service_inputBufferDir"/terminate ]] && return 0
		fi
		
		[[ "$ub_force_limit_page_rate" != 'false' ]] && sleep "$currentMaxTime_seconds"
		
		[[ -e "$inputBufferDir"/"$inputFilesPrefix"tick ]] && measureTickA=$(head -n 1 "$inputBufferDir"/"$inputFilesPrefix"tick 2>/dev/null)
		[[ "$measureTickA" != '0' ]] && [[ "$measureTickA" != '1' ]] && [[ "$measureTickA" != '2' ]] && continue
		
		[[ "$measureTickB" == '' ]] && measureTickB='doNotMatch'
		[[ "$measureTickA" == "$measureTickB" ]] && continue
		
		cat "$inputBufferDir"/"$inputFilesPrefix""$measureTickA" 2>/dev/null
		
		measureTickB="$measureTickA"
	done
}





# "$1" == "$inputTickFile"
# "$2" == "$inputFilesPrefix"
# "$3" == "sessionid" (optional)
_page_read_single() {
	local inputTickFile="$1"
	local inputFilesPrefix="$2"
	local currentSession="$3"
	if [[ "$inputTickFile" == "" ]] && [[ "$inputFilesPrefix" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_page "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		inputTickFile="$current_demand_dir"/outputBufferDir/out-tick
		
		[[ "$currentSession" == "" ]] && currentSession="single"
		[[ "$currentSession" == "" ]] && currentSession="false"
	fi
	[[ "$currentSession" == "" ]] && currentSession="$sessionid"
	
	
	measureTickA=$(head -n 1 "$inputTickFile" 2>/dev/null)
	[[ "$measureTickA" != '0' ]] && [[ "$measureTickA" != '1' ]] && [[ "$measureTickA" != '2' ]] && return 0
	
	if [[ "$currentSession" != 'false' ]]
	then
		measureTickB=$(head -n 1  "$inputTickFile"-prev-"$currentSession" 2>/dev/null)
		
		[[ "$measureTickB" == '' ]] && measureTickB='doNotMatch'
		[[ "$measureTickA" == "$measureTickB" ]] && return 0
	fi
	
	currentExitStatus='0'
	
	cat ${inputTickFile/-tick/}-"$measureTickA" 2>/dev/null
	[[ "$?" != '0' ]] && currentExitStatus='1'
	
	if [[ "$currentSession" != 'false' ]]
	then
		cp "$inputTickFile" "$inputTickFile"-prev-"$currentSession" 2>/dev/null
		[[ "$?" != '0' ]] && currentExitStatus='1'
	fi
	
	if [[ "$currentExitStatus" != '0' ]]
	then
		rm -f "$inputTickFile" > /dev/null 2>&1
		return "$currentExitStatus"
	fi
	
	return 0
}




# Intended to be called by users and programs which are only able to call one other program which must accept both standard input/output connections.
# Specifically intended to be compatible with 'socat' .
# "$1" == inputBufferDir (inverted - typically output of broadcastPipe)
# "$2" == outputBufferDir (inverted - typically input of broadcastPipe)
# "$4" == inputFilesPrefix
# "$4" == outputFilesPrefix
_page_converse() {
	local inputBufferDir="$1"
	local outputBufferDir="$2"
	if [[ "$inputBufferDir" == "" ]] || [[ "$outputBufferDir" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_page "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		inputBufferDir="$current_demand_dir"/outputBufferDir
		outputBufferDir="$current_demand_dir"/inputBufferDir
	fi
	
	local inputFilesPrefix="$3"
	[[ "$inputFilesPrefix" == "" ]] && inputFilesPrefix='out-'
	
	local outputFilesPrefix="$4"
	#[[ "$outputFilesPrefix" == "" ]] && outputFilesPrefix='converse-'
	#[[ "$outputFilesPrefix" == "" ]] && outputFilesPrefix=$(_uid 14)'-'
	[[ "$outputFilesPrefix" == "" ]] && outputFilesPrefix=$(_uid 18)'-'
	
	
	# DANGER: Without this hook, temporary buffers may persist indefinitely!
	export current_page_write_sessionid="$sessionid"
	export current_broadcastPipe_inputBufferDir="$inputBufferDir"
	export current_broadcastPipe_outputBufferDir="$outputBufferDir"
	export current_broadcastPipe_outputFilesPrefix="$outputFilesPrefix"
	_stop_queue_page() {
		rm -f "$current_broadcastPipe_outputBufferDir"/t_"$current_page_write_sessionid" > /dev/null 2>&1
		rm -f "$current_broadcastPipe_outputBufferDir"/"$current_broadcastPipe_outputFilesPrefix"-tick > /dev/null 2>&1
		_sleep_spinlock
		rm -f "$current_broadcastPipe_outputBufferDir"/"$current_broadcastPipe_outputFilesPrefix"-tick > /dev/null 2>&1
		rm -f "$current_broadcastPipe_outputBufferDir"/"$current_broadcastPipe_outputFilesPrefix"* > /dev/null 2>&1
	}
	export ub_nohook_current_page_write_stop_queue_page='true'
	
	#echo "$current_broadcastPipe_outputBufferDir"/"$current_broadcastPipe_outputFilesPrefix"
	
	_page_read "$inputBufferDir" "$inputFilesPrefix" &
	_page_write "$outputBufferDir" "$outputFilesPrefix"
}



_reset_page_write() {
	rm -f "$1"/temp > /dev/null 2>&1
	rm -f "$1"/"$2"tick > /dev/null 2>&1
	rm -f "$1"/"$2"0 > /dev/null 2>&1
	rm -f "$1"/"$2"1 > /dev/null 2>&1
	rm -f "$1"/"$2"2 > /dev/null 2>&1
}

# "$1" == outputBufferDir
# "$2" == outputFilesPrefix
# "$3" == maxTime (approximately how many milliseconds new data should be allowed to 'remain' in the buffer before writing out a new tick)
# "$4" == maxBytes (how many bytes should be allowed to 'accumulate' in the buffer before writing out a new tick) (MAY BE IGNORED)
# "$ub_force_limit_page_rate"
#	'' == Write new pages as fast as buffers fill up. Readers may miss some pages. (Default. Strongly recommended.)
#	'true' == Write only one page per "$maxTime" interval. WARNING: Writes may backlog indefinitely, breaking real-time messaging.
#	'false' == Write and read new pages continiously. WARNING: Read processes will consume 100% CPU. Readers may still miss some pages, although reads may happen faster than writes. (IGNORED by '_page_write')
_page_write() {
	local outputBufferDir="$1"
	local outputFilesPrefix="$2"
	if [[ "$outputBufferDir" == "" ]] || [[ "$outputFilesPrefix" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_page "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		outputBufferDir="$current_demand_dir"/inputBufferDir
		! mkdir -p "$outputBufferDir" && return 1
		
		[[ "$outputFilesPrefix" == "" ]] && outputFilesPrefix='stream-'
	fi
	
	
	! mkdir -p "$outputBufferDir" && return 1
	! [[ -e "$outputBufferDir" ]] && return 1
	! [[ -d "$outputBufferDir" ]] && return 1
	
	if [[ "$ub_nohook_current_page_write_stop_queue_page" != 'true' ]] && ! [[ -e "$safeTmp" ]]
	then
		export current_page_write_outputBufferDir="$outputBufferDir"
		export current_page_write_sessionid="$sessionid"
		_stop_queue_page() {
			rm -f "$current_page_write_outputBufferDir"/t_"$current_page_write_sessionid" > /dev/null 2>&1
		}
	fi
	
	
	# https://stackoverflow.com/questions/13889659/read-a-file-by-bytes-in-bash
	# https://www.cyberciti.biz/faq/linux-unix-read-one-character-atatime-while-loop/
		# 'The way using `read -r -n1` for reading every character is wrong, it can't handle multi-byte characters.'
	#echo test | while IFS= read -r -n2 car;do [ "$car" ] && echo -n "$car" || echo ; sleep 1 ; done
	
	# Inaccurate. Tests with random data ('/dev/urandom') seem to show errors.
# 	local currentString
# 	export IFS=
# 	export LANG=C
# 	export LC_ALL=C
# 	#LANG=C IFS= read -r -d '' -n 1 currentString
# 	while read -r -d '' -n 1 currentString
# 	do
# 		#[ "$currentString" ] && echo -n "$currentString" || echo
# 		[ "$currentString" ] && printf '%b' "$currentString" || echo
# 	done
	
# 	# Accurate, albeit extremely slow.
# 	while head --bytes=1
# 	do
# 		true
# 	done
	
	
	local currentMaxTime
	local currentMaxBytes
	currentMaxTime="$3"
	currentMaxBytes="$4"
	
	
	[[ "$currentMaxTime" == "" ]] && currentMaxTime=$(_default_page_write_maxTime)
	[[ "$currentMaxBytes" == "" ]] && currentMaxBytes=$(_default_page_write_maxBytes)
	
	local currentMaxTime_seconds
	currentMaxTime_seconds=$(bc <<< "$currentMaxTime * 0.001")
	
	
	
	local measureDateA
	local measureDateB
	local measureDateDifference
	
	measureDateA=$(date +%s%N | cut -b1-13)
	
	local currentTick
	currentTick=
	[[ -e "$outputBufferDir"/"$outputFilesPrefix"tick ]] && currentTick=$(head -c 1 "$outputBufferDir"/"$outputFilesPrefix"tick)
	( [[ "$currentTick" == '0' ]] || [[ "$currentTick" == '1' ]] || [[ "$currentTick" == '2' ]] ) && let currentTick="$currentTick"+1
	[[ "$currentTick" != '0' ]] && [[ "$currentTick" != '1' ]] && [[ "$currentTick" != '2' ]] && [[ "$currentTick" != '3' ]] && currentTick='0'
	[[ "$currentTick" -ge '3' ]] && currentTick=0
	local currentTempSize
	currentTempSize='0'
	rm -f "$outputBufferDir"/t_"$sessionid" > /dev/null 2>&1
	rm -f "$outputBufferDir"/"$outputFilesPrefix"tick > /dev/null 2>&1
	rm -f "$outputBufferDir"/"$outputFilesPrefix"0 > /dev/null 2>&1
	rm -f "$outputBufferDir"/"$outputFilesPrefix"1 > /dev/null 2>&1
	rm -f "$outputBufferDir"/"$outputFilesPrefix"2 > /dev/null 2>&1
	#while _timeout "$currentMaxTime_seconds" head --bytes="$currentMaxBytes" 2>/dev/null >> "$outputBufferDir"/t_"$sessionid"
	#while _timeout "$currentMaxTime_seconds" cat 2>/dev/null >> "$outputBufferDir"/t_"$sessionid"
	#while "$scriptAbsoluteLocation" _bin cat | _timeout "$currentMaxTime_seconds" dd bs="$currentMaxBytes" count=1 2>/dev/null >> "$outputBufferDir"/t_"$sessionid"
	#while _timeout "$currentMaxTime_seconds" ( ! dd bs="$currentMaxBytes" count=1 2>/dev/null >> "$outputBufferDir"/t_"$sessionid" && rm -f "$outputBufferDir"/t_"$sessionid" > /dev/null 2>&1 )
	#while cat 2>/dev/null >> "$outputBufferDir"/t_"$sessionid"
	#while _timeout "$currentMaxTime_seconds" head --bytes="2" 2>/dev/null >> "$outputBufferDir"/t_"$sessionid"
	#while _timeout "$currentMaxTime_seconds" dd bs="$currentMaxBytes" count=1 2>/dev/null >> "$outputBufferDir"/t_"$sessionid"
	
	#while cat 2>/dev/null >> "$outputBufferDir"/t_"$sessionid"
	while _timeout "$currentMaxTime_seconds" dd bs="$currentMaxBytes" count=1 2>/dev/null >> "$outputBufferDir"/t_"$sessionid"
	do
		#[[ ! -d "$outputBufferDir" ]] && return 0
		[[ -e "$outputBufferDir"/terminate ]] && return 0
		
		#true | cat "$outputBufferDir"/t_"$sessionid" > /dev/tty
		measureDateB=$(true | date +%s%N | cut -b1-13)
		measureDateDifference=$(bc <<< "$measureDateB - $measureDateA")
		
		currentTempSize='0'
		[[ -s "$outputBufferDir"/t_"$sessionid" ]] && currentTempSize=$(true | stat -c%s "$outputBufferDir"/t_"$sessionid" 2>/dev/null)
		[[ "$currentTempSize" == "" ]] && currentTempSize='0'
		#[[ -s "$outputBufferDir"/t_"$sessionid" ]] && true | stat -c%s "$outputBufferDir"/t_"$sessionid" > /dev/tty
		#[[ "$rewrite" == 'true' ]] && [[ -s "$outputBufferDir"/t_"$sessionid" ]] && true | stat -c%s "$outputBufferDir"/t_"$sessionid" > /dev/tty
		
		#[[ "$currentTempSize" -gt "0" ]] && true | echo "$measureDateDifference" "$currentMaxTime" > /dev/tty
		if [[ "$currentTempSize" -gt "0" ]] && ( [[ "$measureDateDifference" -ge "$currentMaxTime" ]] || [[ "$currentTempSize" -ge "$currentMaxBytes" ]] )
		then
			# ATTENTION: Optional 'page rate' limiting.
			# If buffer was completely filled, then ' _timeout "$currentMaxTime_seconds" ' may not have completed. A delay may ensure '_page_read' has enough time to notice a tick, before new pages are written.
			# No production use. Expected to be set only for benchmarking, diagnostics, etc.
			# WARNING: Beware this is bad for real-time messaging. Much better to discard some flood data.
			[[ "$ub_force_limit_page_rate" == 'true' ]] && [[ "$currentTempSize" -ge "$currentMaxBytes" ]] && sleep "$currentMaxTime_seconds"
			
			#rm -f "$outputBufferDir"/"$outputFilesPrefix""$currentTick" > /dev/null 2>&1
			true | mv "$outputBufferDir"/t_"$sessionid" "$outputBufferDir"/"$outputFilesPrefix""$currentTick"
			true | echo -n "$currentTick" > "$outputBufferDir"/"$outputFilesPrefix"tick-temp
			true | mv "$outputBufferDir"/"$outputFilesPrefix"tick-temp "$outputBufferDir"/"$outputFilesPrefix"tick
			
			measureDateA=$(true | date +%s%N | cut -b1-13)
			#echo "$currentTick" > /dev/tty
			let currentTick="$currentTick"+1
		fi
		
		[[ "$currentTick" -ge '3' ]] && currentTick=0
	done
	
	return 0
}




# "$1" == outputBufferDir
# "$2" == outputFilesPrefix
# "$3" == maxTime (approximately how many milliseconds new data should be allowed to 'remain' in the buffer before writing out a new tick)
# DANGER: Any changes may unexpectedly break '_broadcastPipe' ! Takes standard input from 'script' run by 'find' 'exec' .
_page_write_single() {
	local outputBufferDir="$1"
	local outputFilesPrefix="$2"
	if [[ "$outputBufferDir" == "" ]] || [[ "$outputFilesPrefix" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_page "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		outputBufferDir="$current_demand_dir"/inputBufferDir
		! mkdir -p "$outputBufferDir" && return 1
		
		[[ "$outputFilesPrefix" == "" ]] && outputFilesPrefix='single-'
	fi
	
	local currentTmpUID
	currentTmpUID=$(_uid)
	cat 2>/dev/null >> "$outputBufferDir"/t_"$currentTmpUID"
	
	
	if ! [[ -s "$outputBufferDir"/t_"$currentTmpUID" ]] || ! _moveconfirm "$outputBufferDir"/t_"$currentTmpUID" "$outputBufferDir"/temp 2>/dev/null
	then
		rm -f "$outputBufferDir"/t_"$currentTmpUID" > /dev/null 2>&1
		return 1
	fi
	
	local currentTick
	currentTick=
	[[ -e "$outputBufferDir"/"$outputFilesPrefix"tick ]] && currentTick=$(head -c 1 "$outputBufferDir"/"$outputFilesPrefix"tick)
	( [[ "$currentTick" == '0' ]] || [[ "$currentTick" == '1' ]] || [[ "$currentTick" == '2' ]] ) && let currentTick="$currentTick"+1
	[[ "$currentTick" != '0' ]] && [[ "$currentTick" != '1' ]] && [[ "$currentTick" != '2' ]] && [[ "$currentTick" != '3' ]] && currentTick='0'
	[[ "$currentTick" -ge '3' ]] && currentTick=0
	
	mv "$outputBufferDir"/temp "$outputBufferDir"/"$outputFilesPrefix""$currentTick"
	echo -n "$currentTick" > "$outputBufferDir"/"$outputFilesPrefix"tick-temp
	mv "$outputBufferDir"/"$outputFilesPrefix"tick-temp "$outputBufferDir"/"$outputFilesPrefix"tick
	
	
	#rm -f "$outputBufferDir"/temp > /dev/null 2>&1
	#rm -f "$outputBufferDir"/"$outputFilesPrefix"tick-temp > /dev/null 2>&1
	return 0
}

_here_broadcastPipe_page_read_single() {
	cat << CZXWXcRMTo8EmM8i4d
#!/usr/bin/env bash

CZXWXcRMTo8EmM8i4d
	
	declare -f _page_read_single
	declare -f _broadcastPipe_page_read_single
	
	cat << CZXWXcRMTo8EmM8i4d
_broadcastPipe_page_read_single "\$@"

CZXWXcRMTo8EmM8i4d

}




# "$1" == inputBufferDir
# "$2" == outputBufferDir
# "$3" == maxTime (approximately how many milliseconds buffer should be checked for new data)
# "$4" == maxBytes (how many bytes should be allowed to 'accumulate' in the buffer before writing out a new tick) (MAY BE IGNORED)
# "$5" == maxTime (approximately how many milliseconds new data should be allowed to 'remain' in the buffer before writing out a new tick) (MAY BE IGNORED)
_broadcastPipe_page_write() {
	#true | _reset_page_write "$2" "out-" "$5" "$4"
	
	#export rewrite=true
	# DANGER: Continiously piping through '_page_write' may be inherently less reliable than '_page_write_single' .
	#_page_write "$2" "out-" "$5" "$4"
	
	_page_write_single "$2" "out-" "$5" "$4"
	
}


_broadcastPipe_page_read_single() {
	_page_read_single "$@"
}


# ATTENTION: Override with 'ops' or similar.
_rm_broadcastPipe_page() {
	
	#[[ -e "$1" ]] && [[ "$1" != "" ]] && rm -f "$1"/* > /dev/null 2>&1
	[[ -e "$1" ]] && [[ "$1" != "" ]] && find "$1" -mindepth 1 -maxdepth 1 -type f ! -name 'terminate' -delete > /dev/null 2>&1
	[[ -e "$2" ]] && [[ "$2" != "" ]] && rm -f "$2"/* > /dev/null 2>&1
	
	[[ -e "$1" ]] && [[ "$1" != "" ]] && rm -f "$1"/*-tick-prev* > /dev/null 2>&1
	
	
	return 0
}




# Reduce environment to perhaps improve performance.
_env_broadcastPipe_page() {
	env -i HOME="$HOME" TERM="${TERM}" SHELL="${SHELL}" PATH="${PATH}" PWD="$PWD" scriptAbsoluteLocation="$scriptAbsoluteLocation" scriptAbsoluteFolder="$scriptAbsoluteFolder" sessionid="$sessionid" LD_PRELOAD="$LD_PRELOAD" USER="$USER" ub_force_limit_page_rate="$ub_force_limit_page_rate" "$@"
}


# WARNING: May delete all existing files (to 'clear the buffers').
# WARNING: Must be running before any desired data is written to buffer - existing buffers are always discarded.
# "$1" == inputBufferDir
# "$2" == outputBufferDir
# "$3" == maxTime (approximately how many milliseconds buffer should be checked for new data) (MAY ALSO PARTIALLY OR FULLY DISPLACE VALUE OF "$5")
# "$4" == maxBytes (how many bytes should be allowed to 'accumulate' in the buffer before writing out a new tick) (MAY BE IGNORED)
# "$5" == maxTime (approximately how many milliseconds new data should be allowed to 'remain' in the buffer before writing out a new tick) (MAY BE IGNORED)
_broadcastPipe_page_read() {
	_start
	
	[[ "$1" == "" ]] && _stop 1
	[[ "$1" == "/" ]] && _stop 1
	[[ "$2" == "/" ]] && _stop 1
	
	local current_demand_dir
	current_demand_dir=$(_demand_dir_broadcastPipe_page "$1")
	
	local currentMaxTime
	currentMaxTime="$3"
	[[ "$currentMaxTime" == "" ]] && currentMaxTime="$(_broadcastPipe_page_read_maxTime)"
	
	local currentMaxTime_seconds
	currentMaxTime_seconds=$(bc <<< "$currentMaxTime * 0.001")
	
	# May perhaps take effect when SIGTERM is received directly (eg. when SIGTERM may be sent to all processes) .
	export current_broadcastPipe_inputBufferDir="$1"
	export current_broadcastPipe_outputBufferDir="$2"
	export current_broadcastPipe_current_demand_dir="$current_demand_dir"
	_stop_queue_page() {
		#_terminate_broadcastPipe_page "$current_broadcastPipe_inputBufferDir" 2> /dev/null
		_terminate_broadcastPipe_page_fast "$current_broadcastPipe_inputBufferDir" 2> /dev/null
		sleep 1
		_rm_broadcastPipe_page "$current_broadcastPipe_inputBufferDir" "$current_broadcastPipe_outputBufferDir"
		[[ "$current_broadcastPipe_inputBufferDir" == "$current_broadcastPipe_current_demand_dir"* ]] && [[ "$current_broadcastPipe_current_demand_dir" != "" ]] && _rm_dir_broadcastPipe_page
		
		_sleep_spinlock
		rm -f "$current_broadcastPipe_inputBufferDir"/reset > /dev/null 2>&1
		rm -f "$current_broadcastPipe_inputBufferDir"/terminate > /dev/null 2>&1
		[[ "$current_broadcastPipe_inputBufferDir" == "$current_broadcastPipe_current_demand_dir"* ]] && [[ "$current_broadcastPipe_current_demand_dir" != "" ]] && _rm_dir_broadcastPipe_page
	}
	
	rm -f "$1"/reset > /dev/null 2>&1
	rm -f "$1"/terminate > /dev/null 2>&1
	#_rm_broadcastPipe_page "$@"
	
	_here_broadcastPipe_page_read_single "$@" > "$safeTmp"/broadcastPipe_page_read.sh
	chmod u+x "$safeTmp"/broadcastPipe_page_read.sh
	
	echo > "$1"/listen
	
	while [[ ! -e "$1"/terminate ]]
	do
		# WARNING: Although sequential throughput may be important in some cases, a 'pair of wires' is fundamentally not a parallel device. Simultaneous writing to aggregator should only occur during (usually undesirable) collisions. Nevertheless, processing these collisions out of order is entirely reasonable.
		# WARNING: Imposing limits on the number of inputs (eg. due to command line argument length limitations), below a few thousand, is strongly discouraged.
		# https://serverfault.com/questions/193319/a-better-unix-find-with-parallel-processing
		_env_broadcastPipe_page find "$1" -mindepth 1 -maxdepth 1 -mmin -0.4 -type f -name '*-tick' -exec "$safeTmp"/broadcastPipe_page_read.sh '{}' \; 2> /dev/null | _broadcastPipe_page_write "" "$2" "$3" "$4" "$5" 2>/dev/null
		
		# DANGER: Allowing this bus to run without any idle time may result in an immediately overwhelming processor load, if find loop is allowed to 'fork' new processes.
		[[ "$ub_force_limit_page_rate" != 'false' ]] && sleep "$currentMaxTime_seconds"
		#sleep "$currentMaxTime_seconds"
	done
	
	# WARNING: Since only one program may successfully remove a single file, that mechanism should allow only one 'broadcastPipe' process to remain in the unlikely case multiple were somehow started.
	[[ -e "$1"/terminate ]] && [[ -e "$1"/reset ]] && rm "$1"/reset > /dev/null 2>&1 && _broadcastPipe_page_read "$@"
	rm -f "$1"/reset > /dev/null 2>&1
	
	_rm_broadcastPipe_page "$@"
	rm -f "$1"/terminate > /dev/null 2>&1
	[[ "$1" == "$current_demand_dir"* ]] && [[ "$current_demand_dir" != "" ]] && _rm_dir_broadcastPipe_page
	
	_sleep_spinlock
	rm -f "$1"/terminate > /dev/null 2>&1
	[[ "$1" == "$current_demand_dir"* ]] && [[ "$current_demand_dir" != "" ]] && _rm_dir_broadcastPipe_page
	
	_stop
}








_here_rmloop_broadcastPipe_page() {
	_here_header_bash_or_dash "$@"
	
	declare -f _rmloop_broadcastPipe_page
	
	cat << CZXWXcRMTo8EmM8i4d
_rmloop_broadcastPipe_page "\$@"

CZXWXcRMTo8EmM8i4d

}


_rmloop_broadcastPipe_page() {
	while true
	do
		rm -f "$1"/rmloop > /dev/null 2>&1
		
		#sleep 1
		sleep 0.1
	done
	
}


_safePath_demand_broadcastPipe_page() {
	if [[ "$1" == "$scriptLocal"* ]] && ! _if_cygwin
	then
		return 0
	fi
	if [[ "$1" == '/dev/shm/'* ]] && ! _if_cygwin
	then
		return 0
	fi
	
	
	! _safePath "$1" && _stop 1
	return 0
}

# WARNING: Deletes all existing files (to 'clear the buffers').
# "$1" == inputBufferDir
# "$2" == outputBufferDir
# "$3" == maxTime (approximately how many milliseconds new data should be allowed to 'remain' in the buffer before writing out a new tick)
# "$4" == maxBytes (how many bytes should be allowed to 'accumulate' in the buffer before writing out a new tick)
_demand_broadcastPipe_page_sequence() {
	_start
	
	! mkdir -p "$1" && _stop 1
	! mkdir -p "$2" && _stop 1
	[[ "$1" == "" ]] && _stop 1
	[[ "$1" == "/" ]] && _stop 1
	[[ "$2" == "/" ]] && _stop 1
	if ! _safePath_demand_broadcastPipe_page "$@"
	then
		_terminate_broadcastPipe_page "$1"
		_stop 1
	fi
	
	_here_rmloop_broadcastPipe_page "$@" > "$safeTmp"/_rmloop_broadcastPipe_page
	chmod u+x "$safeTmp"/_rmloop_broadcastPipe_page
	
	echo > "$1"/rmloop
	
	
	_sleep_spinlock
	
	
	! [[ -e "$1"/rmloop ]] && return 0
	! mv "$1"/rmloop "$1"/rmloop.rm > /dev/null 2>&1 && return 0
	if ! rm "$1"/rmloop.rm > /dev/null 2>&1
	then
		rm -f "$1"/rmloop.rm > /dev/null 2>&1
		return 0
	fi
	
	
	_rm_broadcastPipe_page "$@"
	"$safeTmp"/_rmloop_broadcastPipe_page "$@" &
	#"$scriptAbsoluteLocation" _rmloop_broadcastPipe_page "$@" &
	
	
	#"$scriptAbsoluteLocation" _broadcastPipe_page_read "$@" | _broadcastPipe_page_write "$@"
	"$scriptAbsoluteLocation" _broadcastPipe_page_read "$@"
	
	# May not be necessary. Theoretically redundant.
	local currentStopJobs
	currentStopJobs=$(jobs -p -r 2> /dev/null)
	[[ "$currentStopJobs" != "" ]] && kill "$currentStopJobs" > /dev/null 2>&1
	
	
	_sleep_spinlock
	rm -f "$1"/terminate > /dev/null 2>&1
	[[ "$1" == "$current_demand_dir"* ]] && [[ "$current_demand_dir" != "" ]] && _rm_dir_broadcastPipe_page
	
	_stop
}

_demand_broadcastPipe_page() {
	local inputBufferDir="$1"
	local outputBufferDir="$2"
	shift
	shift
	
	if [[ "$inputBufferDir" == "" ]] || [[ "$outputBufferDir" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_page "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		inputBufferDir="$current_demand_dir"/inputBufferDir
		outputBufferDir="$current_demand_dir"/outputBufferDir
	elif [[ -e "$safeTmp" ]]
	then
		# DANGER: Without this hook, temporary "$safeTmp" directories may persist indefinitely!
		# Only hook '_stop_queue_page' if called from within another 'sequence' (to cause termination of service when that 'sequence' terminates for any reason).
		export current_broadcastPipe_inputBufferDir="$inputBufferDir"
		export current_broadcastPipe_outputBufferDir="$outputBufferDir"
		_stop_queue_page() {
			_terminate_broadcastPipe_page "$current_broadcastPipe_inputBufferDir" 2> /dev/null
			#_terminate_broadcastPipe_page_fast "$current_broadcastPipe_inputBufferDir" 2> /dev/null
			#sleep 1
			_rm_broadcastPipe_page "$current_broadcastPipe_inputBufferDir" "$current_broadcastPipe_outputBufferDir"
			[[ "$inputBufferDir" == "$current_demand_dir"* ]] && [[ "$current_demand_dir" != "" ]] && _rm_dir_broadcastPipe_page
		}
	fi
	
	
	"$scriptAbsoluteLocation" _demand_broadcastPipe_page_sequence "$inputBufferDir" "$outputBufferDir" "$@" &
	while [[ -e "$inputBufferDir"/rmloop ]]
	do
		sleep 0.1
	done
	[[ ! -e "$inputBufferDir"/listen ]] && _sleep_spinlock
	[[ ! -e "$inputBufferDir"/listen ]] && _sleep_spinlock
	[[ ! -e "$inputBufferDir"/listen ]] && return 1
	
	[[ "$ub_force_limit_page_rate" == 'true' ]] && _sleep_spinlock
	#[[ "$ub_force_limit_page_rate" == 'false' ]] && _sleep_spinlock
	
	disown -a -h -r
	disown -a -r
	
	return 0
}


_terminate_broadcastPipe_page_fast() {
	local inputBufferDir="$1"
	
	if [[ "$inputBufferDir" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_page "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		inputBufferDir="$current_demand_dir"/inputBufferDir
	fi
	
	[[ "$inputBufferDir" == "" ]] && return 1
	[[ "$inputBufferDir" == "/" ]] && return 1
	[[ ! -e "$inputBufferDir" ]] && return 1
	
	echo > "$inputBufferDir"/terminate
}

_terminate_broadcastPipe_page() {
	local inputBufferDir="$1"
	
	if [[ "$inputBufferDir" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_page "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		inputBufferDir="$current_demand_dir"/inputBufferDir
	fi
	
	mkdir -p "$inputBufferDir"
	
	_terminate_broadcastPipe_page_fast "$@"
	_sleep_spinlock
	
	rm -f "$inputBufferDir"/terminate > /dev/null 2>&1
	[[ "$inputBufferDir" == "$current_demand_dir"* ]] && [[ "$current_demand_dir" != "" ]] && _rm_dir_broadcastPipe_page
	
	_sleep_spinlock
	
	return 0
}

# WARNING: No production use. Intended for end-user (interactive) only.
# WARNING: Untested.
# One possible benefit - a reset should happen much more quickly than a '_terminate ..." "_demand ..." cycle due to lack of spinlock sleep.
_reset_broadcastPipe_page() {
	local inputBufferDir="$1"
	
	if [[ "$inputBufferDir" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_page "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		inputBufferDir="$current_demand_dir"/inputBufferDir
	fi
	
	mkdir -p "$inputBufferDir"
	
	[[ "$inputBufferDir" == "" ]] && return 1
	[[ "$inputBufferDir" == "/" ]] && return 1
	[[ ! -e "$inputBufferDir" ]] && return 1
	
	echo > "$inputBufferDir"/reset
	echo > "$inputBufferDir"/terminate
}


# Under ideal conditions, small quantities of data may be continiously copied completely or identically (<10M).
#./ubiquitous_bash.sh _page_read ./outputBufferDir 'testfill-' "175" > ./rewrite
#cat ./testfill | pv | ./ubiquitous_bash.sh _page_write ./outputBufferDir 'testfill-' "725" "86400"
_benchmark_page() {
	_start
	
	export ub_force_limit_page_rate='false'
	local current_Write_MaxBytes=864000
	
	
	#dd if=/dev/urandom of="$safeTmp"/testfill bs=1k count=2048 > /dev/null 2>&1
	dd if=/dev/urandom of="$safeTmp"/testfill bs=1M count=4 > /dev/null 2>&1
	
	
	#>&2 echo "read"
	#_messagePlain_probe "$scriptAbsoluteLocation" _page_read "$safeTmp"/outputBufferDir 'testfill-' "$current_Read_MaxTime" \> "$safeTmp"/rewrite
	"$scriptAbsoluteLocation" _page_read "$safeTmp"/outputBufferDir 'testfill-' "$current_Read_MaxTime" > "$safeTmp"/rewrite &
	sleep 1
	
	#>&2 echo "write"
	#_messagePlain_probe _timeout 150 cat "$safeTmp"/testfill \| pv \| _timeout 15 "$scriptAbsoluteLocation" _page_write "$safeTmp"/outputBufferDir 'testfill-' "$current_Write_MaxTime" "$current_Write_MaxBytes"
	_timeout 150 cat "$safeTmp"/testfill | pv | _timeout 30 "$scriptAbsoluteLocation" _page_write "$safeTmp"/outputBufferDir 'testfill-' "$current_Write_MaxTime" "$current_Write_MaxBytes"
	
	(
	cd "$safeTmp"
	du -sh ./testfill ./rewrite
	md5sum ./testfill ./rewrite
	)
	
	_stop
}



# Modify as required for MSW/Cygwin compatibility.
_aggregator_fifo() {
	mkfifo "$@"
}



# "$1" == inputBufferDir
# "$2" == inputFilesPrefix (MUST adhere to strictly blank or 18 alphanumeric characters!)
_aggregator_read_procedure() {
	local inputBufferDir="$1"
	local inputFilesPrefix="$2"
	local service_inputBufferDir
	#if [[ "$inputBufferDir" == "" ]] || [[ "$inputBufferDir" == "" ]]
	if [[ "$inputBufferDir" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_aggregatorStatic "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		inputBufferDir="$current_demand_dir"/outputBufferDir
		! mkdir -p "$inputBufferDir" && return 1
		
		service_inputBufferDir="$current_demand_dir"/inputBufferDir
		
		#[[ "$inputFilesPrefix" == "" ]] && inputFilesPrefix='out-'
	fi
	
	[[ "$inputFilesPrefix" == "" ]] && inputFilesPrefix=$(_uid 18)
	
	
	! mkdir -p "$inputBufferDir" && return 1
	! [[ -e "$inputBufferDir" ]] && return 1
	! [[ -d "$inputBufferDir" ]] && return 1
	
	
	
	
	local currentFifo
	currentFifo="$inputBufferDir"/"$inputFilesPrefix"
	_aggregator_fifo "$currentFifo"
	
	
	#if ! [[ -e "$safeTmp" ]]
	#then
		if [[ "$ub_nohook_current_aggregator_write_stop_queue_aggregator" != 'true' ]]
		then
			export current_aggregator_read_fifo="$currentFifo"
			_stop_queue_aggregator() {
				rm -f "$current_aggregator_read_fifo" > /dev/null 2>&1
			}
		fi
	#fi
	
	# WARNING: Removal of FIFO may not occur while not connected to both input and output. Apparently 'trap' does not work here.
	# WARNING: May be incompatible with '_timeout' .
	cat "$currentFifo"
	
	rm -f "$currentFifo" > /dev/null 2>&1
	
	return 0
}



_aggregator_read_sequence() {
	_start
	
	_aggregator_read_procedure "$@"
	
	_stop
}

_aggregator_read() {
	"$scriptAbsoluteLocation" _aggregator_read_sequence "$@"
}


# "$1" == inputBufferDir (inverted, client input, service output)
# "$2" == outputBufferDir (OPTIONAL. inverted)
_aggregatorStatic_read() {
	if ! _aggregatorStatic_delayIPC_EmptyOrWaitOrReset "$2" "$1"
	then
		return 1
	fi
	_aggregator_read_procedure "$1"
	#"$scriptAbsoluteLocation" _aggregator_read_sequence "$2"
	#"$scriptAbsoluteLocation" _aggregator_read_sequence "$@"
}





_aggregator_delayIPC_isEmpty() {
	# Although this may seem inefficient, the alternatives of calling external programs, filling variables, or setting 'shopt', may also be undesirable.
	# https://www.cyberciti.biz/faq/linux-unix-shell-check-if-directory-empty/
	currentIsEmptyOut='true'
	for currentFile in "$1"/??????????????????
	do
		[[ "$currentFile" != *'??????????????????' ]] && currentIsEmptyOut='false' && break
	done
	
	[[ "$currentIsEmptyOut" == 'true' ]] && return 0
	return 1
}

_aggregator_delayIPC_isReset() {
	#&& [[ ! -e "$1"/reset ]] && [[ ! -e "$1"/terminate ]] && [[ ! -e "$1"/rmloop ]]
	# && ! _aggregator_delayIPC_isEmpty "$2"
	#[[ ! -e "$1"/attempt ]]
	
	if [[ -e "$1"/vaccancy ]] && _aggregator_delayIPC_isEmpty "$1" && _aggregator_delayIPC_isEmpty "$2"
	then
		return 0
	fi
	return 1
}


# May allow a new set of 'connections' to replace an existing (presumably broken) set of 'connections'.
# May require >>24seconds delay to allow previous (invalid) 'delay: Inter-Process Communications' to expire.
# WARNING: May not be compatible with '_skip_broadcastPipe_aggregatorStatic' .
# "$1" == inputBufferDir
# "$2" == outputBufferDir
# ATTENTION: EXAMPLE
#./lean.sh _aggregatorStatic_delayIPC_EmptyOrWaitOrReset && echo done && ./lean.sh _aggregator_write
#/lean.sh _aggregatorStatic_delayIPC_EmptyOrWaitOrReset && echo done && ./lean.sh _aggregator_read
_aggregator_delayIPC_EmptyOrWaitOrReset() {
	local inputBufferDir="$1"
	local outputBufferDir="$2"
	
	if [[ "$inputBufferDir" == "" ]] || [[ "$outputBufferDir" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_aggregator_delayIPC_EmptyOrWaitOrReset "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		# Not inverted. After all, this function will typically be called by other functions, and so uses the service convention.
		inputBufferDir="$current_demand_dir"/inputBufferDir
		outputBufferDir="$current_demand_dir"/outputBufferDir
	fi
	
	
	local currentIterations
	
	local currentFile
	local currentIsEmptyBuffer
	
	
	
	# DANGER: CAUTION: Relies on several relatively marginal assumptions regarding '_broadcastPipe_aggregatorStatic_read_procedure' algorithm and OS/kernel latency.
	
	
	# Expect 18seconds total sleep after all iterations and one attempt.
	currentIterations='0'
	currentAttempts='0'
	while [[ "$currentIterations" -lt 6 ]] && [[ "$currentAttempts" -lt 3 ]] && ! _aggregator_delayIPC_isReset "$inputBufferDir" "$outputBufferDir"
	do
		sleep 3
		let currentIterations="$currentIterations"+1
		
		if ! [[ "$currentIterations" -lt 6 ]]
		then
			if ! _aggregator_delayIPC_isReset "$inputBufferDir" "$outputBufferDir"
			then
				echo > "$inputBufferDir"/attempt.tmp
				_moveconfirm "$inputBufferDir"/attempt.tmp "$inputBufferDir"/attempt && _reset_broadcastPipe_aggregatorStatic "$inputBufferDir"
			fi
			#sleep 3
			currentIterations='0'
			let currentAttempts="$currentAttempts"+1
		fi
	done
	! _aggregator_delayIPC_isReset "$inputBufferDir" "$outputBufferDir" && return 1
	
	# WARNING: Delay must be <<24seconds .
	# Must be long enough to allow all waiting clients to 'see' the 'vaccancy' and 'empty' conditions, but not long enough to overrun the 'vaccancy' delay.
	# Delaying an entire '_sleep_spinlock' cycle may be undesirable in practice. Multiple clients will be connecting simultaneously, and external (or 'user') latencies may be much more likely than an extreme ~7seconds spinlock event from the kernel.
	#sleep 3
	#sleep 5
	sleep 7
	#_sleep_spinlock
	
	#if _aggregator_delayIPC_isReset "$inputBufferDir" "$outputBufferDir"
	#then
		rm -f "$inputBufferDir"/attempt.tmp > /dev/null 2>&1
		rm -f "$inputBufferDir"/attempt > /dev/null 2>&1
	#fi
	
	return 0
}

_aggregatorStatic_delayIPC_EmptyOrWaitOrReset() {
	_demand_dir_broadcastPipe_aggregator_delayIPC_EmptyOrWaitOrReset() {
		_demand_dir_broadcastPipe_aggregatorStatic "$@"
	}
	if ! true | _aggregator_delayIPC_EmptyOrWaitOrReset "$@"
	then
		return 1
	fi
	return 0
}





# Intended to be called by users and programs which are only able to call one other program which must accept both standard input/output connections.
# Specifically intended to be compatible with 'socat' .
# "$1" == inputBufferDir (inverted - typically output of broadcastPipe)
# "$2" == outputBufferDir (inverted - typically input of broadcastPipe)
# "$4" == inputFilesPrefix (MUST adhere to strictly blank or 18 alphanumeric characters!)
# "$4" == outputFilesPrefix (MUST adhere to strictly blank or 18 alphanumeric characters!)
_aggregator_converse_procedure() {
	local inputBufferDir="$1"
	local outputBufferDir="$2"
	if [[ "$inputBufferDir" == "" ]] || [[ "$outputBufferDir" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_aggregator_converse "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		inputBufferDir="$current_demand_dir"/outputBufferDir
		outputBufferDir="$current_demand_dir"/inputBufferDir
	fi
	
	local inputFilesPrefix="$3"
	[[ "$inputFilesPrefix" == "" ]] && inputFilesPrefix=$(_uid 18)
	
	local outputFilesPrefix="$4"
	[[ "$outputFilesPrefix" == "" ]] && outputFilesPrefix=$(_uid 18)
	
	# DANGER: Without this hook, temporary buffers may persist indefinitely!
	# CAUTION: Reset may be necessitated - testing suggests this hook does not work.
	export current_broadcastPipe_inputBufferDir="$inputBufferDir"
	export current_broadcastPipe_outputBufferDir="$outputBufferDir"
	export current_broadcastPipe_inputFilesPrefix="$inputFilesPrefix"
	export current_broadcastPipe_outputFilesPrefix="$outputFilesPrefix"
	_stop_queue_aggregator() {
		rm -f "$current_broadcastPipe_inputBufferDir"/"$current_broadcastPipe_inputFilesPrefix" > /dev/null 2>&1
		rm -f "$current_broadcastPipe_outputBufferDir"/"$current_broadcastPipe_outputFilesPrefix" > /dev/null 2>&1
		_sleep_spinlock
		rm -f "$current_broadcastPipe_inputBufferDir"/"$current_broadcastPipe_inputFilesPrefix" > /dev/null 2>&1
		rm -f "$current_broadcastPipe_outputBufferDir"/"$current_broadcastPipe_outputFilesPrefix" > /dev/null 2>&1
	}
	export ub_nohook_current_aggregator_write_stop_queue_aggregator='true'
	
	#echo "$current_broadcastPipe_outputBufferDir"/"$current_broadcastPipe_outputFilesPrefix"
	
	_aggregator_read_procedure "$inputBufferDir" "$inputFilesPrefix" &
	_aggregator_write_procedure "$outputBufferDir" "$outputFilesPrefix"
}

_aggregatorStatic_converse_noEmptyOrWaitOrReset() {
	_demand_dir_broadcastPipe_aggregator_converse() {
		_demand_dir_broadcastPipe_aggregatorStatic "$@"
	}
	_aggregator_converse_procedure "$@" 2> /dev/null
}

_aggregatorStatic_converse_EmptyOrWaitOrReset() {
	if ! _aggregatorStatic_delayIPC_EmptyOrWaitOrReset "$2" "$1" 2> /dev/null
	then
		return 1
	fi
	_aggregatorStatic_converse_noEmptyOrWaitOrReset "$@" 2> /dev/null
}

_aggregatorStatic_converse() {
	_aggregatorStatic_converse_EmptyOrWaitOrReset "$@" 2> /dev/null
}


# "$1" == outputBufferDir
# "$2" == outputFilesPrefix (MUST adhere to strictly blank or 18 alphanumeric characters!)
_aggregator_write_procedure() {
	local outputBufferDir="$1"
	local outputFilesPrefix="$2"
	#if [[ "$outputBufferDir" == "" ]] || [[ "$outputFilesPrefix" == "" ]]
	if [[ "$outputBufferDir" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_aggregatorStatic "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		outputBufferDir="$current_demand_dir"/inputBufferDir
		! mkdir -p "$outputBufferDir" && return 1
		
		#[[ "$outputFilesPrefix" == "" ]] && outputFilesPrefix='stream-'
	fi
	
	[[ "$outputFilesPrefix" == "" ]] && outputFilesPrefix=$(_uid 18)
	
	
	! mkdir -p "$outputBufferDir" && return 1
	! [[ -e "$outputBufferDir" ]] && return 1
	! [[ -d "$outputBufferDir" ]] && return 1
	
	
	
	
	local currentFifo
	currentFifo="$outputBufferDir"/"$outputFilesPrefix"
	_aggregator_fifo "$currentFifo"
	
	#if ! [[ -e "$safeTmp" ]]
	#then
		if [[ "$ub_nohook_current_aggregator_write_stop_queue_aggregator" != 'true' ]]
		then
			export current_aggregator_write_fifo="$currentFifo"
			_stop_queue_aggregator() {
				rm -f "$current_aggregator_write_fifo" > /dev/null 2>&1
			}
		fi
	#fi
	
	# WARNING: Removal of FIFO may not occur while not connected to both input and output. Apparently 'trap' does not work here.
	# WARNING: May be incompatible with '_timeout' .
	cat > "$currentFifo"
	
	rm -f "$currentFifo" > /dev/null 2>&1
	
	return 0
}



_aggregator_write_sequence() {
	_start
	
	_aggregator_write_procedure "$@" 2> /dev/null
	
	_stop
}

_aggregator_write() {
	"$scriptAbsoluteLocation" _aggregator_write_sequence "$@" 2> /dev/null
}


# "$1" == outputBufferDir (inverted, client output, service input)
# "$2" == inputBufferDir (OPTIONAL. inverted)
_aggregatorStatic_write() {
	if ! _aggregatorStatic_delayIPC_EmptyOrWaitOrReset "$1" "$2"
	then
		return 1
	fi
	_aggregator_write_procedure "$1" 2> /dev/null
	#"$scriptAbsoluteLocation" _aggregator_write_sequence "$1" 2> /dev/null
	#"$scriptAbsoluteLocation" _aggregator_write_sequence "$@" 2> /dev/null
}





# ATTENTION: Override with 'ops' or similar.
_rm_broadcastPipe_aggregatorStatic() {
	! _safePath_demand_broadcastPipe_aggregatorStatic "$1" && return 1
	! _safePath_demand_broadcastPipe_aggregatorStatic "$2" && return 1
	
	#[[ -e "$1" ]] && [[ "$1" != "" ]] && rm -f "$1"/* > /dev/null 2>&1
	[[ -e "$1" ]] && [[ "$1" != "" ]] && find "$1" -mindepth 1 -maxdepth 1 \( -type f -o -type p -o -type l \) ! -name 'terminate' ! -name 'reset' ! -name 'attempt' -delete > /dev/null 2>&1
	[[ -e "$2" ]] && [[ "$2" != "" ]] && rm -f "$2"/* > /dev/null 2>&1
	
	
	return 0
}

# ATTENTION: Override with 'ops' or similar.
_rm_broadcastPipe_aggregatorStatic_keepListen() {
	! _safePath_demand_broadcastPipe_aggregatorStatic "$1" && return 1
	! _safePath_demand_broadcastPipe_aggregatorStatic "$2" && return 1
	
	#[[ -e "$1" ]] && [[ "$1" != "" ]] && rm -f "$1"/* > /dev/null 2>&1
	[[ -e "$1" ]] && [[ "$1" != "" ]] && find "$1" -mindepth 1 -maxdepth 1 \( -type f -o -type p -o -type l \) ! -name 'terminate' ! -name 'listen' ! -name 'attempt' -delete > /dev/null 2>&1
	[[ -e "$2" ]] && [[ "$2" != "" ]] && rm -f "$2"/* > /dev/null 2>&1
	
	
	return 0
}



_jobs_terminate_aggregatorStatic_procedure() {
	currentStopJobs=$(jobs -p -r 2> /dev/null)
	# WARNING: Although usually bad practice, it is useful for the spaces between PIDs to be interpreted in this case.
	# DANGER: Apparently, it is possible for some not running background jobs to be included in the PID list.
	[[ "$currentStopJobs" != "" ]] && kill $currentStopJobs > /dev/null 2>&1
	kill "$1" > /dev/null 2>&1
	
	currentIterations='0'
	while [[ $(jobs -p -r) != "" ]] && [[ "$currentIterations" -lt '3' ]]
	do
		sleep 0.6
		let currentIterations="$currentIterations"+1
	done
	currentStopJobs=$(jobs -p -r 2> /dev/null)
	kill -KILL $currentStopJobs > /dev/null 2>&1
	kill -KILL "$1" > /dev/null 2>&1
	
	currentIterations='0'
	while [[ $(jobs -p -r) != "" ]] && [[ "$currentIterations" -lt '16' ]]
	do
		sleep 1
		let currentIterations="$currentIterations"+1
	done
}



_broadcastPipe_aggregatorStatic_read_procedure() {
	_messageNormal 'init: _broadcastPipe_aggregatorStatic_read_procedure'
	[[ "$1" == "" ]] && _stop 1
	[[ "$1" == "/" ]] && _stop 1
	[[ "$2" == "/" ]] && _stop 1
	
	local current_demand_dir
	current_demand_dir=$(_demand_dir_broadcastPipe_aggregatorStatic "$1")
	
	# May perhaps take effect when SIGTERM is received directly (eg. when SIGTERM may be sent to all processes) .
	export current_broadcastPipe_inputBufferDir="$1"
	export current_broadcastPipe_outputBufferDir="$2"
	export current_broadcastPipe_current_demand_dir="$current_demand_dir"
	_stop_queue_aggregatorStatic() {
		#_terminate_broadcastPipe_aggregatorStatic "$current_broadcastPipe_inputBufferDir" 2> /dev/null
		_terminate_broadcastPipe_fast "$current_broadcastPipe_inputBufferDir" 2> /dev/null
		sleep 1
		_rm_broadcastPipe_aggregatorStatic "$current_broadcastPipe_inputBufferDir" "$current_broadcastPipe_outputBufferDir"
		[[ "$current_broadcastPipe_inputBufferDir" == "$current_broadcastPipe_current_demand_dir"* ]] && [[ "$current_broadcastPipe_current_demand_dir" != "" ]] && _rm_dir_broadcastPipe_aggregatorStatic
		
		_sleep_spinlock
		rm -f "$current_broadcastPipe_inputBufferDir"/reset > /dev/null 2>&1
		rm -f "$current_broadcastPipe_inputBufferDir"/terminate > /dev/null 2>&1
		[[ "$current_broadcastPipe_inputBufferDir" == "$current_broadcastPipe_current_demand_dir"* ]] && [[ "$current_broadcastPipe_current_demand_dir" != "" ]] && _rm_dir_broadcastPipe_aggregatorStatic
	}
	
	
	local currentTerminate='false'
	
	while [[ ! -e "$1"/terminate ]] && [[ -d "$1" ]] && [[ "$currentTerminate" == 'false' ]]
	do
		
		
		
		local currentIterations
		
		
		_rm_broadcastPipe_aggregatorStatic "$@"
		rm -f "$1"/reset > /dev/null 2>&1
		rm -f "$1"/terminate > /dev/null 2>&1
		
		echo > "$1"/listen
		echo > "$1"/vaccancy
		echo > "$2"/vaccancy
		
		local currentInputBufferCount='0'
		local currentInputBufferCount_prev='0'
		local currentOutputBufferCount='0'
		local currentOutputBufferCount_prev='0'
		
		local currentFile
		
		
		local currentStopJobs
		
		local currentIsEmptyOut
		
		local currentPID
		
		local noJobsTwice
		
		_messagePlain_nominal ' 0 : reached loop'
		_messagePlain_probe "$1"
		_messagePlain_probe "$2"
		while [[ ! -e "$1"/terminate ]] && [[ -d "$1" ]]
		do
			_messagePlain_nominal ' 1 : loop'
			
			#rm -f "$1"/skip > /dev/null 2>&1
			
			currentInputBufferCount_prev="$currentInputBufferCount"
			currentOutputBufferCount_prev="$currentOutputBufferCount"
			#[[ $(jobs -p -r) != "" ]] && 
			while [[ "$currentInputBufferCount" == "$currentInputBufferCount_prev" ]] && [[ "$currentOutputBufferCount" == "$currentOutputBufferCount_prev" ]] && [[ ! -e "$1"/terminate ]] && [[ -d "$1" ]]
			do
				_messagePlain_nominal ' 2 : wait for change'
				
				currentInputBufferCount=0
				for currentFile in "$1"/??????????????????
				do
					_messagePlain_nominal '11 : count: currentInputBufferCount= '"$currentInputBufferCount"
					[[ "$currentFile" != *'??????????????????' ]] && let currentInputBufferCount="$currentInputBufferCount"+1
				done
				
				currentOutputBufferCount=0
				for currentFile in "$2"/??????????????????
				do
					_messagePlain_nominal '11 : count: currentOutputBufferCount= '"$currentOutputBufferCount"
					[[ "$currentFile" != *'??????????????????' ]] && let currentOutputBufferCount="$currentOutputBufferCount"+1
				done
				
				_messagePlain_probe_var currentInputBufferCount_prev
				_messagePlain_probe_var currentOutputBufferCount_prev
				_messagePlain_probe_var currentInputBufferCount
				_messagePlain_probe_var currentOutputBufferCount
				
				if ( [[ "$currentInputBufferCount" -gt 0 ]] || [[ "$currentOutputBufferCount" -gt 0 ]] ) && [[ $(jobs -p -r) == "" ]] && [[ "$currentInputBufferCount" == "$currentInputBufferCount_prev" ]] && [[ "$currentOutputBufferCount" == "$currentOutputBufferCount_prev" ]] && [[ "$noJobsTwice" == 'true' ]]
				then
					_messagePlain_warn 'obscure: 2.1: change: no jobs 2x: remove: unused pipe files'
					_rm_broadcastPipe_aggregatorStatic_keepListen "$@"
					#rm -f "$1"/skip > /dev/null 2>&1
					noJobsTwice='false'
				elif ( [[ "$currentInputBufferCount" -gt 0 ]] || [[ "$currentOutputBufferCount" -gt 0 ]] ) && [[ $(jobs -p -r) == "" ]] && [[ "$currentInputBufferCount" == "$currentInputBufferCount_prev" ]] && [[ "$currentOutputBufferCount" == "$currentOutputBufferCount_prev" ]] && [[ "$noJobsTwice" != 'true' ]]
				then
					_messagePlain_warn 'obscure: 2.1: change: no jobs 1x: set: noJobsTwice'
					noJobsTwice='true'
				fi
				
				
				# DANGER: Delay time > ~24seconds may result in unused/blocking FIFO pipes remaining (additional delay in remainder of loop is tolerable).
				# Iterations >1 may reduce CPU consumption with Cygwin/MSW , assuming file exists check is reasonably efficient.
				currentIterations='0'
				while [[ "$currentIterations" -lt '3' ]] && [[ "$currentInputBufferCount" == "$currentInputBufferCount_prev" ]] && [[ "$currentOutputBufferCount" == "$currentOutputBufferCount_prev" ]] && [[ ! -e "$1"/terminate ]] && [[ -d "$1" ]]
				do
					# If pipes are already connected, maybe delay a while longer to reduce CPU consumption.
					if [[ $(jobs -p -r) != "" ]]
					then
						_messagePlain_nominal '12 : idle: jobs: long delay'
						sleep 6
					fi
					
					# If pipes are not already connected, maybe delay a less, to improve interactivity.
					if [[ $(jobs -p -r) == "" ]]
					then
						# DANGER: CAUTION: Any 'sleep' > 3seconds (9seconds total) may break '_aggregator_delayIPC_'... .
						_messagePlain_nominal '12 : idle: no jobs: short delay'
						sleep 3
					fi
					
					let currentIterations="$currentIterations"+1
				done
			done
			#_messagePlain_warn 'obscure:  3 : done: loop: detected: new pipe files: complicated procedure: suspected failability'
			_messagePlain_good ' 3 : done: loop: detected: new pipe files'
			
			
			# ATTENTION: delay: InterProcess-Communication
			# CAUTION: Before reducing the delay (24 seconds recommended), consider that remote/peripherial may have latencies independent of any OS 'kernel', 'real-time' or otherwise!
			echo -e '\E[1;33;47m ''13 : delay: InterProcess-Communication: 24 seconds'' \E[0m'
			currentIterations='0'
			while [[ "$currentIterations" -lt 4 ]] && [[ ! -e "$1"/skip ]] && [[ ! -e "$1"/terminate ]] && [[ -d "$1" ]] && [[ "$currentOutputBufferCount" -gt 0 ]]
			#( [[ "$currentInputBufferCount" -gt 0 ]] || [[ "$currentOutputBufferCount" -gt 0 ]] )
			do
				if [[ "$currentIterations" == '0' ]]
				then
					echo > "$1"/vaccancy
					echo > "$2"/vaccancy
				fi
				
				#_messageDELAYipc
				_messagePlain_probe '13 : delay: InterProcess-Communication: 6 second iteration'
				#_messagePlain_probe '13 : delay: InterProcess-Communication: 6 second iteration: 24 seconds'
				#_messagePlain_nominal '13 : delay: InterProcess-Communication: 6 second iteration: 24 seconds'
				#echo -e '\E[1;33;47m ''13 : delay: InterProcess-Communication: 6 second iteration: 24 seconds'' \E[0m'
				sleep 6
				let currentIterations="$currentIterations"+1
			done
			if [[ ! -e "$1"/terminate ]] && [[ -d "$1" ]] && [[ "$currentOutputBufferCount" -gt 0 ]]
			then
				rm -f "$1"/vaccancy
				rm -f "$2"/vaccancy
				rm -f "$1"/attempt
				rm -f "$2"/attempt
			fi
			rm "$1"/skip > /dev/null 2>&1 && _messagePlain_good 'good: skip'
			rm -f "$1"/skip > /dev/null 2>&1
			
			currentInputBufferCount=0
			for currentFile in "$1"/??????????????????
			do
				_messagePlain_nominal '14 : count: currentInputBufferCount= '"$currentInputBufferCount"
				[[ "$currentFile" != *'??????????????????' ]] && let currentInputBufferCount="$currentInputBufferCount"+1
			done
			
			currentOutputBufferCount=0
			for currentFile in "$2"/??????????????????
			do
				_messagePlain_nominal '15 : count: currentOutputBufferCount= '"$currentOutputBufferCount"
				[[ "$currentFile" != *'??????????????????' ]] && let currentOutputBufferCount="$currentOutputBufferCount"+1
			done
			
			
			# https://stackoverflow.com/questions/25906020/are-pid-files-still-flawed-when-doing-it-right/25933330
			# https://stackoverflow.com/questions/360201/how-do-i-kill-background-processes-jobs-when-my-shell-script-exits
			
			_messagePlain_nominal ' 4 : _jobs_terminate_aggregatorStatic_procedure'
			_jobs_terminate_aggregatorStatic_procedure "$currentPID"
			
			_messagePlain_nominal ' 5 : detect: currentIsEmptyOut'
			#currentIsEmptyOut='false'
			# Although this may seem inefficient, the alternatives of calling external programs, filling variables, or setting 'shopt', may also be undesirable.
			# https://www.cyberciti.biz/faq/linux-unix-shell-check-if-directory-empty/
			currentIsEmptyOut='true'
			for currentFile in "$2"/??????????????????
			do
				if [[ "$currentFile" != *'??????????????????' ]]
				then
					_messagePlain_good '16 : detected: output pipe file'
					currentIsEmptyOut='false'
					break
				fi
			done
			_messagePlain_nominal ' 6 : decision'
			_messagePlain_probe_var currentInputBufferCount
			_messagePlain_probe_var currentOutputBufferCount
			[[ ! -e "$1"/terminate ]] && _messagePlain_probe ' 7.1: flag: missing: terminate'
			[[ -d "$1" ]] && _messagePlain_probe ' 7.2: detect: present: input directory'
			[[ "$currentIsEmptyOut" == 'false' ]] && _messagePlain_good ' 7.3: flag: detect: output pipe files'
			if [[ ! -e "$1"/terminate ]] && [[ -d "$1" ]] && [[ "$currentIsEmptyOut" == 'false' ]] && [[ "$currentInputBufferCount" -gt 0 ]] && [[ "$currentOutputBufferCount" -gt 0 ]]
			then
				_messagePlain_nominal ' 7 : ##### connect pipes #####'
				#https://unix.stackexchange.com/questions/139490/continuous-reading-from-named-pipe-cat-or-tail-f
				#https://stackoverflow.com/questions/11185771/bash-script-to-iterate-files-in-directory-and-pattern-match-filenames
				(
				for currentFile in "$1"/??????????????????
				do
					[[ "$currentFile" != *'??????????????????' ]] && cat "$currentFile" 2>/dev/null &
				done
				) | tee "$2"/?????????????????? > /dev/null 2>&1 &
				currentPID="$!"
				
				#rm -f "$1"/skip > /dev/null 2>&1
			fi
			
			_messagePlain_nominal ' 8 : repeat'
			
			# WARNING: Some processes within the subshell (ie. 'sleep' ) may allow the subshell to terminate rather than maintain a 'jobs' PID.
			_messagePlain_probe 'jobs: '$(jobs -p -r)
		done
		
		_messagePlain_nominal ' 9 : ##### terminate or reset #####'
		
		_jobs_terminate_aggregatorStatic_procedure "$currentPID"
		
		
		# WARNING: Since only one program may successfully remove a single file, that mechanism should allow only one 'broadcastPipe' process to remain in the unlikely case multiple were somehow started.
		currentTerminate='true'
		[[ -e "$1"/terminate ]] && [[ -e "$1"/reset ]] && rm "$1"/reset > /dev/null 2>&1 && rm "$1"/terminate > /dev/null 2>&1 && rm -f "$1"/listen > /dev/null 2>&1 && currentTerminate='false'
		rm -f "$1"/reset > /dev/null 2>&1
		
		# Recursive reset. Abandoned due to possibility of practical 'limit of recursion' with "bash" shell (and presumably similar as well) .
		# https://rosettacode.org/wiki/Find_limit_of_recursion
		# 'The Bash reference manual says No limit is placed on the number of recursive calls, nonetheless a segmentation fault occurs at 13777 (Bash v3.2.19 on 32bit GNU/Linux) '
		#[[ -e "$1"/terminate ]] && [[ -e "$1"/reset ]] && rm "$1"/reset > /dev/null 2>&1 && _broadcastPipe_aggregatorStatic_read_procedure "$@"
		#rm -f "$1"/reset > /dev/null 2>&1
		
	done
	
	
	rm -f "$1"/reset > /dev/null 2>&1
	rm -f "$1"/terminate > /dev/null 2>&1
	
	_rm_broadcastPipe_aggregatorStatic "$@"
	rm -f "$1"/reset > /dev/null 2>&1
	rm -f "$1"/terminate > /dev/null 2>&1
	[[ "$1" == "$current_demand_dir"* ]] && [[ "$current_demand_dir" != "" ]] && _rm_dir_broadcastPipe_aggregatorStatic
	
	_sleep_spinlock
	rm -f "$1"/terminate > /dev/null 2>&1
	[[ "$1" == "$current_demand_dir"* ]] && [[ "$current_demand_dir" != "" ]] && _rm_dir_broadcastPipe_aggregatorStatic
	
	return 0
}



# WARNING: Any unconnected pipe will block all pipes.
# WARNING: Any disconnection or new pipe will cause 'reset' of all pipes.
# "$1" == inputBufferDir
# "$2" == outputBufferDir
_broadcastPipe_aggregatorStatic_read() {
	_start
	
	_broadcastPipe_aggregatorStatic_read_procedure "$@"
	
	_stop
}










_here_rmloop_broadcastPipe_aggregatorStatic() {
	_here_header_bash_or_dash "$@"
	
	declare -f _rmloop_broadcastPipe_aggregatorStatic
	
	cat << CZXWXcRMTo8EmM8i4d
_rmloop_broadcastPipe_aggregatorStatic "\$@"

CZXWXcRMTo8EmM8i4d

}


_rmloop_broadcastPipe_aggregatorStatic() {
	while true
	do
		rm -f "$1"/rmloop > /dev/null 2>&1
		
		#sleep 1
		sleep 0.1
	done
	
}


_safePath_demand_broadcastPipe_aggregatorStatic() {
	if [[ "$1" == "$scriptLocal"* ]] && ! _if_cygwin
	then
		return 0
	fi
	if [[ "$1" == '/dev/shm/'* ]] && ! _if_cygwin
	then
		return 0
	fi
	
	
	! _safePath "$1" && _stop 1
	return 0
}

# WARNING: Deletes all existing files (to 'clear the buffers').
# "$1" == inputBufferDir
# "$2" == outputBufferDir
_demand_broadcastPipe_aggregatorStatic_sequence() {
	_start
	
	! mkdir -p "$1" && _stop 1
	! mkdir -p "$2" && _stop 1
	[[ "$1" == "" ]] && _stop 1
	[[ "$1" == "/" ]] && _stop 1
	[[ "$2" == "/" ]] && _stop 1
	if ! _safePath_demand_broadcastPipe_aggregatorStatic "$@"
	then
		_terminate_broadcastPipe_aggregatorStatic "$1"
		_stop 1
	fi
	
	_here_rmloop_broadcastPipe_aggregatorStatic "$@" > "$safeTmp"/_rmloop_broadcastPipe_aggregatorStatic
	chmod u+x "$safeTmp"/_rmloop_broadcastPipe_aggregatorStatic
	
	echo > "$1"/rmloop
	
	
	_sleep_spinlock
	
	
	! [[ -e "$1"/rmloop ]] && return 0
	! mv "$1"/rmloop "$1"/rmloop.rm > /dev/null 2>&1 && return 0
	if ! rm "$1"/rmloop.rm > /dev/null 2>&1
	then
		rm -f "$1"/rmloop.rm > /dev/null 2>&1
		return 0
	fi
	
	
	_rm_broadcastPipe_aggregatorStatic "$@"
	"$safeTmp"/_rmloop_broadcastPipe_aggregatorStatic "$@" &
	#"$scriptAbsoluteLocation" _rmloop_broadcastPipe_aggregatorStatic "$@" &
	
	
	#"$scriptAbsoluteLocation" _broadcastPipe_aggregatorStatic_read "$@" | _broadcastPipe_aggregatorStatic_write "$@"
	"$scriptAbsoluteLocation" _broadcastPipe_aggregatorStatic_read "$@"
	
	# May not be necessary. Theoretically redundant.
	local currentStopJobs
	currentStopJobs=$(jobs -p -r 2> /dev/null)
	[[ "$currentStopJobs" != "" ]] && kill "$currentStopJobs" > /dev/null 2>&1
	
	
	_sleep_spinlock
	rm -f "$1"/terminate > /dev/null 2>&1
	[[ "$1" == "$current_demand_dir"* ]] && [[ "$current_demand_dir" != "" ]] && _rm_dir_broadcastPipe_aggregatorStatic
	
	_stop
}

_demand_broadcastPipe_aggregatorStatic() {
	local inputBufferDir="$1"
	local outputBufferDir="$2"
	shift
	shift
	
	if [[ "$inputBufferDir" == "" ]] || [[ "$outputBufferDir" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_aggregatorStatic "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		inputBufferDir="$current_demand_dir"/inputBufferDir
		outputBufferDir="$current_demand_dir"/outputBufferDir
	elif [[ -e "$safeTmp" ]]
	then
		# DANGER: Without this hook, temporary "$safeTmp" directories may persist indefinitely!
		# Only hook '_stop_queue_aggregatorStatic' if called from within another 'sequence' (to cause termination of service when that 'sequence' terminates for any reason).
		export current_broadcastPipe_inputBufferDir="$inputBufferDir"
		export current_broadcastPipe_outputBufferDir="$outputBufferDir"
		_stop_queue_aggregatorStatic() {
			_terminate_broadcastPipe_aggregatorStatic "$current_broadcastPipe_inputBufferDir" 2> /dev/null
			#_terminate_broadcastPipe_fast "$current_broadcastPipe_inputBufferDir" 2> /dev/null
			#sleep 1
			_rm_broadcastPipe_aggregatorStatic "$current_broadcastPipe_inputBufferDir" "$current_broadcastPipe_outputBufferDir"
			[[ "$inputBufferDir" == "$current_demand_dir"* ]] && [[ "$current_demand_dir" != "" ]] && _rm_dir_broadcastPipe_aggregatorStatic
		}
	fi
	
	
	"$scriptAbsoluteLocation" _demand_broadcastPipe_aggregatorStatic_sequence "$inputBufferDir" "$outputBufferDir" "$@" &
	while [[ -e "$inputBufferDir"/rmloop ]]
	do
		sleep 0.1
	done
	[[ ! -e "$inputBufferDir"/listen ]] && _sleep_spinlock
	[[ ! -e "$inputBufferDir"/listen ]] && _sleep_spinlock
	[[ ! -e "$inputBufferDir"/listen ]] && return 1
	
	[[ "$ub_force_limit_aggregatorStatic_rate" == 'true' ]] && _sleep_spinlock
	#[[ "$ub_force_limit_aggregatorStatic_rate" == 'false' ]] && _sleep_spinlock
	
	disown -a -h -r
	disown -a -r
	
	return 0
}


_terminate_broadcastPipe_aggregatorStatic_fast() {
	local inputBufferDir="$1"
	
	if [[ "$inputBufferDir" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_aggregatorStatic "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		inputBufferDir="$current_demand_dir"/inputBufferDir
	fi
	
	[[ "$inputBufferDir" == "" ]] && return 1
	[[ "$inputBufferDir" == "/" ]] && return 1
	[[ ! -e "$inputBufferDir" ]] && return 1
	
	echo > "$inputBufferDir"/terminate
}

_terminate_broadcastPipe_aggregatorStatic() {
	local inputBufferDir="$1"
	
	if [[ "$inputBufferDir" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_aggregatorStatic "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		inputBufferDir="$current_demand_dir"/inputBufferDir
	fi
	
	mkdir -p "$inputBufferDir"
	
	_terminate_broadcastPipe_aggregatorStatic_fast "$@"
	_sleep_spinlock
	
	rm -f "$inputBufferDir"/terminate > /dev/null 2>&1
	[[ "$inputBufferDir" == "$current_demand_dir"* ]] && [[ "$current_demand_dir" != "" ]] && _rm_dir_broadcastPipe_aggregatorStatic
	
	_sleep_spinlock
	
	return 0
}


_reset_broadcastPipe_aggregatorStatic() {
	local inputBufferDir="$1"
	
	if [[ "$inputBufferDir" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_aggregatorStatic "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		inputBufferDir="$current_demand_dir"/inputBufferDir
	fi
	
	mkdir -p "$inputBufferDir"
	
	[[ "$inputBufferDir" == "" ]] && return 1
	[[ "$inputBufferDir" == "/" ]] && return 1
	[[ ! -e "$inputBufferDir" ]] && return 1
	
	echo > "$inputBufferDir"/reset
	echo > "$inputBufferDir"/terminate
}


_skip_broadcastPipe_aggregatorStatic() {
	local inputBufferDir="$1"
	
	if [[ "$inputBufferDir" == "" ]]
	then
		local current_demand_dir
		current_demand_dir=$(_demand_dir_broadcastPipe_aggregatorStatic "$1")
		[[ "$current_demand_dir" == "" ]] && _stop 1
		
		inputBufferDir="$current_demand_dir"/inputBufferDir
	fi
	
	mkdir -p "$inputBufferDir"
	
	[[ "$inputBufferDir" == "" ]] && return 1
	[[ "$inputBufferDir" == "/" ]] && return 1
	[[ ! -e "$inputBufferDir" ]] && return 1
	
	echo > "$inputBufferDir"/skip
}




# ATTENTION: Override with 'ops' or similar.
# Lock (if at all) the socket, not the buffers.
# Ports 6391 or alternatively 24671 preferred for one-per-machine IPC service with high-latency no-reset (ie. 'tripleBuffer' ) backend.
# Consider the limited availability of TCP/UDP port numbers not occupied by some other known purpose.
# TCP server intended for compatibility with platforms (ie. MSW/Cygwin) which may not have sufficient performance or flexibility to read/write (ie. 'tripleBuffer' ) backend directly.
# https://blog.travismclarke.com/post/socat-tutorial/
# https://fub2.github.io/powerful-socat/
# https://jdimpson.livejournal.com/tag/socat
# https://stackoverflow.com/questions/57299019/make-socat-open-port-only-on-localhost-interface
_page_socket_tcp_server() {
	_messagePlain_nominal '_page_socket_tcp_server: init: _demand_broadcastPipe_page'
	_demand_broadcastPipe_page
	
	_messagePlain_nominal '_page_socket_tcp_server: socat'
	#socat TCP-LISTEN:6391,reuseaddr,pf=ip4,fork,bind=127.0.0.1 EXEC:"$scriptAbsoluteLocation"' '"_page_converse"
	#socat TCP-LISTEN:6391,reuseaddr,pf=ip4,fork,bind=127.0.0.1 SYSTEM:'echo $HOME; ls -la'
	#socat TCP-LISTEN:6391,reuseaddr,pf=ip4,fork,bind=127.0.0.1 SYSTEM:\'\""$scriptAbsoluteLocation"\"\'' _page_converse'
	socat TCP-LISTEN:6391,reuseaddr,pf=ip4,fork,bind=127.0.0.1 EXEC:\'\""$scriptAbsoluteLocation"\"\'' _page_converse'
	
	#_messagePlain_nominal '_page_socket_tcp_server: _terminate_broadcastPipe_page'
	#_terminate_broadcastPipe_page
}

_page_socket_tcp_client() {
	socat TCP:localhost:6391 -
}









# ATTENTION: Override with 'ops' or similar.
# Lock (if at all) the socket, not the buffers.
# Ports 6391 or alternatively 24671 preferred for one-per-machine IPC service with high-latency no-reset (ie. 'tripleBuffer' ) backend.
# Consider the limited availability of TCP/UDP port numbers not occupied by some other known purpose.
# TCP server intended for compatibility with platforms (ie. MSW/Cygwin) which may not have sufficient performance or flexibility to read/write (ie. 'tripleBuffer' ) backend directly.
# 'UNIX domain socket' server not specifically intended for any known purpose and not necessarily recommended for any purpose.
# https://blog.travismclarke.com/post/socat-tutorial/
# https://fub2.github.io/powerful-socat/
# https://jdimpson.livejournal.com/tag/socat
# https://stackoverflow.com/questions/57299019/make-socat-open-port-only-on-localhost-interface
# https://en.wikipedia.org/wiki/Unix_domain_socket
_page_socket_unix_server() {
	_messagePlain_nominal '_page_socket_unix_server: _init'
	
	local current_unixAddress
	current_unixAddress=$(_demand_socket_broadcastPipe_page_unixAddress)
	
	export current_broadcastPipe_address="$current_unixAddress"
	export current_broadcastPipe_dir=$(dirname "$current_unixAddress" 2> /dev/null)
	[[ ! -e "$current_broadcastPipe_dir" ]] && return 1
	[[ ! -d "$current_broadcastPipe_dir" ]] && return 1
	_stop_queue_page() {
		rm -f "$current_broadcastPipe_address" > /dev/null 2>&1
		#rmdir "$current_broadcastPipe_dir" > /dev/null 2>&1
		#_sleep_spinlock
		rm -f "$current_broadcastPipe_address" > /dev/null 2>&1
		rmdir "$current_broadcastPipe_dir" > /dev/null 2>&1
		_rm_socket_broadcastPipe_page_unixAddress
	}
	
	
	_messagePlain_nominal '_page_socket_unix_server: _demand_broadcastPipe_page'
	_demand_broadcastPipe_page
	
	_messagePlain_nominal '_page_socket_unix_server: socat'
	#socat TCP-LISTEN:6391,reuseaddr,pf=ip4,fork,bind=127.0.0.1 EXEC:"$scriptAbsoluteLocation"' '"_page_converse"
	#socat TCP-LISTEN:6391,reuseaddr,pf=ip4,fork,bind=127.0.0.1 SYSTEM:'echo $HOME; ls -la'
	#socat TCP-LISTEN:6391,reuseaddr,pf=ip4,fork,bind=127.0.0.1 SYSTEM:\'\""$scriptAbsoluteLocation"\"\'' _page_converse'
	#socat TCP-LISTEN:6391,reuseaddr,pf=ip4,fork,bind=127.0.0.1 EXEC:\'\""$scriptAbsoluteLocation"\"\'' _page_converse'
	
	socat UNIX-LISTEN:"$current_broadcastPipe_dir"/unix.sock,fork EXEC:\'\""$scriptAbsoluteLocation"\"\'' _page_converse'
	
	
	#_messagePlain_nominal '_page_socket_unix_server: _terminate_broadcastPipe_page'
	#_terminate_broadcastPipe_page
	
	return 0
}

_page_socket_unix_client() {
	local current_unixAddress
	current_unixAddress=$(_demand_socket_broadcastPipe_page_unixAddress)
	
	#socat TCP:localhost:6391 -
	socat UNIX-CONNECT:"$current_unixAddress" -
	
	return 0
}










# ATTENTION: Override with 'ops' or similar.
# Lock (if at all) the socket, not the buffers.
# Ports 6392 or alternatively 24672 preferred for one-per-machine IPC service with low-latency frequent-reset (ie. 'aggregatorStatic' ) backend.
# Consider the limited availability of TCP/UDP port numbers not occupied by some other known purpose.
# TCP server intended for compatibility with platforms (ie. MSW/Cygwin) which may not have sufficient performance or flexibility to frequent-reset (ie. 'aggregatorStatic' ) backend directly.
# https://blog.travismclarke.com/post/socat-tutorial/
# https://fub2.github.io/powerful-socat/
# https://jdimpson.livejournal.com/tag/socat
# https://stackoverflow.com/questions/57299019/make-socat-open-port-only-on-localhost-interface
_aggregatorStatic_socket_tcp_server() {
	_messagePlain_nominal '_aggregatorStatic_socket_tcp_server: init: _demand_broadcastPipe_aggregatorStatic'
	_demand_broadcastPipe_aggregatorStatic
	
	_messagePlain_nominal '_aggregatorStatic_socket_tcp_server: socat'
	socat TCP-LISTEN:6392,reuseaddr,pf=ip4,fork,bind=127.0.0.1 EXEC:\'\""$scriptAbsoluteLocation"\"\'' _aggregatorStatic_converse'
	
	#_messagePlain_nominal '_aggregatorStatic_socket_tcp_server: _terminate_broadcastPipe_aggregatorStatic'
	#_terminate_broadcastPipe_aggregatorStatic
}

_aggregatorStatic_socket_tcp_client() {
	socat TCP:localhost:6392 -
}









# ATTENTION: Override with 'ops' or similar.
# Lock (if at all) the socket, not the buffers.
# Ports 6392 or alternatively 24672 preferred for one-per-machine IPC service with low-latency frequent-reset (ie. 'aggregatorStatic' ) backend.
# Consider the limited availability of TCP/UDP port numbers not occupied by some other known purpose.
# TCP server intended for compatibility with platforms (ie. MSW/Cygwin) which may not have sufficient performance or flexibility to frequent-reset (ie. # 'UNIX domain socket' server not specifically intended for any known purpose and not necessarily recommended for any purpose.
# https://blog.travismclarke.com/post/socat-tutorial/
# https://fub2.github.io/powerful-socat/
# https://jdimpson.livejournal.com/tag/socat
# https://stackoverflow.com/questions/57299019/make-socat-open-port-only-on-localhost-interface
# https://en.wikipedia.org/wiki/Unix_domain_socket
_aggregatorStatic_socket_unix_server() {
	_messagePlain_nominal '_aggregatorStatic_socket_unix_server: _init'
	
	local current_unixAddress
	current_unixAddress=$(_demand_socket_broadcastPipe_aggregatorStatic_unixAddress)
	
	export current_broadcastPipe_address="$current_unixAddress"
	export current_broadcastPipe_dir=$(dirname "$current_unixAddress" 2> /dev/null)
	[[ ! -e "$current_broadcastPipe_dir" ]] && return 1
	[[ ! -d "$current_broadcastPipe_dir" ]] && return 1
	_stop_queue_aggregatorStatic() {
		rm -f "$current_broadcastPipe_address" > /dev/null 2>&1
		#rmdir "$current_broadcastPipe_dir" > /dev/null 2>&1
		#_sleep_spinlock
		rm -f "$current_broadcastPipe_address" > /dev/null 2>&1
		rmdir "$current_broadcastPipe_dir" > /dev/null 2>&1
		_rm_socket_broadcastPipe_aggregatorStatic_unixAddress
	}
	
	
	_messagePlain_nominal '_aggregatorStatic_socket_unix_server: _demand_broadcastPipe_aggregatorStatic'
	_demand_broadcastPipe_aggregatorStatic
	
	_messagePlain_nominal '_aggregatorStatic_socket_unix_server: socat'
	socat UNIX-LISTEN:"$current_broadcastPipe_dir"/unix.sock,fork EXEC:\'\""$scriptAbsoluteLocation"\"\'' _aggregatorStatic_converse'
	
	
	#_messagePlain_nominal '_aggregatorStatic_socket_unix_server: _terminate_broadcastPipe_aggregatorStatic'
	#_terminate_broadcastPipe_aggregatorStatic
	
	return 0
}

_aggregatorStatic_socket_unix_client() {
	local current_unixAddress
	current_unixAddress=$(_demand_socket_broadcastPipe_aggregatorStatic_unixAddress)
	
	socat UNIX-CONNECT:"$current_unixAddress" -
	
	return 0
}











# Create Read Update Delete
# "$scriptLocal"/ops-ubdb.sh

# Reads a file or directory.
# Writes a file.


_db_list_var() {
	( set -o posix ; set )
	return
	
	#if type -p printenv > /dev/null 2>&1
	#then
		#printenv "$@"
		#return
	#elif type -p env > /dev/null 2>&1
	#then
		#env "$@"
		#return
	#fi
	#return 1
}

_db_filter_characters() {
	tr -d '(){}<>$:;&|#?!@%^*,`\t\\'
}

# "$1" == grepPattern
_db_filter_identifier() {
	grep '^ubdb_'"$ubiquitousBashID"'_'"$1" | _db_filter_characters
}

_db_reinit() {
	# https://stackoverflow.com/questions/13823706/capture-multiline-output-as-array-in-bash
	local currentVarList
	currentVarList=($(_db_list_var | cut -f1 -d\= | _db_filter_identifier "$1"))
	
	#local currentLine
	#_db_list_var | cut -f1 -d\= | _db_filter_identifier "$1" | while IFS='' read -r currentLine || [[ -n "$currentLine" ]]; do
		#_messagePlain_probe_var "$currentLine"
		
		
		#_messagePlain_probe_cmd declare -x -g "$currentLine"=''
		
		#eval export "$currentLine"=''
		#eval unset "$currentLine"
		
		#_messagePlain_probe_var "$currentLine"
		
		
		
		
	#done | _db_filter_characters
	
	currentVarList+=("$currentLine")
	for currentLine in "${currentVarList[@]}"
	do
		if ! [[ "$currentLine" == "" ]] && ! [[ "$currentLine" == "\$" ]]
		then
			#_messagePlain_probe "$currentLine"
			
			#_messagePlain_probe_var "$currentLine"
			
			declare -x -g "$currentLine"=''
			eval export "$currentLine"=''
			eval unset "$currentLine"
			
			#_messagePlain_probe_var "$currentLine"
		fi
	done
	
}


# Internal use intended - called by '_db_write' .
_demand_db() {
	local current_db="$scriptLocal"/ops-db.sh
	[[ "$ub_db_file" != "" ]] && current_db="$ub_db_file"
	
	! [[ -e "$current_db" ]] && echo -e -n '' >> "$current_db"
	
	# NOT VALID. Create directories (and files within) directly using mkdir/echo .
	[[ -d "$current_db" ]] && return 1
	
	
	
	! [[ -e "$current_db" ]] && return 1
	return 0
}




_db_importSource() {
	# https://stackoverflow.com/questions/28783509/override-a-builtin-command-with-an-alias
	
	declare() {
		builtin declare -g "$@"
	}
	
	
	# https://unix.stackexchange.com/questions/160256/can-you-source-a-here-document
	source <( cat "$1" | _db_filter_characters )
	#. "$1"
	
	unset -f declare > /dev/null 2>&1
	
	return 0
}




_db_source() {
	local current_db="$scriptLocal"/ops-db.sh
	[[ "$ub_db_file" != "" ]] && current_db="$ub_db_file"
	! [[ -e "$current_db" ]] && return 1
	
	if [[ -d "$current_db" ]]
	then
		# Not yet implemented.
		return 1
	else
		_db_importSource "$current_db"
	fi
}

# "$1" == grepPattern
# "$ub_db_file"
_db_enumerate() {
	local currentLine
	#local processedLine
	#local currentVarName
	#local processedVarName
	
	local currentLineValue
	
	_db_list_var | cut -f1 -d\= | _db_filter_identifier "$1" | while IFS='' read -r currentLine || [[ -n "$currentLine" ]]; do
		currentLineValue=$(eval _safeEcho "\$"$currentLine"")
		[[ "$currentLineValue" == "" ]] && continue
		
		#processedLine=$(declare -p "$currentLine")
		
		# ATTENTION: OPTIONAL - always export variables (recommended)
		# 'declare -x' apparently causes value of variable to be dropped
		export "$currentLine"
		#declare -x "$currentLine"
		
		declare -p "$currentLine"
	done | _db_filter_characters
}





_db_read() {
	_db_reinit
	_db_source
	#_db_enumerate ""
}


_db_show() {
	_db_read
	_db_enumerate "$1"
}



_db_write_sequence() {
	_start
	
	local current_db="$scriptLocal"/ops-db.sh
	[[ "$ub_db_file" != "" ]] && current_db="$ub_db_file"
	#! [[ -e "$current_db" ]] && return 1
	
	# INVALID.
	[[ -d "$current_db" ]] && return 1
	
	
	local currentEmptyUID=$(_uid)
	
	echo -e -n '' >> "$current_db"."$currentEmptyUID"
	if ! _moveconfirm "$current_db"."$currentEmptyUID" "$current_db".lock
	then
		! rm "$current_db"."$currentEmptyUID" > /dev/null 2>&1 && _stop 255
		rm -f "$current_db"."$currentEmptyUID" > /dev/null 2>&1
		_stop 1
	fi
	
	# Read in a list of variables.
	_demand_db
	_db_read
	_db_importSource "$1"
	
	_db_enumerate | cat - > "$safeTmp"/db_input_replacement_tmp
	
	! _moveconfirm "$current_db" "$current_db".obsolete && _stop 1
	! _moveconfirm "$safeTmp"/db_input_replacement_tmp "$current_db" && _stop 1
	! rm "$current_db".obsolete && _stop 255
	! rm "$current_db".lock > /dev/null 2>&1 && _stop 255
	
	_stop 0
}


# "$1" == db_input_file (recommended: "$safeTmp"/db_input )
_db_write() {
	# More than 50 repeats/recursions is extremely unreasonable under expected loads.
	[[ "$ub_db_write_currentRecursive" -gt 50 ]] && return 1
	[[ "$ub_db_write_currentRecursive" == "" ]] && export ub_db_write_currentRecursive='0'
	
	
	if ! "$scriptAbsoluteLocation" _db_write_sequence "$1"
	then
		let ub_db_write_currentRecursive="$ub_db_write_currentRecursive"+1
		local currentDelay
		local currentDelayTenths
		let currentDelay="$RANDOM"%3
		let currentDelayTenths="$RANDOM"%10
		#echo "$currentDelay"."$currentDelayTenths"
		sleep "$currentDelay"."$currentDelayTenths"
		
		_db_write "$@"
		
		return 0
	fi
	
	return 0
}


_db_rm() {
	local current_db="$scriptLocal"/ops-db.sh
	[[ "$ub_db_file" != "" ]] && current_db="$ub_db_file"
	! [[ -e "$current_db" ]] && return 1
	
	if [[ -d "$current_db" ]]
	then
		# NOT VALID. Remove directories (and files within) directly using rmdir/_safeRMR/rm .
		return 1
	else
		rm -f "$current_db" > /dev/null 2>&1
		[[ -e "$current_db" ]] && return 1
		return 0
	fi
	return 1
}









_interactive_pipe_procedure() {
	[[ ! -e "$1" ]] && return 1
	[[ ! -d "$1" ]] && return 1
	
	local currentExitStatus=1
	
	_aggregator_fifo "$1"/p0
	_aggregator_fifo "$1"/p1
	_aggregator_fifo "$1"/p2
	
	
	bash -s -l -i 0<"$1"/p0 1>"$1"/p1 2>"$1"/p2
	currentExitStatus="$?"
	
	
	rm -f "$1"/p0 > /dev/null 2>&1
	rm -f "$1"/p1 > /dev/null 2>&1
	rm -f "$1"/p2 > /dev/null 2>&1
	rmdir "$1" > /dev/null 2>&1
	
	return "$currentExitStatus"
}

_interactive_pipe_sequence() {
	local currentPipeUID=$(_uid)
	[[ "$ub_force_interactive_pipe_id" != "" ]] && currentPipeUID="$ub_force_interactive_pipe_id"
	local currentPipeDir="$safeTmp"/interactive_pipe_"$currentPipeUID"
	#[[ "$ub_force_interactive_pipe_id" != "" ]] && currentPipeDir="$currentSub_safeTmp"/interactive_pipe_"$currentPipeUID"
	_safeEcho_newline "$currentPipeDir"
	
	_start
	
	[[ ! -e "$safeTmp" ]] && return 1
	[[ ! -d "$safeTmp" ]] && return 1
	mkdir -p "$currentPipeDir"
	[[ ! -e "$currentPipeDir" ]] && return 1
	[[ ! -d "$currentPipeDir" ]] && return 1
	
	_interactive_pipe_procedure "$currentPipeDir"
	
	_stop
}

# CAUTION: Requires calling 'sequence' not to run "_stop" until terminal is no longer needed.
# WARNING: Untested.
_demand_interactive_pipe_procedure() {
	true | "$scriptAbsoluteLocation" --devenv _interactive_pipe_sequence "$currentPipeDir" &
	
	disown -h "$!"
	
	sleep 7
}

# Intended to allow lower-latency access to internal commands, as well as their responses, such as through a 'physical' 'terminal emulator' . Especially including access to other 'queue' InterProcess-Communication procedures, and to procedures which communicate through such a bus.
# In practice, this approach has limitations.
# An error message will be displayed if the pipes are connected to after the 'parent' process has exited .
# Keyboard interactive programs (eg. vim) are unusable.
# Much 'noise' is present, likely requiring specialized text parsing of commands and responses, as would be expected of a more elaborate protocol.
_demand_interactive_pipe() {
	true | "$scriptAbsoluteLocation" _interactive_pipe_sequence &
	
	disown -h "$!"
	
	sleep 7
}


# ./ubiquitous_bash.sh _interactive_client_pipe ./w_*/interactive_pipe_??????????????????
_interactive_client_pipe() {
	[[ ! -e "$1"/p0 ]] && return 1
	[[ ! -e "$1"/p1 ]] && return 1
	#[[ ! -e "$1"/p2 ]] && return 1
	cat "$1"/p1 & [[ -e "$1"/p2 ]] && cat "$1"/p2 >&2 & cat > "$1"/p0
}


_interactive_pipe_konsole() {
	# Force 'known' sessionid and safeTmp of next "$scriptAbsoluteLocation" .
	export ub_force_sessionid=$(_uid)
	export ub_force_interactive_pipe_id=$(_uid)
	local currentSub_safeTmp=$(
		export sessionid="$ub_force_sessionid"
		_get_ub_globalVars_sessionDerived
		_safeEcho "$safeTmp"
	)
	
	local currentPipeUID=$(_uid)
	[[ "$ub_force_interactive_pipe_id" != "" ]] && currentPipeUID="$ub_force_interactive_pipe_id"
	local currentPipeDir="$safeTmp"/interactive_pipe_"$currentPipeUID"
	[[ "$ub_force_interactive_pipe_id" != "" ]] && currentPipeDir="$currentSub_safeTmp"/interactive_pipe_"$currentPipeUID"
	_safeEcho_newline "$currentPipeDir" > /dev/null 2>&1
	
	
	# demand ...
	_demand_interactive_pipe > /dev/null 2>&1
	
	
	# Connect to known pipe location.
	set +m
	konsole -e "$scriptAbsoluteLocation" _interactive_client_pipe "$currentPipeDir" > /dev/null 2>&1
	#sleep 7
	set -m
}








# TODO: An implementation using 'tmux' or 'GNU Screen' may be more capable.


_test_interactive_tmux() {
	_getDep tmux
}

_test_interactive_screen() {
	_getDep screen
}











#####Local Environment Management (Resources)

#_prepare_prog() {
#	true
#}

_extra() {
	true
}

_prepare_abstract() {
	! mkdir -p "$abstractfs_root" && exit 1
	chmod 0700 "$abstractfs_root" > /dev/null 2>&1
	! chmod 700 "$abstractfs_root" && exit 1
	
	if _if_cygwin
	then
		if ! chown "$USER":None "$abstractfs_root" > /dev/null 2>&1
		then
			! chown "$USER" "$abstractfs_root" && exit 1
		fi
	else
		if ! chown "$USER":"$USER" "$abstractfs_root" > /dev/null 2>&1
		then
			! /sbin/chown "$USER" "$abstractfs_root" && exit 1
		fi
	fi
	
	
	
	
	! mkdir -p "$abstractfs_lock" && exit 1
	chmod 0700 "$abstractfs_lock" > /dev/null 2>&1
	! chmod 700 "$abstractfs_lock" && exit 1
	
	if _if_cygwin
	then
		if ! chown "$USER":None "$abstractfs_lock" > /dev/null 2>&1
		then
			! chown "$USER" "$abstractfs_lock" && exit 1
		fi
	else
		if ! chown "$USER":"$USER" "$abstractfs_lock" > /dev/null 2>&1
		then
			! /sbin/chown "$USER" "$abstractfs_lock" && exit 1
		fi
	fi
}

_prepare() {
	
	! mkdir -p "$safeTmp" && exit 1
	
	! mkdir -p "$shortTmp" && exit 1
	
	! mkdir -p "$logTmp" && exit 1
	
	[[ "$*" != *scriptLocal_mkdir_disable* ]] && ! mkdir -p "$scriptLocal" && exit 1
	
	! mkdir -p "$bootTmp" && exit 1
	
	# WARNING: No production use. Not guaranteed to be machine readable.
	[[ "$tmpSelf" != "$scriptAbsoluteFolder" ]] && echo "$tmpSelf" 2> /dev/null > "$scriptAbsoluteFolder"/__d_$(echo "$sessionid" | head -c 16)
	
	#_prepare_abstract
	
	_extra
	_tryExec "_prepare_prog"
}

#####Local Environment Management (Instancing)

#_start_prog() {
#	true
#}

# ATTENTION: Consider carefully, override with "ops".
# WARNING: Unfortunate, but apparently necessary, workaround for script termintaing while "sleep" or similar run under background.
_start_stty_echo() {
	#true
	
	#stty echo --file=/dev/tty > /dev/null 2>&1
	
	export ubFoundEchoStatus=$(stty --file=/dev/tty -g 2>/dev/null)
}

_start() {
	_start_stty_echo
	
	_prepare "$@"
	
	#touch "$varStore"
	#. "$varStore"
	
	echo $$ > "$safeTmp"/.pid
	echo "$sessionid" > "$safeTmp"/.sessionid
	_embed_here > "$safeTmp"/.embed.sh
	chmod 755 "$safeTmp"/.embed.sh
	
	_tryExec "_start_prog"
}

#_saveVar_prog() {
#	true
#}

_saveVar() {
	true
	#declare -p varName > "$varStore"
	
	_tryExec "_saveVar_prog"
}

#_stop_prog() {
#	true
#}

# ATTENTION: Consider carefully, override with "ops".
# WARNING: Unfortunate, but apparently necessary, workaround for script termintaing while "sleep" or similar run under background.
_stop_stty_echo() {
	#true
	
	#stty echo --file=/dev/tty > /dev/null 2>&1
	
	[[ "$ubFoundEchoStatus" != "" ]] && stty --file=/dev/tty "$ubFoundEchoStatus" 2> /dev/null
}

# DANGER: Use of "_stop" must NOT require successful "_start". Do NOT include actions which would not be safe if "_start" was not used or unsuccessful.
_stop() {
	_stop_stty_echo
	
	_tryExec "_stop_prog"
	
	_tryExec "_stop_queue_page"
	_tryExec "_stop_queue_aggregatorStatic"
	
	_preserveLog
	
	#Kill process responsible for initiating session. Not expected to be used normally, but an important fallback.
	local ub_stop_pid
	if [[ -e "$safeTmp"/.pid ]]
	then
		ub_stop_pid=$(cat "$safeTmp"/.pid 2> /dev/null)
		if [[ $$ != "$ub_stop_pid" ]]
		then
			pkill -P "$ub_stop_pid" > /dev/null 2>&1
			kill "$ub_stop_pid" > /dev/null 2>&1
		fi
	fi
	#Redundant, as this usually resides in "$safeTmp".
	rm -f "$pidFile" > /dev/null 2>&1
	
	
	# https://stackoverflow.com/questions/25906020/are-pid-files-still-flawed-when-doing-it-right/25933330
	# https://stackoverflow.com/questions/360201/how-do-i-kill-background-processes-jobs-when-my-shell-script-exits
	local currentStopJobs
	currentStopJobs=$(jobs -p -r 2> /dev/null)
	# WARNING: Although usually bad practice, it is useful for the spaces between PIDs to be interpreted in this case.
	# DANGER: Apparently, it is possible for some not running background jobs to be included in the PID list.
	[[ "$currentStopJobs" != "" ]] && kill $currentStopJobs > /dev/null 2>&1
	
	
	if [[ -e "$scopeTmp" ]] && [[ -e "$scopeTmp"/.pid ]] && [[ "$$" == $(cat "$scopeTmp"/.pid 2>/dev/null) ]]
	then
		#Symlink, or nonexistent.
		rm -f "$ub_scope" > /dev/null 2>&1
		#Only created if needed by scope.
		[[ -e "$scopeTmp" ]] && _safeRMR "$scopeTmp"
	fi
	
	#Only created if needed by query.
	[[ -e "$queryTmp" ]] && _safeRMR "$queryTmp"
	
	#Only created if needed by engine.
	[[ -e "$engineTmp" ]] && _safeRMR "$engineTmp"
	
	_tryExec _rm_instance_metaengine
	_tryExec _rm_instance_channel
	
	_safeRMR "$shortTmp"
	_safeRMR "$safeTmp"
	
	[[ -e "$safeTmp" ]] && sleep 0.1 && _safeRMR "$safeTmp"
	[[ -e "$safeTmp" ]] && sleep 0.3 && _safeRMR "$safeTmp"
	[[ -e "$safeTmp" ]] && sleep 1 && _safeRMR "$safeTmp"
	[[ -e "$safeTmp" ]] && sleep 3 && _safeRMR "$safeTmp"
	[[ -e "$safeTmp" ]] && sleep 3 && _safeRMR "$safeTmp"
	[[ -e "$safeTmp" ]] && sleep 3 && _safeRMR "$safeTmp"
	
	_tryExec _rm_instance_fakeHome
	
	#Optionally always try to remove any systemd shutdown hook.
	#_tryExec _unhook_systemd_shutdown
	
	[[ "$tmpSelf" != "$scriptAbsoluteFolder" ]] && [[ "$tmpSelf" != "/" ]] && [[ -e "$tmpSelf" ]] && rmdir "$tmpSelf" > /dev/null 2>&1
	rm -f "$scriptAbsoluteFolder"/__d_$(echo "$sessionid" | head -c 16) > /dev/null 2>&1
	
	_stop_stty_echo
	if [[ "$1" != "" ]]
	then
		exit "$1"
	else
		exit 0
	fi
}

#Do not overload this unless you know why you need it instead of _stop_prog.
#_stop_emergency_prog() {
#	true
#}

#Called upon SIGTERM or similar signal.
_stop_emergency() {
	[[ "$noEmergency" == true ]] && _stop "$1"
	
	export EMERGENCYSHUTDOWN=true
	
	#Not yet using _tryExec since this function would typically result from user intervention, or system shutdown, both emergency situations in which an error message would be ignored if not useful. Higher priority is guaranteeing execution if needed and available.
	_tryExec "_closeChRoot_emergency"
	
	#Daemon uses a separate instance, and will not be affected by previous actions, possibly even if running in the foreground.
	#jobs -p >> "$daemonPidFile" #Could derrange the correct order of descendent job termination.
	_tryExec _killDaemon
	
	_tryExec _stop_virtLocal
	
	_tryExec "_stop_emergency_prog"
	
	_stop "$1"
	
}

_waitFile() {
	
	[[ -e "$1" ]] && sleep 1
	[[ -e "$1" ]] && sleep 9
	[[ -e "$1" ]] && sleep 27
	[[ -e "$1" ]] && sleep 81
	[[ -e "$1" ]] && _return 1
	
	return 0
}

#Wrapper. If lock file is present, waits for unlocking operation to complete successfully, then reports status.
#"$1" == checkFile
#"$@" == wait command and parameters
_waitFileCommands() {
	local waitCheckFile
	waitCheckFile="$1"
	shift
	
	if [[ -e "$waitCheckFile" ]]
	then
		local waitFileCommandStatus
		
		"$@"
		
		waitFileCommandStatus="$?"
		
		if [[ "$waitFileCommandStatus" != "0" ]]
		then
			return "$waitFileCommandStatus"
		fi
		
		[[ -e "$waitCheckFile" ]] && return 1
		
	fi
	
	return 0
}

#$1 == command to execute if scriptLocal path has changed, typically remove another lock file
_pathLocked() {
	[[ ! -e "$lock_pathlock" ]] && echo "k3riC28hQRLnjgkwjI" > "$lock_pathlock"
	[[ ! -e "$lock_pathlock" ]] && return 1
	
	local lockedPath
	lockedPath=$(cat "$lock_pathlock")
	
	if [[ "$lockedPath" != "$scriptLocal" ]]
	then
		rm -f "$lock_pathlock" > /dev/null 2>&1
		[[ -e "$lock_pathlock" ]] && return 1
		
		echo "$scriptLocal" > "$lock_pathlock"
		[[ ! -e "$lock_pathlock" ]] && return 1
		
		if [[ "$1" != "" ]]
		then
			"$@"
			[[ "$?" != "0" ]] && return 1
		fi
		
	fi
	
	return 0
}

_readLocked() {
	mkdir -p "$bootTmp"
	
	local rebootToken
	rebootToken=$(cat "$1" 2> /dev/null)
	
	#Remove miscellaneous files if appropriate.
	if [[ -d "$bootTmp" ]] && ! [[ -e "$bootTmp"/"$rebootToken" ]]
	then
		rm -f "$scriptLocal"/*.log && rm -f "$scriptLocal"/imagedev && rm -f "$scriptLocal"/WARNING
		
		[[ -e "$lock_quicktmp" ]] && sleep 0.1 && [[ -e "$lock_quicktmp" ]] && rm -f "$lock_quicktmp"
	fi
	
	! [[ -e "$1" ]] && return 1
	##Lock file exists.
	
	if [[ -d "$bootTmp" ]]
	then
		if ! [[ -e "$bootTmp"/"$rebootToken" ]]
		then
			##Lock file obsolete.
			
			#Remove old lock.
			rm -f "$1" > /dev/null 2>&1
			return 1
		fi
		
		##Lock file and token exists.
		return 0
	fi
	
	##Lock file exists, token cannot be found.
	return 0
	
	
	
}

#Using _readLocked before any _createLocked operation is strongly recommended to remove any lock from prior UNIX session (ie. before latest reboot).
_createLocked() {
	[[ "$uDEBUG" == true ]] && caller 0 >> "$scriptLocal"/lock.log
	[[ "$uDEBUG" == true ]] && echo -e '\t'"$sessionid"'\t'"$1" >> "$scriptLocal"/lock.log
	
	mkdir -p "$bootTmp"
	
	! [[ -e "$bootTmp"/"$sessionid" ]] && echo > "$bootTmp"/"$sessionid"
	
	# WARNING Recommend setting this to a permanent value when testing critical subsystems, such as with _userChRoot related operations.
	local lockUID="$(_uid)"
	
	echo "$sessionid" > "$lock_quicktmp"_"$lockUID"
	
	mv -n "$lock_quicktmp"_"$lockUID" "$1" > /dev/null 2>&1
	
	if [[ -e "$lock_quicktmp"_"$lockUID" ]]
	then
		[[ "$uDEBUG" == true ]] && echo -e '\t'FAIL >> "$scriptLocal"/lock.log
		rm -f "$lock_quicktmp"_"$lockUID" > /dev/null 2>&1
		return 1
	fi
	
	rm -f "$lock_quicktmp"_"$lockUID" > /dev/null 2>&1
	return 0
}

_resetLocks() {
	
	_readLocked "$lock_open"
	_readLocked "$lock_opening"
	_readLocked "$lock_closed"
	_readLocked "$lock_closing"
	_readLocked "$lock_instance"
	_readLocked "$lock_instancing"
	
}

_checkSpecialLocks() {
	local localSpecialLock
	
	localSpecialLock="$specialLock"
	[[ "$1" != "" ]] && localSpecialLock="$1"
	
	local currentLock
	
	for currentLock in "${specialLocks[@]}"
	do
		[[ "$currentLock" == "$localSpecialLock" ]] && continue
		_readLocked "$currentLock" && return 0
	done
	
	return 1
}

#Wrapper. Operates lock file for mounting shared resources (eg. persistent virtual machine image). Avoid if possible.
#"$1" == waitOpen function && shift
#"$@" == wrapped function and parameters
#"$specialLock" == additional lockfile to write
_open_sequence() {
	if _readLocked "$lock_open"
	then
		_checkSpecialLocks && return 1
		return 0
	fi
	
	_readLocked "$lock_closing" && return 1
	
	if _readLocked "$lock_opening"
	then
		if _waitFileCommands "$lock_opening" "$1"
		then
			_readLocked "$lock_open" || return 1
			return 0
		else
			return 1
		fi
	fi
	
	_createLocked "$lock_opening" || return 1
	
	shift
	
	echo "LOCKED" > "$scriptLocal"/WARNING
	
	"$@"
	
	if [[ "$?" == "0" ]]
	then
		_createLocked "$lock_open" || return 1
		
		if [[ "$specialLock" != "" ]]
		then
			_createLocked "$specialLock" || return 1
		fi
		
		rm -f "$lock_opening"
		return 0
	fi
	
	return 1
}

_open() {
	local returnStatus
	
	_open_sequence "$@"
	returnStatus="$?"
	
	export specialLock
	specialLock=""
	export specialLock
	
	return "$returnStatus"
}

#Wrapper. Operates lock file for shared resources (eg. persistent virtual machine image). Avoid if possible.
#"$1" == <"--force"> && shift
#"$1" == waitClose function && shift
#"$@" == wrapped function and parameters
#"$specialLock" == additional lockfile to remove
_close_sequence() {
	local closeForceEnable
	closeForceEnable=false
	
	if [[ "$1" == "--force" ]]
	then
		closeForceEnable=true
		shift
	fi
	
	if ! _readLocked "$lock_open" && [[ "$closeForceEnable" != "true" ]]
	then
		return 0
	fi
	
	if [[ "$specialLock" != "" ]] && [[ -e "$specialLock" ]] && ! _readLocked "$specialLock" && [[ "$closeForceEnable" != "true" ]]
	then
		return 1
	fi
	
	_checkSpecialLocks && return 1
	
	if _readLocked "$lock_closing" && [[ "$closeForceEnable" != "true" ]]
	then
		if _waitFileCommands "$lock_closing" "$1"
		then
			return 0
		else
			return 1
		fi
	fi
	
	if [[ "$closeForceEnable" != "true" ]]
	then
		_createLocked "$lock_closing" || return 1
	fi
	! _readLocked "$lock_closing" && _createLocked "$lock_closing"
	
	shift
	
	"$@"
	
	if [[ "$?" == "0" ]]
	then
		#rm -f "$lock_open" || return 1
		rm -f "$lock_open"
		[[ -e "$lock_open" ]] && return 1
		
		if [[ "$specialLock" != "" ]] && [[ -e "$specialLock" ]]
		then
			#rm -f "$specialLock" || return 1
			rm -f "$specialLock"
			[[ -e "$specialLock" ]] && return 1
		fi
		
		rm -f "$lock_closing"
		rm -f "$scriptLocal"/WARNING
		return 0
	fi
	
	return 1
}

_close() {
	local returnStatus
	
	_close_sequence "$@"
	returnStatus="$?"
	
	export specialLock
	specialLock=""
	export specialLock
	
	return "$returnStatus"
}

#"$1" == variable name to preserve
#shift
#"$1" == variable data to preserve
#shift
#"$@" == function to prepare other variables
_preserveVar() {
	local varNameToPreserve
	varNameToPreserve="$1"
	shift
	
	local varDataToPreserve
	varDataToPreserve="$1"
	shift
	
	"$@"
	
	[[ "$varNameToPreserve" == "" ]] && return
	[[ "$varDataToPreserve" == "" ]] && return
	
	export "$varNameToPreserve"="$varDataToPreserve"
	
	return
}


#####Installation

_installation_nonet_default() {
	if [[ "$nonet" != 'false' ]]
	then
		[[ "$scriptAbsoluteFolder" == /media/"$USER"* ]] && [[ -e /media/"$USER" ]] && export nonet='true'
		[[ "$scriptAbsoluteFolder" == /mnt/"$USER"* ]] && [[ -e /mnt/"$USER" ]] && export nonet='true'
		[[ "$scriptAbsoluteFolder" == /var/run/media/"$USER"* ]] && [[ -e /var/run/media/"$USER" ]] && export nonet='true'
		[[ "$scriptAbsoluteFolder" == /run/"$USER"* ]] && [[ -e /run/"$USER" ]] && currentParameter=/run/"$USER" && export nonet='true'
		[[ "$scriptAbsoluteFolder" == "/cygdrive"* ]] && [[ -e /cygdrive ]] && export nonet='true'
	fi
	
	return 0
}

_vector_line_cksum() {
	[[ $(echo test | env CMD_ENV=xpg4 cksum | cut -f1 -d\  | tr -dc '0-9') != '935282863' ]] && echo 'broken cksum' && _messageFAIL && _stop 1
	
	[[ $(echo -e '1\n2\n3\n4\n5\n6\n7\n8\n9\n0' | tail -n +2 | env CMD_ENV=xpg4 cksum | cut -f1 -d\  | tr -dc '0-9') != '2409981071' ]] && _messageFAIL && _stop 1
	[[ $(echo -e '1\n2\n3\n4\n5\n6\n7\n8\n9\n0' | tail -n +2 | wc -l | cut -f1 -d\  | tr -dc '0-9') != '9' ]] && _messageFAIL && _stop 1
	
	[[ $(echo -e '1\n2\n3\n4\n5\n6\n7\n8\n9\n0' | tail -n 2 | env CMD_ENV=xpg4 cksum | cut -f1 -d\  | tr -dc '0-9') != '763220757' ]] && _messageFAIL && _stop 1
	[[ $(echo -e '1\n2\n3\n4\n5\n6\n7\n8\n9\n0' | tail -n 2 | wc -l | cut -f1 -d\  | tr -dc '0-9') != '2' ]] && _messageFAIL && _stop 1
	
	[[ $(echo -e '1\n2\n3\n4\n5\n6\n7\n8\n9\n0' | head -n 2 | env CMD_ENV=xpg4 cksum | cut -f1 -d\  | tr -dc '0-9') != '1864731933' ]] && _messageFAIL && _stop 1
	[[ $(echo -e '1\n2\n3\n4\n5\n6\n7\n8\n9\n0' | head -n 2 | wc -l | cut -f1 -d\  | tr -dc '0-9') != '2' ]] && _messageFAIL && _stop 1
	
	[[ $(echo -e '1\n2\n3\n4\n5\n6\n7\n8\n9\n0' | head -n -2 | env CMD_ENV=xpg4 cksum | cut -f1 -d\  | tr -dc '0-9') != '3336706933' ]] && _messageFAIL && _stop 1
	[[ $(echo -e '1\n2\n3\n4\n5\n6\n7\n8\n9\n0' | head -n -2 | wc -l | cut -f1 -d\  | tr -dc '0-9') != '8' ]] && _messageFAIL && _stop 1
	
	return 0
}

_vector() {
	_tryExec "_vector_line_cksum"
	
	
	_tryExec "_vector_virtUser"
}




#Verifies the timeout and sleep commands work properly, with subsecond specifications.
_timetest() {
	local iterations
	local dateA
	local dateB
	local dateDelta
	
	local nsDateA
	local nsDateB
	local nsDateDelta
	
	iterations=0
	#while false && [[ "$iterations" -lt 3 ]]
	while [[ "$iterations" -lt 3 ]]
	do
		dateA=$(date +%s)
		nsDateA=$(date +%s%N)
		
		sleep 0.1
		sleep 0.1
		sleep 0.1
		sleep 0.1
		sleep 0.1
		sleep 0.1
		
		_timeout 0.1 sleep 10
		_timeout 0.1 sleep 10
		_timeout 0.1 sleep 10
		_timeout 0.1 sleep 10
		_timeout 0.1 sleep 10
		_timeout 0.1 sleep 10
		
		dateB=$(date +%s)
		nsDateB=$(date +%s%N)
		
		dateDelta=$(bc <<< "$dateB - $dateA")
		nsDateDelta=$(bc <<< "$nsDateB - $nsDateA")
		
		if [[ "$dateDelta" -lt "1" ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ "$dateDelta" -gt "5" ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ $(echo -e -n "$nsDateDelta" | wc -c) != '10' ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ "$nsDateDelta" -lt '1000000000' ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ $(echo -e -n "$nsDateDelta" | cut -b1-4) -lt 1000 ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ $(echo -e -n "$nsDateDelta" | cut -b1-8) -gt '50000000' ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ $(echo -e -n "$nsDateDelta" | cut -b1-4) -gt 5000 ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		
		
		
		
		dateA=$(date +%s)
		nsDateA=$(date +%s%N)
		
		sleep 0.123
		sleep 0.123
		sleep 0.123
		sleep 0.123
		sleep 0.123
		sleep 0.123
		
		_timeout 0.123 sleep 10
		_timeout 0.123 sleep 10
		_timeout 0.123 sleep 10
		_timeout 0.123 sleep 10
		_timeout 0.123 sleep 10
		_timeout 0.123 sleep 10
		
		dateB=$(date +%s)
		nsDateB=$(date +%s%N)
		
		dateDelta=$(bc <<< "$dateB - $dateA")
		nsDateDelta=$(bc <<< "$nsDateB - $nsDateA")
		
		if [[ "$dateDelta" -lt "1" ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ "$dateDelta" -gt "5" ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ $(echo -e -n "$nsDateDelta" | wc -c) != '10' ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ "$nsDateDelta" -lt '1000000000' ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ $(echo -e -n "$nsDateDelta" | cut -b1-4) -lt 1000 ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ $(echo -e -n "$nsDateDelta" | cut -b1-8) -gt '50000000' ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ $(echo -e -n "$nsDateDelta" | cut -b1-4) -gt 5000 ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		
		
		
		dateA=$(date +%s)
		nsDateA=$(date +%s%N)
		
		sleep .123
		sleep .123
		sleep .123
		sleep .123
		sleep .123
		sleep .123
		
		_timeout .123 sleep 10
		_timeout .123 sleep 10
		_timeout .123 sleep 10
		_timeout .123 sleep 10
		_timeout .123 sleep 10
		_timeout .123 sleep 10
		
		dateB=$(date +%s)
		nsDateB=$(date +%s%N)
		
		dateDelta=$(bc <<< "$dateB - $dateA")
		nsDateDelta=$(bc <<< "$nsDateB - $nsDateA")
		
		if [[ "$dateDelta" -lt "1" ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ "$dateDelta" -gt "5" ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ $(echo -e -n "$nsDateDelta" | wc -c) != '10' ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ "$nsDateDelta" -lt '1000000000' ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ $(echo -e -n "$nsDateDelta" | cut -b1-4) -lt 1000 ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ $(echo -e -n "$nsDateDelta" | cut -b1-8) -gt '50000000' ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ $(echo -e -n "$nsDateDelta" | cut -b1-4) -gt 5000 ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		
		
		
		let iterations="$iterations + 1"
	done
	
	
	local nsDateC
	local nsDateD
	local nsDateDeltaA
	local nsDateDeltaB
	local msIterations
	
	if uname -a | grep -i 'cygwin' > /dev/null 2>&1
	then
		nsDateA=$(date +%s%N)
		for msIterations in {1..100}
		do
			sleep 0.011
		done
		nsDateB=$(date +%s%N)
		
		#nsDateC=$(date +%s%N)
		nsDateC="$nsDateB"
		for msIterations in {1..100}
		do
			sleep 0.091
		done
		nsDateD=$(date +%s%N)
		
		nsDateDeltaA=$(bc <<< "$nsDateB - $nsDateA")
		nsDateDeltaB=$(bc <<< "$nsDateD - $nsDateC")
		nsDateDelta=$(bc <<< "$nsDateDeltaB - $nsDateDeltaA")
		
		#echo "$nsDateDelta"
		
		
		
		if [[ $(echo -e -n "$nsDateDelta" | cut -b1-8) -lt '10000000' ]]
		then
			_messageFAIL
			_stop 1
		fi
		if [[ $(echo -e -n "$nsDateDelta" | cut -b1-8) -gt '640000000' ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ $(echo -e -n "$nsDateDelta" | cut -b1-4) -lt '1000' ]]
		then
			_messageFAIL
			_stop 1
		fi
		if [[ $(echo -e -n "$nsDateDelta" | cut -b1-4) -gt '64000' ]]
		then
			_messageFAIL
			_stop 1
		fi
	else
		nsDateA=$(date +%s%N)
		for msIterations in {1..100}
		do
			sleep 0.001
		done
		nsDateB=$(date +%s%N)
		
		#nsDateC=$(date +%s%N)
		nsDateC="$nsDateB"
		for msIterations in {1..100}
		do
			sleep 0.009
		done
		nsDateD=$(date +%s%N)
		
		nsDateDeltaA=$(bc <<< "$nsDateB - $nsDateA")
		nsDateDeltaB=$(bc <<< "$nsDateD - $nsDateC")
		nsDateDelta=$(bc <<< "$nsDateDeltaB - $nsDateDeltaA")
		
		#echo "$nsDateDelta"
		
		
		
		if [[ $(echo -e -n "$nsDateDelta" | cut -b1-8) -lt '10000000' ]]
		then
			_messageFAIL
			_stop 1
		fi
		if [[ $(echo -e -n "$nsDateDelta" | cut -b1-8) -gt '640000000' ]]
		then
			_messageFAIL
			_stop 1
		fi
		
		if [[ $(echo -e -n "$nsDateDelta" | cut -b1-4) -lt '1000' ]]
		then
			_messageFAIL
			_stop 1
		fi
		if [[ $(echo -e -n "$nsDateDelta" | cut -b1-4) -gt '64000' ]]
		then
			_messageFAIL
			_stop 1
		fi
	fi
	
	
	
	
	_messagePASS
	return 0
}


_testarglength() {
	local testArgLength
	
	! testArgLength=$(getconf ARG_MAX) && _messageFAIL && _stop 1
	
	
	# Typical UNIX.
	if [[ "$testArgLength" -lt 131071 ]]
	then
		# Typical Cygwin. Marginal result at best.
		[[ "$testArgLength" -ge 32000 ]] && uname -a | grep -i 'cygwin' > /dev/null 2>&1 && _messagePASS && return 0
		
		_messageFAIL && _stop 1
	fi
	
	_messagePASS
}



_variableLocalTestA_procedure() {
	local currentLocalA
	currentLocalA='false'
	[[ "$currentGlobalA" != 'true' ]] && _stop 1
	[[ "$currentLocalA" == '' ]] && _stop 1
	[[ "$currentLocalA" != 'false' ]] && _stop 1
	
	local currentLocalB
	currentLocalB='true'
	
	currentNotLocalA='true'
	
	
	return 0
}

_variableLocalTestB_procedure() {
	[[ "$currentGlobalA" != 'true' ]] && return 1
	[[ "$currentLocalA" != '' ]] && return 1
	[[ "$currentLocalA" == 'true' ]] && return 1
	
	return 0
}

_variableLocalTestC_procedure() {
	[[ "$currentGlobalA" != '' ]] && _stop 1
	[[ "$currentGlobalA" == 'true' ]] && _stop 1
	
	return 0
}

_variableLocalTest_sequence() {
	_start scriptLocal_mkdir_disable
	
	variableLocalTest_currentSubFunction() {
		if ! [[ "$currentSubFunctionTest" == "true" ]] || ! [[ $(echo "$currentSubFunctionTest") == "true" ]]
		then
			_stop 1
			return 1
		fi
		return 0
	}
	local currentSubFunctionTest
	currentSubFunctionTest='true'
	! variableLocalTest_currentSubFunction && _stop 1
	
	
	local currentSubshellTest1=$(
		echo x
	)
	[[ "$currentSubshellTest1" != 'x' ]] && _stop 1
	
	local currentSubshellTest2
	currentSubshellTest2=$(
		echo x
	)
	[[ "$currentSubshellTest2" != 'x' ]] && _stop 1
	
	
	echo $(
		echo 1
		echo 2
	) | grep '1 2' > /dev/null || _stop 1
	
	! echo $(
		echo 1
		echo 2
	) | grep '1 2' > /dev/null && _stop 1
	
	
	export currentGlobalA='true'
	
	local currentLocalA
	currentLocalA='true'
	
	( export currentSubshellTestA='true' )
	[[ ! -z "$currentSubshellTestA" ]] && _stop 1
	[[ "$currentSubshellTestA" != "" ]] && _stop 1
	[[ "$currentSubshellTestA" != '' ]] && _stop 1
	[[ "$currentSubshellTestA" == 'true' ]] && _stop 1
	
	( currentSubshellTestB='true' )
	[[ "$currentSubshellTestB" != "" ]] && _stop 1
	[[ "$currentSubshellTestB" == 'true' ]] && _stop 1
	
	( local currentSubshellTestC='true' )
	[[ "$currentSubshellTestC" != "" ]] && _stop 1
	[[ "$currentSubshellTestC" == 'true' ]] && _stop 1
	
	! ( echo true ) | grep 'true' > /dev/null && _stop 1
	! ( echo "$currentGlobalA" ) | grep 'true' > /dev/null && _stop 1
	! ( echo "$currentLocalA" ) | grep 'true' > /dev/null && _stop 1
	( echo "$currentLocalB" ) | grep 'true' > /dev/null && _stop 1
	
	[[ "$currentLocalA" != 'true' ]] && _stop 1
	! _variableLocalTestA_procedure && _stop 1
	[[ "$currentLocalA" != 'true' ]] && _stop 1
	[[ "$currentLocalB" != '' ]] && _stop 1
	[[ "$currentLocalB" == 'true' ]] && _stop 1
	[[ "$currentNotLocalA" != 'true' ]] && _stop 1
	
	_variableLocalTestB_procedure && _stop 1
	! "$scriptAbsoluteLocation" _variableLocalTestB_procedure && _stop 1
	
	local currentGlobalA
	! _variableLocalTestC_procedure && _stop 1
	
	export currentGlobalB='false'
	local currentGlobalB='true'
	[[ "$currentGlobalB" != 'true' ]] && _stop 1
	
	local currentLocalB='true'
	! ( echo "$currentLocalB" ) | grep 'true' > /dev/null && _stop 1
	[[ "$currentLocalB" != 'true' ]] && _stop 1
	
	local currentLocalC='true'
	[[ "$currentLocalC" != 'true' ]] && _stop 1
	
	! env -i  HOME="$HOME" TERM="${TERM}" SHELL="${SHELL}" PATH="${PATH}" PWD="$PWD" scriptAbsoluteLocation="$scriptAbsoluteLocation" scriptAbsoluteFolder="$scriptAbsoluteFolder" sessionid="$sessionid" LD_PRELOAD="$LD_PRELOAD" USER="$USER" "bash" -c '[[ "$sessionid" != "" ]]' && _stop 1
	env -i  HOME="$HOME" TERM="${TERM}" SHELL="${SHELL}" PATH="${PATH}" PWD="$PWD" scriptAbsoluteLocation="$scriptAbsoluteLocation" scriptAbsoluteFolder="$scriptAbsoluteFolder" sessionid="" LD_PRELOAD="$LD_PRELOAD" USER="$USER" "bash" -c '[[ "$sessionid" != "" ]]' && _stop 1
	env -i HOME="$HOME" TERM="${TERM}" SHELL="${SHELL}" PATH="${PATH}" PWD="$PWD" scriptAbsoluteLocation="$scriptAbsoluteLocation" scriptAbsoluteFolder="$scriptAbsoluteFolder" LD_PRELOAD="$LD_PRELOAD" USER="$USER" "bash" -c '[[ "$sessionid" != "" ]]' && _stop 1
	
	local currentBashBinLocation
	currentBashBinLocation=$(type -p bash)
	[[ "$sessionid" == '' ]] &&  _stop 1
	! env -i sessionid="$sessionid" "$currentBashBinLocation" -c '[[ "$sessionid" != "" ]]' && _stop 1
	env -i sessionid="" "$currentBashBinLocation" -c '[[ "$sessionid" != "" ]]' && _stop 1
	env -i "$currentBashBinLocation" -c '[[ "$sessionid" != "" ]]' && _stop 1
	
	
	
	local currentVariableFunctionText
	
	export UB_TEST_VARIABLE_FUNCTION_COMMAND='_variableFunction_variableLocalTest() { echo true; }'' ; _variableFunction_variableLocalTest'
	currentVariableFunctionText=$(bash -c "$UB_TEST_VARIABLE_FUNCTION_COMMAND")
	#currentVariableFunctionText=$($UB_TEST_VARIABLE_FUNCTION_COMMAND)
	[[ "$currentVariableFunctionText" != "true" ]] && _messageFAIL && _stop 1
	export UB_TEST_VARIABLE_FUNCTION_COMMAND=
	unset UB_TEST_VARIABLE_FUNCTION_COMMAND
	
	_exportFunction_variableLocalTest() {
		echo true
	}
	currentVariableFunctionText=$(bash -c '_exportFunction_variableLocalTest' 2>/dev/null)
	[[ "$currentVariableFunctionText" != "" ]] && _messageFAIL && _stop 1
	export -f _exportFunction_variableLocalTest
	currentVariableFunctionText=$(bash -c '_exportFunction_variableLocalTest' 2>/dev/null)
	[[ "$currentVariableFunctionText" != "true" ]] && _messageFAIL && _stop 1
	unset _exportFunction_variableLocalTest
	
	
	_currentFunctionDefinitionTest() { echo false; }
	true && _currentFunctionDefinitionTest() { echo true; }
	false && _currentFunctionDefinitionTest() { echo false; }
	[[ $(_currentFunctionDefinitionTest) != "true" ]] && _messageFAIL && _stop 1
	unset _currentFunctionDefinitionTest
	
	_stop
}


_variableLocalTest() {
	if "$scriptAbsoluteLocation" _variableLocalTest_sequence "$@"
	then
		return 0
	fi
	return 1
}


_uid_test() {
	local current_uid_1
	local current_uid_2
	local current_uid_3
	
	current_uid_1=$(_uid)
	current_uid_2=$(_uid)
	current_uid_3_char=$(_uid 8 | wc -c)
	
	if [[ "$current_uid_1" == "" ]]
	then
		_messageFAIL
		_stop 1
	fi
	
	if [[ "$current_uid_2" == "" ]]
	then
		_messageFAIL
		_stop 1
	fi
	
	if [[ "$current_uid_1" == "$current_uid_2" ]]
	then
		_messageFAIL
		_stop 1
	fi
	
	if [[ "$current_uid_3_char" != "8" ]]
	then
		_messageFAIL
		_stop 1
	fi
	
	return 0
}


# Creating a function from within a function may be relied upon for some overrides.
# Enumerating a function's text with 'declare -f' may be relied upon by some 'here document' functions.
_define_function_test() {
	local current_uid_1
	current_uid_1=$(_uid)
	
	local current_uid_2
	current_uid_2=$(_uid)
	
	# https://stackoverflow.com/questions/7145337/bash-how-do-i-create-function-from-variable
	eval "__$current_uid_1() { __$current_uid_2() { echo $ubiquitousBashID; }; }"
	
	if [[ $(declare -f __$current_uid_1 | wc -c) -lt 50 ]]
	then
		_messageFAIL
		_stop 1
	fi
	
	if [[ $(declare -f __$current_uid_2 | wc -c) -gt 0 ]]
	then
		_messageFAIL
		_stop 1
	fi
	
	__$current_uid_1
	
	if [[ $(declare -f __$current_uid_2 | wc -c) -lt 15 ]]
	then
		_messageFAIL
		_stop 1
	fi
	
	# https://superuser.com/questions/154332/how-do-i-unset-or-get-rid-of-a-bash-function
	unset -f __$current_uid_2
	
	if [[ $(declare -f __$current_uid_2 | wc -c) -gt 0 ]]
	then
		_messageFAIL
		_stop 1
	fi
	
	if [[ $(declare -f __$current_uid_1 | wc -c) -lt 50 ]]
	then
		_messageFAIL
		_stop 1
	fi
	
	unset -f __$current_uid_1
	
	if [[ $(declare -f __$current_uid_1 | wc -c) -gt 0 ]]
	then
		_messageFAIL
		_stop 1
	fi
	
	
	return 0
}

#_test_prog() {
#	true
#}

_test_embed_procedure-embed() {
	#echo $ub_import
	#echo $ub_import_param
	
	[[ "$ub_import" != 'true' ]] && return 1
	[[ "$ub_import" == '' ]] && return 1
	[[ "$ub_import_param" != '--embed' ]] && return 1
	
	#_stop 0
	#return 0
	true
}

_test_embed_sequence() {
	_start scriptLocal_mkdir_disable
	
	#echo $ub_import
	#echo $ub_import_param
	
	# CAUTION: Profoundly unexpected to have called '_test' or similar functions after importing into a current shell in any way.
	if ( [[ "$current_internal_CompressedScript" == "" ]] && [[ "$current_internal_CompressedScript_cksum" == "" ]] && [[ "$current_internal_CompressedScript_bytes" == "" ]] ) || ( ( [[ "$ub_import_param" != "--embed" ]] ) && [[ "$ub_import_param" != "--bypass" ]] && [[ "$ub_import_param" != "--call" ]] && [[ "$ub_import_param" != "--script" ]] && [[ "$ub_import_param" != "--compressed" ]] )
	then
		[[ "$ub_import" == 'true' ]] && _messageFAIL && _stop 1
		[[ "$ub_import" != '' ]] && _messageFAIL && _stop 1
		[[ "$ub_import_param" != '' ]] && _messageFAIL && _stop 1
	fi
	
	! "$safeTmp"/.embed.sh _true && _stop 1
	
	"$safeTmp"/.embed.sh _false && _stop 1
	
	! "$safeTmp"/.embed.sh _test_embed_procedure-embed && _stop 1
	
	! . "$safeTmp"/.embed.sh _test_embed_procedure-embed && _stop 1
	
	_stop
}

_test_embed() {
	"$scriptAbsoluteLocation" _test_embed_sequence "$@"
}

_test_parallelFifo_procedure() {
	mkfifo "$safeTmp"/parallel_fifo
	cat "$safeTmp"/parallel_fifo > "$safeTmp"/parallel_fifo_out &
	
	local currentIterationsA
	currentIterationsA=0
	local currentIterationsB
	currentIterationsB=0
	
	while [[ "$currentIterationsA" -lt "2" ]]
	do
		echo a
		sleep 1
		let currentIterationsA="$currentIterationsA"" + 1"
	done | cat > "$safeTmp"/parallel_fifo &
	
	sleep 0.4
	
	while [[ "$currentIterationsB" -lt "2" ]]
	do
		echo b
		sleep 1
		let currentIterationsB="$currentIterationsB"" + 1"
	done | cat > "$safeTmp"/parallel_fifo
	
	sleep 1
	sleep 7
	
	
	#echo $(cat "$safeTmp"/parallel_fifo_out | tr -dc 'a-zA-Z0-9' 2> /dev/null)
	
	# WARNING: Strongly discouraged! Strict test highly dependent on unpredictable InterProcess-Communication timing requiring >7s latency margins at each 'step'!
	if _if_cygwin
	then
		[[ $(cat "$safeTmp"/parallel_fifo_out | tr -dc 'a-zA-Z0-9' 2> /dev/null) != "abab" ]] && _messageFAIL && return 1
	fi
	
	[[ $(cat "$safeTmp"/parallel_fifo_out | tr -dc 'a-zA-Z0-9' | wc -c) != "4" ]] && _messageFAIL && return 1
	
	
	rm -f "$safeTmp"/parallel_fifo
	rm -f "$safeTmp"/parallel_fifo_out
}

# No production use.
_test_parallelFifo_sequence() {
	_start scriptLocal_mkdir_disable
	
	_test_parallelFifo_procedure "$@"
	
	_stop
}

_test_sanity() {
	if (exit 0)
	then
		true
	else
		_messageFAIL && return 1
	fi
	if ! (exit 0)
	then
		_messageFAIL && return 1
	fi
	if (exit 1)
	then
		_messageFAIL && return 1
	fi
	if (exit 2)
	then
		_messageFAIL && return 1
	fi
	if (exit 3)
	then
		_messageFAIL && return 1
	fi
	if (exit 126)
	then
		_messageFAIL && return 1
	fi
	if (exit 127)
	then
		_messageFAIL && return 1
	fi
	if (exit 128)
	then
		_messageFAIL && return 1
	fi
	if (exit 129)
	then
		_messageFAIL && return 1
	fi
	if (exit 130)
	then
		_messageFAIL && return 1
	fi
	if (exit 131)
	then
		_messageFAIL && return 1
	fi
	if (exit 132)
	then
		_messageFAIL && return 1
	fi
	if (exit 255)
	then
		_messageFAIL && return 1
	fi
	
	local currentSubReturnStatus
	(exit 0)
	currentSubReturnStatus="$?"
	[[ "$currentSubReturnStatus" != '0' ]] && _messageFAIL && return 1
	(exit 1)
	currentSubReturnStatus="$?"
	[[ "$currentSubReturnStatus" != '1' ]] && _messageFAIL && return 1
	(exit 2)
	currentSubReturnStatus="$?"
	[[ "$currentSubReturnStatus" != '2' ]] && _messageFAIL && return 1
	(exit 3)
	currentSubReturnStatus="$?"
	[[ "$currentSubReturnStatus" != '3' ]] && _messageFAIL && return 1
	
	
	# Do NOT allow 'rm' to be a shell function alias to 'rm -i' or similar.
	[[ $(type -p rm) == "" ]] && _messageFAIL && return 1
	
	#! [[ -2147483648 -lt 2147483647 ]] && _messageFAIL && return 1
	#! [[ -2000000000 -lt 2000000000 ]] && _messageFAIL && return 1
	
	! [[ -1234567890 -le -1234567890 ]] && _messageFAIL && return 1
	! [[ 1234567890 -le 1234567890 ]] && _messageFAIL && return 1
	! [[ -1234567890 -lt 1234567890 ]] && _messageFAIL && return 1
	! [[ -1234567890 -ge -1234567890 ]] && _messageFAIL && return 1
	! [[ 1234567890 -ge 1234567890 ]] && _messageFAIL && return 1
	! [[ 1234567890 -gt -1234567890 ]] && _messageFAIL && return 1
	! [[ -1234567890 -lt -0 ]] && _messageFAIL && return 1
	! [[ -1234567890 -lt 0 ]] && _messageFAIL && return 1
	! [[ 0 -lt 1234567890 ]] && _messageFAIL && return 1
	! [[ -0 -gt -1234567890 ]] && _messageFAIL && return 1
	! [[ 0 -gt -1234567890 ]] && _messageFAIL && return 1
	! [[ 0 -gt -1234567890 ]] && _messageFAIL && return 1
	
	! [[ -900000000 -le -900000000 ]] && _messageFAIL && return 1
	! [[ 900000000 -le 900000000 ]] && _messageFAIL && return 1
	! [[ -900000000 -lt 900000000 ]] && _messageFAIL && return 1
	! [[ -900000000 -ge -900000000 ]] && _messageFAIL && return 1
	! [[ 900000000 -ge 900000000 ]] && _messageFAIL && return 1
	! [[ 900000000 -gt -900000000 ]] && _messageFAIL && return 1
	! [[ -900000000 -lt -0 ]] && _messageFAIL && return 1
	! [[ -900000000 -lt 0 ]] && _messageFAIL && return 1
	! [[ 0 -lt 900000000 ]] && _messageFAIL && return 1
	! [[ -0 -gt -900000000 ]] && _messageFAIL && return 1
	! [[ 0 -gt -900000000 ]] && _messageFAIL && return 1
	! [[ 0 -gt -900000000 ]] && _messageFAIL && return 1
	! [[ 0 -le -0 ]] && _messageFAIL && return 1
	! [[ -0 -le 0 ]] && _messageFAIL && return 1
	! [[ 0 -ge -0 ]] && _messageFAIL && return 1
	! [[ -0 -ge 0 ]] && _messageFAIL && return 1
	
	
	
	! "$scriptAbsoluteLocation" _true && _messageFAIL && return 1
	"$scriptAbsoluteLocation" _false && _messageFAIL && return 1
	
	# CAUTION: Profoundly unexpected to have called '_test' or similar functions after importing into a current shell in any way.
	if ( [[ "$current_internal_CompressedScript" == "" ]] && [[ "$current_internal_CompressedScript_cksum" == "" ]] && [[ "$current_internal_CompressedScript_bytes" == "" ]] ) || ( ( [[ "$ub_import_param" != "--embed" ]] ) && [[ "$ub_import_param" != "--bypass" ]] && [[ "$ub_import_param" != "--call" ]] && [[ "$ub_import_param" != "--script" ]] && [[ "$ub_import_param" != "--compressed" ]] )
	then
		[[ "$ub_import" == 'true' ]] && _messageFAIL && _stop 1
		[[ "$ub_import" != '' ]] && _messageFAIL && _stop 1
		[[ "$ub_import_param" != '' ]] && _messageFAIL && _stop 1
	fi
	
	local santiySessionID_length
	santiySessionID_length=$(echo -n "$sessionid" | wc -c | tr -dc '0-9')
	
	[[ "$santiySessionID_length" -lt "18" ]] && _messageFAIL && return 1
	[[ "$uidLengthPrefix" != "" ]] && [[ "$santiySessionID_length" -lt "$uidLengthPrefix" ]] && _messageFAIL && return 1
	
	[[ -e "$safeTmp" ]] && _messageFAIL && return 1
	
	_start scriptLocal_mkdir_disable
	
	
	[[ ! -e "$safeTmp" ]] && _messageFAIL && return 1
	
	[[ $( cd "$safeTmp" 2>/dev/null ; ls *doNotMatch* 2>/dev/null | wc -c) != "0" ]] && _messageFAIL && return 1
	[[ $( cd "$safeTmp" 2>/dev/null ; ls -A *doNotMatch* 2>/dev/null | wc -c) != "0" ]] && _messageFAIL && return 1
	
	echo -e -n >> "$safeTmp"/empty
	[[ ! -e "$safeTmp"/empty ]] && _messageFAIL && return 1
	[[ $(cat "$safeTmp"/empty | wc -c) != '0' ]] && _messageFAIL && return 1
	
	[[ $( cd "$safeTmp" 2>/dev/null ; ls *empty* 2>/dev/null | wc -c) == "0" ]] && _messageFAIL && return 1
	[[ $( cd "$safeTmp" 2>/dev/null ; ls -A *empty* 2>/dev/null | wc -c) == "0" ]] && _messageFAIL && return 1
	
	rm -f "$safeTmp"/empty > /dev/null 2>&1
	
	
	! _test_moveconfirm_procedure && _messageFAIL && return 1
	
	
	local currentTestUID=$(_uid 245)
	mkdir -p "$safeTmp"/"$currentTestUID"
	echo > "$safeTmp"/"$currentTestUID"/"$currentTestUID"
	
	[[ ! -e "$safeTmp"/"$currentTestUID"/"$currentTestUID" ]] && _messageFAIL && return 1
	
	rm -f "$safeTmp"/"$currentTestUID"/"$currentTestUID"
	rmdir "$safeTmp"/"$currentTestUID"
	
	[[ -e "$safeTmp"/"$currentTestUID" ]] && _messageFAIL && return 1
	
	echo 'true' > "$safeTmp"/shouldNotOverwrite
	mv "$safeTmp"/doesNotExist "$safeTmp"/shouldNotOverwrite > /dev/null 2>&1 && _messageFAIL && return 1
	echo > "$safeTmp"/replacement
	mv -n "$safeTmp"/replacement "$safeTmp"/shouldNotOverwrite > /dev/null 2>&1
	[[ $(cat "$safeTmp"/shouldNotOverwrite) != "true" ]] && _messageFAIL && return 1
	rm -f "$safeTmp"/replacement > /dev/null 2>&1
	rm -f "$safeTmp"/shouldNotOverwrite > /dev/null 2>&1
	
	
	_uid_test
	
	[[ $(_getUUID | wc -c) != '37' ]] && _messageFAIL && return 1
	
	[[ $(_getUUID | cut -f1 -d\- | wc -c) != '9' ]] &&  _messageFAIL && return 1
	
	
	! env | grep 'PATH' > /dev/null 2>&1 && _messageFAIL && return 1
	! printenv | grep 'PATH' > /dev/null 2>&1 && _messageFAIL && return 1
	
	
	_define_function_test
	
	! _variableLocalTest && _messageFAIL && return 1
	
	
	
	mkdir -p "$safeTmp"/maydeletethisfolder
	[[ ! -d "$safeTmp"/maydeletethisfolder ]] && return 1
	echo > "$safeTmp"/maydeletethisfolder/maydeletethisfile
	[[ ! -e "$safeTmp"/maydeletethisfolder/maydeletethisfile ]] && return 1
	_safeRMR "$safeTmp"/maydeletethisfolder
	[[ -e "$safeTmp"/maydeletethisfolder/maydeletethisfile ]] && return 1
	[[ -e "$safeTmp"/maydeletethisfolder ]] && return 1
	
	
	
	# WARNING: Not tested by default, due to lack of use except where faults are tolerable, and slim possibility of useful embedded systems not able to pass.
	#! echo \$123 | grep -E '^\$[0-9]|^\.[0-9]' > /dev/null 2>&1 && _messageFAIL && return 1
	#! echo \.123 | grep -E '^\$[0-9]|^\.[0-9]' > /dev/null 2>&1 && _messageFAIL && return 1
	#echo 123 | grep -E '^\$[0-9]|^\.[0-9]' > /dev/null 2>&1 && _messageFAIL && return 1
	
	
	local currentJobsList
	currentJobsList=$(jobs -p -r)
	
	[[ "$currentJobsList" != "" ]] && return 1
	
	sleep 7 &
	currentJobsList=$(jobs -p -r)
	[[ "$currentJobsList" == "" ]] && return 1
	
	wait
	currentJobsList=$(jobs -p -r)
	[[ "$currentJobsList" != "" ]] && return 1
	
	
	
	
	if ! _test_embed
	then
		_messageFAIL && _stop 1
		#! uname -a | grep -i cygwin > /dev/null 2>&1 && _messageFAIL && _stop 1
		#echo 'warn: broken (cygwin): _test_embed - cygwin detected'
	fi
	
	
	
	
	_getDep flock
	
	( flock 200; echo > "$safeTmp"/ready ; sleep 3 ) 200>"$safeTmp"/flock &
	sleep 1
	if ( flock 200; ! [[ -e "$safeTmp"/ready ]] ) 200>"$safeTmp"/flock
	then
		! uname -a | grep -i cygwin > /dev/null 2>&1 && _messageFAIL && _stop 1
		echo 'warn: broken (cygwin): flock - cygwin may not be able to use flock through MSW network drive'
		return 1
	fi
	rm -f "$safeTmp"/flock > /dev/null 2>&1
	rm -f "$safeTmp"/ready > /dev/null 2>&1
	
	ln -s /dev/null "$safeTmp"/working
	ln -s /dev/null/broken "$safeTmp"/broken
	if ! [[ -h "$safeTmp"/broken ]] || ! [[ -h "$safeTmp"/working ]] || [[ -e "$safeTmp"/broken ]] || ! [[ -e "$safeTmp"/working ]]
	then
		! uname -a | grep -i cygwin > /dev/null 2>&1 && _messageFAIL && _stop 1
		echo 'warn: broken (cygwin): flock - cygwin may not be able to use flock through MSW network drive'
		return 1
	fi
	rm -f "$safeTmp"/working
	rm -f "$safeTmp"/broken
	
	
	
	_tryExec _test_parallelFifo_procedure
	
	
	return 0
}



_test-shell() {
	_installation_nonet_default
	
	# ATTENTION: As part of sanity test, "$safeTmp" must not exist until '_start scriptLocal_mkdir_disable' is called from within '_test_sanity' .
	#_start scriptLocal_mkdir_disable
	_messageNormal "Sanity..."
	_test_sanity && _messagePASS
	
	
	
	_messageNormal "Permissions..."
	! _test_permissions_ubiquitous && _messageFAIL
	_messagePASS
	
	#Environment generated by ubiquitous bash is typically 10000 characters.
	#echo -n -e '\E[1;32;46m Argument length...	\E[0m'
	_messageNormal 'Argument length...'
	_testarglength
	
	_messageNormal "Absolute pathfinding..."
	#if ! uname -a | grep -i cygwin > /dev/null 2>&1
	#then
		_tryExec "_test_getAbsoluteLocation"
	#fi
	_messagePASS
	
}

_test() {
	_test-shell "$@"
	_installation_nonet_default
	
	if type _timetest > /dev/null 2>&1
	then
		echo -n -e '\E[1;32;46m Timing...		\E[0m'
		echo
		
		# DANGER: Even under MSW/Cygwin, should ONLY fail IF extremely slow storage is attached.
		if type _test_selfTime > /dev/null 2>&1
		then
			echo -e '\E[0;36m Timing: _test_selfTime \E[0m'
			if ! _test_selfTime
			then
				if _if_cygwin
				then
					echo 'warn: accepted: cygwin: _test_selfTime broken'
				else
					echo '_test_selfTime broken'
					_stop 1
				fi
			fi
		fi
		
		if type _test_bashTime > /dev/null 2>&1
		then
			echo -e '\E[0;36m Timing: _test_bashTime \E[0m'
			! _test_bashTime && echo '_test_selfTime broken' && _stop 1
		fi
		
		if type _test_filemtime > /dev/null 2>&1
		then
			echo -e '\E[0;36m Timing: _test_filemtime \E[0m'
			! _test_filemtime && echo '_test_selfTime broken' && _stop 1
		fi
		
		if type _test_timeoutRead > /dev/null 2>&1
		then
			echo -e '\E[0;36m Timing: _test_timeoutRead \E[0m'
			! _test_timeoutRead && echo '_test_timeoutRead broken' && _stop 1
		fi
		
		echo -e '\E[0;36m Timing: _timetest \E[0m'
		! _timetest && echo '_timetest broken' && _stop 1
	fi
	
	
	_messageNormal "Dependency checking..."
	
	## Check dependencies
	
	# WARNING: Although '#!/usr/bin/env bash' is used as header when possible, some high-speed 'heredoc' scripts may instead rely on '#!/bin/bash' or '#!/bin/dash' to ensure performance. For these important use cases, the typical '/bin/bash' and '/bin/dash' binary locations are required.
	_getDep /bin/bash
	! [[ -e /bin/bash ]] && echo '/bin/bash missing' && _stop 1
	! [[ -x /bin/bash ]] && echo '/bin/bash nonexecutable' && _stop 1
	_getDep /bin/dash
	! [[ -e /bin/dash ]] && echo '/bin/dash missing' && _stop 1
	! [[ -x /bin/dash ]] && echo '/bin/dash nonexecutable' && _stop 1
	
	#"generic/filesystem"/permissions.sh
	_checkDep stat
	
	_getDep cksum
	
	_getDep wget
	_getDep grep
	_getDep fgrep
	_getDep sed
	_getDep awk
	_getDep cut
	_getDep head
	_getDep tail
	
	_getDep seq
	
	_getDep wc
	
	_getDep fold
	
	
	! _compat_realpath && ! _wantGetDep realpath && echo 'realpath missing'
	_getDep readlink
	_getDep dirname
	_getDep basename
	
	_getDep sleep
	_getDep wait
	_getDep kill
	_getDep jobs
	_getDep ps
	_getDep exit
	
	_getDep env
	_getDep printenv
	_getDep bash
	_getDep echo
	_getDep cat
	_getDep tac
	_getDep type
	_getDep mkdir
	_getDep trap
	_getDep return
	_getDep set
	
	# WARNING: Deprecated. Migrate to 'type -p' instead when possible.
	# WARNING: No known production use.
	#https://unix.stackexchange.com/questions/85249/why-not-use-which-what-to-use-then
	_getDep which
	
	_getDep printf
	
	_getDep stat
	_getDep touch
	
	_getDep dd
	_wantGetDep blockdev
	
	_getDep rm
	
	_getDep find
	_getDep ln
	_getDep ls
	
	_getDep id
	
	_getDep test
	
	_getDep true
	_getDep false
	
	_getDep diff
	
	_getDep uuidgen
	
	_getDep bc
	_getDep xxd
	_getDep od
	
	_getDep yes
	
	_test_readlink_f
	
	_tryExec "_test_package"
	
	_tryExec "_test_daemon"
	
	_tryExec "_testFindPort"
	_tryExec "_test_waitport"
	
	_tryExec "_testProxySSH"
	
	_tryExec "_testAutoSSH"
	
	_tryExec "_testTor"
	
	_tryExec "_testProxyRouter"
	
	#_tryExec "_test_build"
	
	_tryExec "_testGosu"
	
	_tryExec "_testMountChecks"
	_tryExec "_testBindMountManager"
	_tryExec "_testDistro"
	_tryExec "_test_fetchDebian"
	
	_tryExec "_test_image"
	_tryExec "_test_transferimage"
	
	_tryExec "_testCreatePartition"
	_tryExec "_testCreateFS"
	
	_tryExec "_test_mkboot"
	
	_tryExec "_test_abstractfs"
	_tryExec "_test_fakehome"
	_tryExec "_testChRoot"
	_tryExec "_testQEMU"
	_tryExec "_testQEMU_x64-x64"
	_tryExec "_testQEMU_x64-raspi"
	_tryExec "_testQEMU_raspi-raspi"
	_tryExec "_testVBox"
	
	_tryExec "_test_vboxconvert"
	
	_tryExec "_test_dosbox"
	
	_tryExec "_testWINE"
	
	_tryExec "_test_docker"
	
	_tryExec "_test_docker_mkimage"
	
	_tryExec "_testVirtBootdisc"
	
	_tryExec "_testExtra"
	
	_tryExec "_testGit"
	
	_tryExec "_test_bup"
	
	_tryExec "_testX11"
	
	_tryExec "_test_virtLocal_X11"
	
	_tryExec "_test_search"
	
	_tryExec "_test_packetDriveDevice"
	_tryExec "_test_gparted"
	
	_tryExec "_test_synergy"
	
	
	_tryExec "_test_devqalculate"
	_tryExec "_test_devgnuoctave"
	
	
	
	_tryExec "_test_devatom"
	_tryExec "_test_devemacs"
	_tryExec "_test_deveclipse"
	
	
	_tryExec "_test_h1060p"
	
	
	_tryExec "_test_ethereum"
	_tryExec "_test_ethereum_parity"
	
	
	
	_tryExec "_test_mktorrent"
	
	
	_tryExec "_test_cloud"
	
	_tryExec "_test_rclone"
	_tryExec "_test_terraform"
	
	
	_tryExec "_test_vagrant_build"
	
	
	
	_tryExec "_test_kernelConfig"
	
	
	_tryExec "_test_clog"
	
	_tryExec "_test_metaengine"
	
	_tryExec "_test_channel"
	
	! [[ -e /dev/urandom ]] && echo /dev/urandom missing && _stop 1
	[[ $(_timeout 3 cat /dev/urandom 2> /dev/null | _timeout 3 base64 2> /dev/null | _timeout 3 tr -dc 'a-zA-Z0-9' 2> /dev/null | _timeout 3 head -c 18 2> /dev/null) == "" ]] && echo /dev/urandom fail && _stop 1
	
	_messagePASS
	
	if type _test_queue > /dev/null 2>&1
	then
		_messageNormal "Queue..."
		
		_tryExec '_test_queue'
		
		# DANGER: Even under MSW/Cygwin, should ONLY fail IF extremely slow storage is attached.
		echo -e '\E[0;36m Queue: _test_broadcastPipe_page \E[0m'
		if ! _test_broadcastPipe_page
		then
			if _if_cygwin
			then
				echo 'warn: accepted: cygwin: _test_broadcastPipe_page broken'
			else
				echo '_test_broadcastPipe_page broken'
				_stop 1
			fi
		fi
		
		# DANGER: Even under MSW/Cygwin, should ONLY fail IF extremely slow storage is attached.
		echo -e '\E[0;36m Queue: _test_broadcastPipe_aggregatorStatic \E[0m'
		if ! _test_broadcastPipe_aggregatorStatic
		then
			if _if_cygwin
			then
				#echo 'warn: accepted: cygwin: _test_broadcastPipe_aggregatorStatic broken'
				echo '_test_broadcastPipe_aggregatorStatic broken'
				_stop 1
			else
				echo '_test_broadcastPipe_aggregatorStatic broken'
				_stop 1
			fi
		fi
		
		_messagePASS
	fi
	
	_messageNormal 'Vector...'
	_vector
	_messagePASS
	
	_tryExec "_test_prog"
	
	
	_stop
}

#_testBuilt_prog() {
#	true
#}

_testBuilt() {
	_start scriptLocal_mkdir_disable
	
	_messageProcess "Binary checking"
	
	_tryExec "_testBuiltIdle"
	_tryExec "_testBuiltGosu"	#Note, requires sudo, not necessary for docker .
	
	_tryExec "_test_ethereum_built"
	_tryExec "_test_ethereum_parity_built"
	
	_tryExec "_testBuiltChRoot"
	_tryExec "_testBuiltQEMU"
	
	_tryExec "_testBuiltExtra"
	
	_tryExec "_testBuilt_prog"
	
	_messagePASS
	
	_stop
}

#Creates symlink in "$HOME"/bin, to the executable at "$1", named according to its residing directory and file name.
_setupCommand() {
	mkdir -p "$HOME"/bin
	! [[ -e "$HOME"/bin ]] && return 1
	
	local clientScriptLocation
	clientScriptLocation=$(_getAbsoluteLocation "$1")
	
	local clientScriptFolder
	clientScriptFolder=$(_getAbsoluteFolder "$1")
	
	local commandName
	commandName=$(basename "$1")
	
	local clientName
	clientName=$(basename "$clientScriptFolder")
	
	_relink_relative "$clientScriptLocation" "$HOME"/bin/"$commandName""-""$clientName"
	
	
}

_setupCommand_meta() {
	mkdir -p "$HOME"/bin
	! [[ -e "$HOME"/bin ]] && return 1
	
	local clientScriptLocation
	clientScriptLocation=$(_getAbsoluteLocation "$1")
	
	local clientScriptFolder
	clientScriptFolder=$(_getAbsoluteFolder "$1")
	
	local clientScriptFolderResidence
	clientScriptFolderResidence=$(_getAbsoluteFolder "$clientScriptFolder")
	
	local commandName
	commandName=$(basename "$1")
	
	local clientName
	clientName=$(basename "$clientScriptFolderResidence")
	
	_relink_relative "$clientScriptLocation" "$HOME"/bin/"$commandName""-""$clientName"
	
	
}

_find_setupCommands() {
	find -L "$scriptAbsoluteFolder" -not \( -path \*_arc\* -prune \) -not \( -path \*__disk\* -prune \) -not \( -path \*/_local/h/\* -prune \) -not \( -path \*/_local/fs/\* -prune \) -not \( -path \*/_local/ubcp/\* -prune \) "$@"
}

#Consider placing files like ' _vnc-machine-"$netName" ' in an "_index" folder for automatic installation.
_setupCommands() {
	#_find_setupCommands -name '_command' -exec "$scriptAbsoluteLocation" _setupCommand '{}' \;
	
	_tryExec "_setup_ssh_commands"
	_tryExec "_setup_command_commands"
}

#_setup_pre() {
#	true
#}

#_setup_prog() {
#	true
#}


_setup_anchor() {
	if ! _if_cygwin && [[ "$objectName" == "ubiquitous_bash" ]]
	then
		# WARNING: End user file association. Do NOT call within scripts.
		# WARNING: Necessarily relies on a 'deprecated' 'field code' with the 'Exec key' of a 'Desktop Entry' file association.
		# https://specifications.freedesktop.org/desktop-entry-spec/desktop-entry-spec-latest.html
		_messagePlain_request 'association: *.bat'
		echo 'konsole --workdir %d -e /bin/bash %f (open in graphical terminal emulator from file manager)'
		echo 'bash'
	fi
	
	if type "_associate_anchors_request" > /dev/null 2>&1
	then
		_tryExec "_associate_anchors_request"
		return
	fi
}

_setup() {
	_installation_nonet_default
	
	_start scriptLocal_mkdir_disable
	
	"$scriptAbsoluteLocation" _test || _stop 1
	
	#Only attempt build procedures if their functions have been defined from "build.sh" . Pure shell script projects (eg. CoreAutoSSH), and projects using only statically compiled binaries, need NOT include such procedures.
	local buildSupported
	type _build > /dev/null 2>&1 && type _test_build > /dev/null 2>&1 && buildSupported="true"
	
	[[ "$buildSupported" == "true" ]] && ! "$scriptAbsoluteLocation" _test_build && _stop 1
	
	if ! "$scriptAbsoluteLocation" _testBuilt
	then
		! [[ "$buildSupported" == "true" ]] && _stop 1
		[[ "$buildSupported" == "true" ]] && ! "$scriptAbsoluteLocation" _build "$@" && _stop 1
		! "$scriptAbsoluteLocation" _testBuilt && _stop 1
	fi
	
	_setupCommands
	
	_tryExec "_setup_pre"
	
	_tryExec "_setup_ssh"
	
	_tryExec "_setup_prog"
	
	_setup_anchor
	
	_stop
}

# DANGER: Especially not expected to modify system program behavior (eg. not to modify "$HOME"/.ssh ).
# WARNING: Strictly expected to not modify anyting outside the script directory.
_setup_local() {
	export ub_setup_local='true'
	
	_setup
}

_test_package() {
	_getDep tar
	_getDep gzip
	
	_getDep xz
}

_package_prog() {
	true
}


_package_ubcp_copy_copy() {
	#cp -a "$1" "$2"
	if [[ "$ubPackage_enable_ubcp" != 'true' ]]
	then
		rsync -av --progress --exclude "/ubcp/conemu" --exclude "/ubcp/cygwin" --exclude "/ubcp/package_ubcp-cygwinOnly.tar.gz" --exclude "/ubcp/package_ubcp-cygwinOnly.tar.xz" "$1" "$2"
	else
		rsync -av --progress --exclude "/ubcp/package_ubcp-cygwinOnly.tar.gz" --exclude "/ubcp/package_ubcp-cygwinOnly.tar.xz" "$1" "$2"
	fi
	
	
	rm -f "$safeTmp"/package/_local/package_ubcp-cygwinOnly.tar.gz
	rm -f "$safeTmp"/package/_local/ubcp/package_ubcp-cygwinOnly.tar.gz
	
	return 0
}

_package_ubcp_copy() {
	mkdir -p "$safeTmp"/package/_local
	
	if [[ -e "$scriptLocal"/ubcp ]]
	then
		_package_ubcp_copy_copy "$scriptLocal"/ubcp "$safeTmp"/package/_local/
		return 0
	fi
	if [[ -e "$scriptLib"/ubcp ]]
	then
		_package_ubcp_copy_copy "$scriptLib"/ubcp "$safeTmp"/package/_local/
		rm -f "$safeTmp"/package/_local/ubcp/package_ubcp-cygwinOnly.tar.gz
		return 0
	fi
	if [[ -e "$scriptAbsoluteFolder"/ubcp ]]
	then
		_package_ubcp_copy_copy "$scriptAbsoluteFolder"/ubcp "$safeTmp"/package/_local/
		rm -f "$safeTmp"/package/_local/ubcp/package_ubcp-cygwinOnly.tar.gz
		return 0
	fi
	
	
	if [[ -e "$scriptLib"/ubiquitous_bash/_local/ubcp ]]
	then
		_package_ubcp_copy_copy "$scriptLib"/ubiquitous_bash/_local/ubcp "$safeTmp"/package/_local/
		rm -f "$safeTmp"/package/_local/ubcp/package_ubcp-cygwinOnly.tar.gz
		return 0
	fi
	if [[ -e "$scriptLib"/ubiquitous_bash/_lib/ubcp ]]
	then
		_package_ubcp_copy_copy "$scriptLib"/ubiquitous_bash/_lib/ubcp "$safeTmp"/package/_local/
		rm -f "$safeTmp"/package/_local/ubcp/package_ubcp-cygwinOnly.tar.gz
		return 0
	fi
	if [[ -e "$scriptLib"/ubiquitous_bash/ubcp ]]
	then
		_package_ubcp_copy_copy "$scriptLib"/ubiquitous_bash/ubcp "$safeTmp"/package/_local/
		rm -f "$safeTmp"/package/_local/ubcp/package_ubcp-cygwinOnly.tar.gz
		return 0
	fi
	
	
	cd "$outerPWD"
	_stop 1
}

# ATTENTION: Override with 'ops' or similar ONLY if necessary.
_package_subdir() {
	#return 0
	
	# ATTENTION: Error message about 'cannot move' ... 'subdirectory of itself' ... is normal .
	mkdir -p "$safeTmp"/package/"$objectName"_tmp/
	( shopt -s dotglob ; mv "$safeTmp"/package/* "$safeTmp"/package/"$objectName"_tmp/ )
	mv "$safeTmp"/package/"$objectName"_tmp "$safeTmp"/package/"$objectName"
}

# WARNING Must define "_package_license" function in ops to include license files in package!
_package_procedure() {
	_start scriptLocal_mkdir_disable
	mkdir -p "$safeTmp"/package
	
	# WARNING: Largely due to presence of '.gitignore' files in 'ubcp' .
	export safeToDeleteGit="true"
	
	_package_prog
	
	_tryExec "_package_license"
	
	_tryExec "_package_cautossh"
	
	#cp -a "$scriptAbsoluteFolder"/.git "$safeTmp"/package/ > /dev/null 2>&1
	cp "$scriptAbsoluteFolder"/.gitignore "$safeTmp"/package/ > /dev/null 2>&1
	cp "$scriptAbsoluteFolder"/.gitmodules "$safeTmp"/package/ > /dev/null 2>&1
	
	cp "$scriptAbsoluteFolder"/COPYING "$safeTmp"/package/ > /dev/null 2>&1
	cp "$scriptAbsoluteFolder"/COPYING* "$safeTmp"/package/ > /dev/null 2>&1
	
	cp "$scriptAbsoluteFolder"/gpl.txt "$safeTmp"/package/ > /dev/null 2>&1
	cp "$scriptAbsoluteFolder"/gpl-*.txt "$safeTmp"/package/ > /dev/null 2>&1
	cp "$scriptAbsoluteFolder"/gpl-3.0.txt "$safeTmp"/package/ > /dev/null 2>&1
	
	cp "$scriptAbsoluteFolder"/agpl.txt "$safeTmp"/package/ > /dev/null 2>&1
	cp "$scriptAbsoluteFolder"/agpl-*.txt "$safeTmp"/package/ > /dev/null 2>&1
	cp "$scriptAbsoluteFolder"/agpl-3.0.txt "$safeTmp"/package/ > /dev/null 2>&1
	
	cp "$scriptAbsoluteFolder"/license.txt "$safeTmp"/package/ > /dev/null 2>&1
	cp "$scriptAbsoluteFolder"/license*.txt "$safeTmp"/package/ > /dev/null 2>&1
	
	#scriptBasename=$(basename "$scriptAbsoluteLocation")
	#cp -a "$scriptAbsoluteLocation" "$safeTmp"/package/"$scriptBasename"
	cp -a "$scriptAbsoluteLocation" "$safeTmp"/package/
	cp -a "$scriptAbsoluteFolder"/ops "$safeTmp"/package/
	cp -a "$scriptAbsoluteFolder"/ops.sh "$safeTmp"/package/
	
	cp "$scriptAbsoluteFolder"/_* "$safeTmp"/package/
	cp "$scriptAbsoluteFolder"/*.sh "$safeTmp"/package/
	cp "$scriptAbsoluteFolder"/*.py "$safeTmp"/package/
	
	cp -a "$scriptLocal"/ops "$safeTmp"/package/
	cp -a "$scriptLocal"/ops.sh "$safeTmp"/package/
	
	#cp -a "$scriptAbsoluteFolder"/_bin "$safeTmp"
	#cp -a "$scriptAbsoluteFolder"/_config "$safeTmp"
	#cp -a "$scriptAbsoluteFolder"/_prog "$safeTmp"
	
	#cp -a "$scriptAbsoluteFolder"/_local "$safeTmp"/package/
	
	cp -a "$scriptAbsoluteFolder"/README.md "$safeTmp"/package/
	cp -a "$scriptAbsoluteFolder"/USAGE.html "$safeTmp"/package/
	
	cp -a "$scriptAbsoluteFolder"/README.sh "$safeTmp"/package/
	cp -a "$scriptAbsoluteFolder"/README.html "$safeTmp"/package/
	cp -a "$scriptAbsoluteFolder"/README.pdf "$safeTmp"/package/
	cp -a "$scriptAbsoluteFolder"/README.md "$safeTmp"/package/
	
	
	cp -a "$scriptAbsoluteFolder"/_config "$safeTmp"/package/
	
	
	cp -a "$scriptAbsoluteFolder"/_bin "$safeTmp"/package/
	
	
	cp "$scriptAbsoluteFolder"/fork "$safeTmp"/package/
	
	
	rm -f "$safeTmp"/package/devtask* > /dev/null 2>&1
	rm -f "$safeTmp"/package/__d_* > /dev/null 2>&1
	rm -f "$safeTmp"/package/_d_* > /dev/null 2>&1
	
	
	#if [[ "$ubPackage_enable_ubcp" == 'true' ]]
	#then
		#_package_ubcp_copy "$@"
	#fi
	
	_package_ubcp_copy "$@"
	if [[ "$ubPackage_enable_ubcp" != 'true' ]]
	then
		_safeRMR "$safeTmp"/package/_local/ubcp/conemu
		_safeRMR "$safeTmp"/package/_local/ubcp/cygwin
	fi
	
	cd "$safeTmp"/package/
	_package_subdir
	
	#! [[ "$ubPackage_enable_ubcp" == 'true' ]] && env GZIP=-9 tar -czvf "$scriptAbsoluteFolder"/package.tar.gz .
	! [[ "$ubPackage_enable_ubcp" == 'true' ]] && env XZ_OPT=-e9 tar -cJvf "$scriptAbsoluteFolder"/package.tar.xz .
	#[[ "$ubPackage_enable_ubcp" == 'true' ]] && env GZIP=-9 tar -czvf "$scriptAbsoluteFolder"/package_ubcp.tar.gz .
	#[[ "$ubPackage_enable_ubcp" == 'true' ]] && env XZ_OPT=-e9 tar -cJvf "$scriptAbsoluteFolder"/package_ubcp.tar.xz .
	[[ "$ubPackage_enable_ubcp" == 'true' ]] && env XZ_OPT=-5 tar -cJvf "$scriptAbsoluteFolder"/package_ubcp.tar.xz .
	
	if [[ "$ubPackage_enable_ubcp" == 'true' ]]
	then
		_messagePlain_request 'request: review contents of _local/ubcp/cygwin/home and similar directories'
	fi
	
	cd "$outerPWD"
	_stop
}

_package() {
	export ubPackage_enable_ubcp='false'
	"$scriptAbsoluteLocation" _package_procedure "$@"
	
	export ubPackage_enable_ubcp='true'
	"$scriptAbsoluteLocation" _package_procedure "$@"
}








_test_prog() {
	! _wantGetDep 'wkhtmltopdf' && echo 'missing: wkhtmltopdf'
	
	#! _wantGetDep 'pandoc' && echo 'missing: pandoc'
	#! _wantGetDep 'perltex'
	#! _wantGetDep 'wkhtmltopdf' && echo 'missing: wkhtmltopdf'
	
	#! _wantGetDep 'phantomjs' && echo 'missing: phantomjs'
	
	#! _wantGetDep 'html2ps' && echo 'missing: html2ps'
	
	#! _wantGetDep 'htmldoc' && echo 'missing: htmldoc'
	
	
	
	! _wantGetDep 'recode' && echo 'missing: recode'
	
	
	_getDep 'fold'
	_getDep 'perl'
	_getDep 'sed'
	
	
	! echo \$123 | grep -E '^\$[0-9]|^\.[0-9]' > /dev/null 2>&1 && _messageFAIL && _stop 1
	! echo \.123 | grep -E '^\$[0-9]|^\.[0-9]' > /dev/null 2>&1 && _messageFAIL && _stop 1
	echo 123 | grep -E '^\$[0-9]|^\.[0-9]' > /dev/null 2>&1 && _messageFAIL && _stop 1
	
	! echo '123' | grep -E '1.*3' > /dev/null 2>&1 && _messageFAIL && _stop 1
	
	local currentScriptBasename
	currentScriptBasename=$(basename "$scriptAbsoluteLocation")
	local currentScriptFolderBasename
	currentScriptFolderBasename=$(basename "$scriptAbsoluteFolder")
	if [[ "$currentScriptBasename" == 'tinyCompiler_scriptedIllustrator.sh' ]] || [[ "$currentScriptBasename" == 'scriptedIllustrator''.'* ]] || [[ "$currentScriptFolderBasename" == 'scriptedIllustrator' ]]
	then
		! _wantGetDep 'asciidoc' && echo 'missing: asciidoc'
		! _wantGetDep /etc/asciidoc/dblatex/asciidoc-dblatex.sty && echo 'missing: asciidoc: dblatex'
		! _wantGetDep /etc/asciidoc/dblatex/asciidoc-dblatex.xsl && echo 'missing: asciidoc: dblatex'
	fi
	
	
	! _wantGetDep gs && echo 'missing: gs'
	
	return 0
}





##### Core

_tiny_criticalDep() {
	! _getAbsolute_criticalDep && exit 1
	
	! type -p sed > /dev/null 2>&1 && exit 1
	! type -p head > /dev/null 2>&1 && exit 1
	! type -p awk > /dev/null 2>&1 && exit 1
	! type -p grep > /dev/null 2>&1 && exit 1
	! type -p ls > /dev/null 2>&1 && exit 1
	! type -p base64 > /dev/null 2>&1 && exit 1
	
	! type -p xz > /dev/null 2>&1 && exit 1
	
	! type -p fold > /dev/null 2>&1 && exit 1
	
	#! type -p cksum > /dev/null 2>&1 && exit 1
	#! type -p env > /dev/null 2>&1 && exit 1
	
	return 0
}

_tiny_set_strings() {
	_tryExec _set_strings_markup_scribble
	
	_set_strings_markup_shell
	_tryExec _set_strings_markup_editable
	_tryExec _set_strings_markup_terminal
	
	_set_strings_markup_html
	_tryExec _set_strings_markup_mediawiki
	_tryExec _set_strings_markup_asciidoc
	
	_tryExec _set_strings_markup_python_docx
	
	
	# CAUTION: Developer convenience, not relied upon. Causes 'export -f' functions under '_set_markup_' functions to take precedence over upstream.
	[[ "$current_scriptedIllustrator_markup" != "" ]] && _set_markup_"$current_scriptedIllustrator_markup"
}
_set_strings() {
	_tiny_set_strings "$@"
}




# https://stackoverflow.com/questions/1279953/how-to-execute-the-output-of-a-command-within-the-current-shell
#eval "$( _tinyCompiler_scriptedIllustrator_declareFunctions | xz -z -e9 -C none --threads=1 | base64 | base64 -d | xz -d)"
#source <( _tinyCompiler_scriptedIllustrator_declareFunctions | xz -z -e9 -C none --threads=1 | base64 | base64 -d | xz -d)
_tinyCompiler_scriptedIllustrator_declareFunctions() {
	declare -f _realpath_L
	declare -f _realpath_L_s
	declare -f _cygwin_translation_rootFileParameter
	declare -f _getAbsolute_criticalDep
	
	declare -f _tiny_criticalDep
	
	declare -f _tryExec
	declare -f _tryExecFull
	
	
	#declare -f _wantGetDep
	#declare -f _wantDep
	declare -f _typeDep
	declare -f _if_cygwin
	#declare -f _wantSudo
	
	declare -f _getDep
	
	_wantGetDep() {
		_typeDep "$@"
	}
	export -f _wantGetDep
	declare -f _wantGetDep
	_wantDep() {
		_typeDep "$@"
	}
	export -f _wantDep
	declare -f _wantDep
	_wantSudo() {
		false
	}
	export -f _wantSudo
	declare -f _wantSudo
	_getDep() {
		_typeDep "$@"
	}
	export -f _getDep
	declare -f _getDep
	
	# CAUTION: Interleaved markup scripts may not be correctly interpreted as bash when called through 'sudo', among other problems. Apparently, this may occur even if 'bash -c' is called by sudo .
	sudo() {
		false
	}
	export -f sudo
	declare -f sudo
	
	
	
	# Roughly equivalent to 'specglobalvars'.
	declare -f _tiny_set_strings
	declare -f _set_strings
	
	declare -f _getScriptAbsoluteLocation
	declare -f _getScriptAbsoluteFolder
	declare -f _getAbsoluteLocation
	declare -f _uid
	declare -f _safeEcho
	declare -f _safeEcho_newline
	declare -f _safeEcho_quoteAddSingle
	declare -f _safeEcho_quoteAddSingle_newline
	declare -f _safeEcho_quoteAddDouble
	declare -f _safeEcho_quoteAddDouble_newline
	
	declare -f _color_demo
	declare -f _color_end
	declare -f _color_begin_request
	declare -f _color_begin_nominal
	declare -f _color_begin_probe
	declare -f _color_begin_probe_noindent
	declare -f _color_begin_good
	declare -f _color_begin_warn
	declare -f _color_begin_bad
	declare -f _color_begin_Normal
	declare -f _color_begin_Error
	declare -f _color_begin_DELAYipc
	
	declare -f _messageNormal
	declare -f _messageError
	declare -f _messagePlain_request
	declare -f _messagePlain_nominal
	declare -f _messagePlain_good
	declare -f _messagePlain_warn
	declare -f _messagePlain_bad
	declare -f _messagePlain_probe
	declare -f _messagePlain_probe_noindent
	declare -f _messagePlain_probe_cmd
	declare -f _messagePlain_probe_var
	declare -f _messagePlain_probe_quoteAddDouble
	declare -f _messagePlain_probe_quoteAdd
	declare -f _messagePlain_probe_quoteAddSingle
	
	declare -f _qalculate_terse
	declare -f _qalculate
	declare -f _qalculate_pipe
	declare -f _qalculate_script
	declare -f _qalculate_solve
	declare -f _qalculate_nsolve
	
	declare -f _octave_terse
	declare -f _octave
	declare -f _octave_pipe
	declare -f _octave_script
	declare -f _octave_filter-messages
	declare -f _octave_solve
	declare -f _octave_nsolve
	
	
	declare -f _solve
	declare -f solve
	declare -f nsolve
	declare -f _clc
	declare -f clc
	declare -f c
	
	
	declare -f _README
	declare -f _HEADER-scriptCode
	declare -f _FOOTER-scriptCode
	declare -f _DOCUMENT-scriptCode
	declare -f _ignore_DOCUMENT_HEADER
	declare -f _ignore_DOCUMENT_FOOTER
	declare -f _HEADER
	declare -f _FOOTER
	declare -f _DOCUMENT
	declare -f _onlyAttachment
	declare -f _noAttachment
	declare -f _rmAttachment
	declare -f _attachAttachment
	declare -f _extractAttachment
	
	
	declare -f _test_prog
	declare -f _test_built_default
	declare -f _test_default
	
	declare -f _default_main
	declare -f _default
	declare -f _default_collect
	declare -f _default_gather
	declare -f _gather
	declare -f _default_enter
	declare -f _default_launch
	
	
	# ATTENTION: WIP.
	_tinyCompiler_scriptedIllustrator_declareFunctions_wip
	
	# ATTENTION: Experimental.
	_tinyCompiler_scriptedIllustrator_declareFunctions_experimental
	
	
	
	_tinyCompiler_scriptedIllustrator_declareFunctions_core
	
	
	
	_tinyCompiler_scriptedIllustrator_declareFunctions_scribble
	
	_tinyCompiler_scriptedIllustrator_declareFunctions_markup_shell
	_tryExec _tinyCompiler_scriptedIllustrator_declareFunctions_markup_editable
	_tinyCompiler_scriptedIllustrator_declareFunctions_markup_terminal
	
	_tinyCompiler_scriptedIllustrator_declareFunctions_markup_html
	_tryExec _tinyCompiler_scriptedIllustrator_declareFunctions_markup_mediawiki
	_tryExec _tinyCompiler_scriptedIllustrator_declareFunctions_markup_asciidoc
	
	_tryExec _tinyCompiler_scriptedIllustrator_declareFunctions_markup_python_docx
}



_tinyCompiler_scriptedIllustrator() {
	_messageNormal 'tinyCompiler_scriptedIllustrator'
	
	_findUbiquitous
	_vars_generate_bash
	export progScript="$scriptAbsoluteFolder"/scriptedIllustrator.sh
	rm -f "$progScript" >/dev/null 2>&1
	
	
	# DANGER: Extremely large filesizes (caused by too much 'current_internal_compressedFuncssedFunctions') may not be compatible with important use cases (eg. 'mediawiki').
	# https://en.wikipedia.org/wiki/Wikipedia:Article_size
	#  'maximum limit for Wikipedia is set by the MediaWiki software default article size limit, 2048 kibibytes (specifically, 2,097,152 bytes)'
	echo "#####Functions. Some may be from 'ubiquitous bash' ." > "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	#echo "# DANGER: Compatibility with some important use cases (eg. 'mediawiki') may fail if 'current_internal_CompressedFunctions_bytes' is substantial ." >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	
	
	local current_internal_CompressedFunctions
	current_internal_CompressedFunctions=$(_tinyCompiler_scriptedIllustrator_declareFunctions | xz -z -e9 -C crc64 --threads=1 | base64 -w 156 | fold -w 156 -s)
	local current_internal_CompressedFunctions_cksum
	current_internal_CompressedFunctions_cksum=$(echo "$current_internal_CompressedFunctions" | env CMD_ENV=xpg4 cksum | cut -f1 -d\  | tr -dc '0-9')
	local current_internal_CompressedFunctions_bytes
	current_internal_CompressedFunctions_bytes=$(echo "$current_internal_CompressedFunctions" | wc -c | tr -dc '0-9')
	
	
	echo '#_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	echo 'current_internal_CompressedFunctions_bytes='\'"$current_internal_CompressedFunctions_bytes"\' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	echo 'current_internal_CompressedFunctions_cksum='\'"$current_internal_CompressedFunctions_cksum"\' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	echo 'current_internal_CompressedFunctions='\' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	echo "$current_internal_CompressedFunctions"\' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	echo '! echo "$current_internal_CompressedFunctions" | base64 -d | xz -d > /dev/null && exit 1' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	echo 'source <( echo "$current_internal_CompressedFunctions" | base64 -d | xz -d )' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	#echo 'eval "$( echo "$current_internal_CompressedFunctions" | base64 -d | xz -d )"' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	echo 'unset current_internal_CompressedFunctions ; unset current_internal_CompressedFunctions_cksum ; unset current_internal_CompressedFunctions_bytes' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	echo '# https://github.com/mirage335/scriptedIllustrator' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	echo '#_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions_uk4uPhB663kVcygT0q_compressedFunctions' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	
	# WARNING: Declaring 'markup' functions as plaintext may cause inappropriate interpretation!
	#_tinyCompiler_scriptedIllustrator_declareFunctions >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	
	echo '! _tiny_criticalDep && exit 1' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	unset current_internal_CompressedFunctions ; unset current_internal_CompressedFunctions_cksum ; unset current_internal_CompressedFunctions_bytes
	
	
	echo '' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	echo '# Special Global Variables' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	echo '_tiny_set_strings' >> "$scriptAbsoluteFolder"/_prog/scriptedIllustrator/functions/19_declared_functions.sh
	
	
	# CAUTION: Do NOT add trap unless necessary or within a function call. Unnecessary and may be problematic for a script which imports 'ubiquitous bash' and does not nominally use '_start'/'_stop'/"$safeTmp"/etc .
	
	#echo '#!/usr/bin/env bash' > "$progScript"
	
	export includeScriptList
	#_compile_bash_header
	includeScriptList+=( "scriptedIllustrator"/01_shell_header.sh )
	#includeScriptList+=( "generic"/minimalheader.sh )
	includeScriptList+=( "scriptedIllustrator"/05_editable_header.sh )
	
	includeScriptList+=( "scriptedIllustrator"/functions/19_declared_functions.sh )
	#includeScriptList+=( "scriptedIllustrator"/functions/20_wip_functions.sh )
	#includeScriptList+=( "scriptedIllustrator"/functions/25_experimental_functions.sh )
	includeScriptList+=( "scriptedIllustrator"/30_import_ubiquitousBash.sh )
	
	#includeScriptList+=( "scriptedIllustrator"/functions/40_splice_functions.sh )
	
	includeScriptList+=( "scriptedIllustrator"/70_core.sh )
	includeScriptList+=( "scriptedIllustrator"/79_program.sh )
	
	includeScriptList+=( "scriptedIllustrator"/80_footer.sh )
	
	
	_messagePlain_nominal 'init: _includeScripts'
	if _includeScripts "${includeScriptList[@]}"
	then
		_messagePlain_good 'pass: _includeScripts'
	else
		_messagePlain_warn 'fail: _includeScripts'
	fi
	
	
	
	
	
	
	#echo >> "$progScript"
	#echo 'exit 0' >> "$progScript"
	
	# WARNING: Checksum is strongly discouraged, since direct editing of the file is intended!
	_tryExecFull _ub_cksum_special_derivativeScripts_write "$progScript"
	
	chmod u+x "$progScript"
	
	_tinyCompiler_scriptedIllustrator_convert
}


_tinyCompiler_scriptedIllustrator_convert() {
	"$progScript"
}







_refresh_anchors() {
	cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_bash.bat
}


#####Program

#Typically launches an application - ie. through virtualized container.
_launch() {
	false
	#"$@"
}

#Typically gathers command/variable scripts from other (ie. yaml) file types (ie. AppImage recipes).
_collect() {
	false
}

#Typical program entry point, absent any instancing support.
_enter() {
	_launch "$@"
}

#Typical program entry point.
_main() {
	_start
	
	_collect
	
	_enter "$@"
	
	_stop
}


#####Markup.


_tinyCompiler_scriptedIllustrator_declareFunctions_wip() {
	true
}


_experiment() {
	true
	
	#_HEADER-scriptCode | head -n-1
	#_ignore_DOCUMENT_HEADER
	#echo '#__HEADER-scriptCode_uk4uPhB663kVcygT0q_HEADER-scriptCode__'
	#_DOCUMENT-scriptCode
	#echo '#__FOOTER-scriptCode_uk4uPhB663kVcygT0q_FOOTER-scriptCode__'
	#_ignore_DOCUMENT_FOOTER
	#_FOOTER-scriptCode | tail -n+2
	
	#_HEADER | head -n-1
	#_ignore_DOCUMENT_HEADER
	#echo '#__HEADER_uk4uPhB663kVcygT0q_HEADER__'
	#_DOCUMENT
	#echo '#__FOOTER_uk4uPhB663kVcygT0q_FOOTER__'
	#_ignore_DOCUMENT_FOOTER
	#_FOOTER | tail -n+2
	
	#_HEADER
	#_DOCUMENT
	#_FOOTER
	
	#cat experiment.sh | grep -v 'ignore_CZXWXcRMTo8EmM8i4d$'
	
	#"$scriptAbsoluteLocation" DOCUMENT
}


















_tinyCompiler_scriptedIllustrator_declareFunctions_experimental() {
	declare -f _experiment
}



_README() {
	local currentAttachmentLine
	currentAttachmentLine=`awk '/^#__README_uk4uPhB663kVcygT0q_README__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine="$currentAttachmentLine - 1"
	head -n$currentAttachmentLine "$scriptAbsoluteLocation"
}
#[[ "$1" == "" ]] && _README && exit 0

_HEADER-scriptCode() {
	local currentAttachmentLine
	currentAttachmentLine=`awk '/^#__HEADER-scriptCode_uk4uPhB663kVcygT0q_HEADER-scriptCode__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine="$currentAttachmentLine - 1"
	head -n$currentAttachmentLine "$scriptAbsoluteLocation"
}
_FOOTER-scriptCode() {
	local currentAttachmentLine
	currentAttachmentLine=`awk '/^#__FOOTER-scriptCode_uk4uPhB663kVcygT0q_FOOTER-scriptCode__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine="$currentAttachmentLine - 1"
	tail -n+$currentAttachmentLine "$scriptAbsoluteLocation"
}
_DOCUMENT-scriptCode() {
	local currentAttachmentLine_header
	currentAttachmentLine_header=`awk '/^#__HEADER-scriptCode_uk4uPhB663kVcygT0q_HEADER-scriptCode__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine_header="$currentAttachmentLine_header - 1"
	
	local currentAttachmentLine_footer
	currentAttachmentLine_footer=`awk '/^#__FOOTER-scriptCode_uk4uPhB663kVcygT0q_FOOTER-scriptCode__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine_footer="$currentAttachmentLine_footer - 1 -1"
	
	local currentAttachmentLine_length
	let currentAttachmentLine_length="$currentAttachmentLine_footer - $currentAttachmentLine_header"
	
	
	head -n$currentAttachmentLine_footer "$scriptAbsoluteLocation" | tail -n$currentAttachmentLine_length
}
_ignore_DOCUMENT_HEADER() {
#echo -e "_ignore_CZXWXcRMTo8EmM8i4d() {\ntrue #_ignore_CZXWXcRMTo8EmM8i4d"
echo "cat << 'ignore_CZXWXcRMTo8EmM8i4d' > /dev/null 2>&1 #_ignore_CZXWXcRMTo8EmM8i4d"
}
_ignore_DOCUMENT_FOOTER() {
echo "ignore_CZXWXcRMTo8EmM8i4d"
#echo "} #_ignore_CZXWXcRMTo8EmM8i4d"
}
#[[ "$1" == "" ]] && _HEADER-scriptCode && exit 0


_HEADER() {
	local currentAttachmentLine
	currentAttachmentLine=`awk '/^#__HEADER_uk4uPhB663kVcygT0q_HEADER__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine="$currentAttachmentLine - 1"
	head -n$currentAttachmentLine "$scriptAbsoluteLocation"
}
_FOOTER() {
	local currentAttachmentLine
	currentAttachmentLine=`awk '/^#__FOOTER_uk4uPhB663kVcygT0q_FOOTER__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine="$currentAttachmentLine - 1"
	tail -n+$currentAttachmentLine "$scriptAbsoluteLocation"
}
_DOCUMENT() {
	local currentAttachmentLine_header
	currentAttachmentLine_header=`awk '/^#__HEADER_uk4uPhB663kVcygT0q_HEADER__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine_header="$currentAttachmentLine_header - 1"
	
	local currentAttachmentLine_footer
	currentAttachmentLine_footer=`awk '/^#__FOOTER_uk4uPhB663kVcygT0q_FOOTER__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine_footer="$currentAttachmentLine_footer - 1 -1"
	
	local currentAttachmentLine_length
	let currentAttachmentLine_length="$currentAttachmentLine_footer - $currentAttachmentLine_header"
	
	
	head -n$currentAttachmentLine_footer "$scriptAbsoluteLocation" | tail -n$currentAttachmentLine_length
}



#env XZ_OPT=-e9 tar -cJvf ./attachment.tar.xz ./attachedFiles
# https://www.linuxjournal.com/node/1005818
_onlyAttachment() {
	local currentAttachmentLine
	currentAttachmentLine=`awk '/^__ATTACHMENT_uk4uPhB663kVcygT0q_ATTACHMENT__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	tail -n+$currentAttachmentLine "$scriptAbsoluteLocation" | base64 -d
}
_noAttachment() {
	local currentAttachmentLine
	currentAttachmentLine=`awk '/^__ATTACHMENT_uk4uPhB663kVcygT0q_ATTACHMENT__/ {print NR + 1; exit 0; }' "$scriptAbsoluteLocation"`
	let currentAttachmentLine="$currentAttachmentLine - 1"
	head -n$currentAttachmentLine "$scriptAbsoluteLocation"
}
_rmAttachment() {
	 _start
	 rmdir "$scriptLocal" > /dev/null 2>&1
	# WARNING: Unattached package file may be deleted by script through user called functions.
	_extractAttachment
	_noAttachment > "$safeTmp"/temp.sh
	mv "$safeTmp"/temp.sh "$scriptAbsoluteLocation"
	chmod u+x "$scriptAbsoluteLocation"
	 _stop
}
_attachAttachment() {
	 _start
	 rmdir "$scriptLocal" > /dev/null 2>&1
	_noAttachment > "$safeTmp"/temp.sh
	cat "$scriptAbsoluteFolder"/attachment.tar.xz | base64 >> "$safeTmp"/temp.sh
	mv "$safeTmp"/temp.sh "$scriptAbsoluteLocation"
	chmod u+x "$scriptAbsoluteLocation"
	 _stop
}
_extractAttachment() {
	[[ -e "$scriptAbsoluteFolder"/attachment.tar.xz ]] && return 0
	_onlyAttachment > "$scriptAbsoluteFolder"/attachment.tar.xz
}








_tinyCompiler_scriptedIllustrator_declareFunctions_core() {
	true
}


_test_built_default() {
	export noDate="true"
	date() {
		echo 'disabled: date'
	}
	export -f date
	
	
	# CAUTION: Do NOT add trap unless necessary or within a function call. Unnecessary and may be problematic for a script which imports 'ubiquitous bash' and does not nominally use '_start'/'_stop'/"$safeTmp"/etc .
	
	#Traps, if script is not imported into existing shell, or bypass requested.
	# WARNING Exact behavior of this system is critical to some use cases.
	trap 'excode=$?; _stop $excode; trap - EXIT; echo $excode' EXIT HUP QUIT PIPE 	# reset
	trap 'excode=$?; trap "" EXIT; _stop $excode; echo $excode' EXIT HUP QUIT PIPE 	# ignore
	
	# DANGER: Mechanism of workaround 'ub_trapSet_stop_emergency' is not fully understood, and was added undesirably late in development, with unknown effects. Nevertheless, a need for such functionality is expected to be encountered only rarely.
	# At least '_closeChRoot' , '_userChRoot' , '_userVBox' do not seem to have lost functionality.
	# DANGER: Any shell command matching ' _timeout.*&$ ' (backgrounding of _timeout) will probably be unable to reach '_stop' correctly, and may not remove temporary directories, etc.
	if [[ "$ub_trapSet_stop_emergency" != 'true' ]]
	then
		trap 'excode=$?; _stop_emergency $excode; trap - EXIT; echo $excode' INT TERM	# reset
		trap 'excode=$?; trap "" EXIT; _stop_emergency $excode; echo $excode' INT TERM	# ignore
		export ub_trapSet_stop_emergency='true'
	fi
	
	
	_start
	
	_messageNormal 'init: _test_built_default'
	
	cp "$scriptAbsoluteLocation" "$safeTmp"/scriptedIllustrator.sh
	chmod u+x "$safeTmp"/scriptedIllustrator.sh
	
	_messagePlain_nominal '_test: comparison of self-modified html from html from shell (original)'
	"$safeTmp"/scriptedIllustrator.sh _scribble_html "$safeTmp"/scriptedIllustrator.html
	cp "$safeTmp"/scriptedIllustrator.html "$safeTmp"/scriptedIllustrator.html.compare.html
	"$safeTmp"/scriptedIllustrator.html _scribble_html
	"$safeTmp"/scriptedIllustrator.html _scribble_html_presentation
	! diff --color "$safeTmp"/scriptedIllustrator.html "$safeTmp"/scriptedIllustrator.html.compare.html && _messagePlain_bad 'fail: unexpected differences'
	"$safeTmp"/scriptedIllustrator.html _scribble_html
	! diff --color "$safeTmp"/scriptedIllustrator.html "$safeTmp"/scriptedIllustrator.html.compare.html && _messagePlain_bad 'fail: unexpected differences'
	"$safeTmp"/scriptedIllustrator.html _scribble_html "$safeTmp"/scriptedIllustrator.html
	! diff --color "$safeTmp"/scriptedIllustrator.html "$safeTmp"/scriptedIllustrator.html.compare.html && _messagePlain_bad 'fail: unexpected differences'
	
	_messagePlain_nominal '_test: comparison of html from shell (original) versus html (from original and as shell)'
	"$safeTmp"/scriptedIllustrator.sh _scribble_html "$safeTmp"/scriptedIllustrator.html
	mv "$safeTmp"/scriptedIllustrator.html "$safeTmp"/scriptedIllustrator.html.sh
	chmod u+x "$safeTmp"/scriptedIllustrator.html.sh
	"$safeTmp"/scriptedIllustrator.html.sh _scribble_html "$safeTmp"/scriptedIllustrator.html
	! diff --color "$safeTmp"/scriptedIllustrator.html "$safeTmp"/scriptedIllustrator.html.sh && _messagePlain_bad 'fail: unexpected differences'
	
	_messagePlain_nominal '_test: rewrite of shell (converted) from shell (original)'
	cat "$safeTmp"/scriptedIllustrator.html | grep -v scriptedIllustrator_markup_uk4uPhB663kVcygT0q > "$safeTmp"/converted.sh
	chmod u+x "$safeTmp"/converted.sh
	
	# Spacing differences (ie. newlines) on first conversion are normal (due to machine output being more compressed) - all other differences are not.
	#_messagePlain_nominal '_test: comparison of shell (original) versus shell (from original): some differences normal'
	# KDiff3 visualization is significantly simpler.
	#! diff --color "$safeTmp"/scriptedIllustrator.sh "$safeTmp"/converted.sh && _messagePlain_probe 'differences (most likely insiginificant)'
	
	_messagePlain_nominal '_test: comparison of html from shell (converted) versus html from shell (original)'
	"$safeTmp"/converted.sh _scribble_html "$safeTmp"/converted.html
	mv "$safeTmp"/converted.html "$safeTmp"/converted.html.sh
	chmod u+x "$safeTmp"/converted.html.sh
	"$safeTmp"/converted.html.sh _scribble_html "$safeTmp"/converted.html
	! diff --color "$safeTmp"/converted.html "$safeTmp"/converted.html.sh && _messagePlain_bad 'fail: unexpected differences'
	
	_messagePlain_nominal '_test: comparison of shell (converted) versus shell from html (filtered) from shell (converted)'
	cat "$safeTmp"/converted.html | grep -v scriptedIllustrator_markup_uk4uPhB663kVcygT0q > "$safeTmp"/converted_repeat.sh
	chmod u+x "$safeTmp"/converted_repeat.sh
	! diff --color "$safeTmp"/converted.sh "$safeTmp"/converted_repeat.sh && _messagePlain_bad 'fail: unexpected differences'
	
	
	rm "$safeTmp"/scriptedIllustrator.html "$safeTmp"/scriptedIllustrator.html.sh "$safeTmp"/converted.sh "$safeTmp"/converted.html "$safeTmp"/converted.html.sh "$safeTmp"/converted_repeat.sh
	
	_messagePlain_good 'done: _test_built_default'
	
	_stop
}

_test_default() {
	_test_prog "$@"
	
	_test_built_default "$@"
}

#####Program
# WARNING: Defining functions with the usual '_main', '_collect', '_enter', '_launch', etc, names, may conflict with or be overloaded by the same function definitions in 'tinyCompiler'.

# Equivalent to '_main', with the usual '_collect' (aka. '_gather'), '_enter', '_launch', etc.
_default() {
	#true
	
	_scribble_all "$@"
}




_scribble_html_presentation() {
	export current_scriptedIllustrator_presentation='true'
	_scribble_html "$@"
	export current_scriptedIllustrator_presentation=""
}


_scribble_html() {
	_set_markup_html
	_set_strings
	_set_strings_markup_workaround_html_prog
	
	local currentScriptBasename
	currentScriptBasename=$(basename "$scriptAbsoluteLocation")
	
	# https://stackoverflow.com/questions/26633623/remove-all-text-from-last-dot-in-bash
	currentScriptBasename=$(_safeEcho_newline "$currentScriptBasename" | _scribble_filter_extensions )
	[[ "$current_scriptedIllustrator_presentation" == 'true' ]] && currentScriptBasename="$currentScriptBasename"_presentation
	
	local currentOutputFile
	currentOutputFile="$scriptAbsoluteFolder"/"$currentScriptBasename"."$current_scriptedIllustrator_markup"
	[[ "$current_scriptedIllustrator_markup_markdown" == 'true' ]] && currentOutputFile="$scriptAbsoluteFolder"/"$currentScriptBasename".md
	[[ "$1" != "" ]] && currentOutputFile=$(_getAbsoluteLocation "$1")
	[[ "$1" == "-" ]] && currentOutputFile=/dev/stdout
	
	echo -n > "$currentOutputFile".tmp
	! [[ -e "$currentOutputFile".tmp ]] && exit 1
	
	
	
	echo -n "$document_html_root_begin" >> "$currentOutputFile".tmp
	echo >> "$currentOutputFile".tmp
	
	
	
	
	_HEADER | _filter__scriptedIllustrator_markup >> "$currentOutputFile".tmp
	
	#echo 'scriptedIllustrator_markup_uk4uPhB663kVcygT0q --> --> <!-- ' >> "$currentOutputFile".tmp
	
	"$scriptAbsoluteLocation" DOCUMENT >> "$currentOutputFile".tmp
	
	_FOOTER | _filter__scriptedIllustrator_markup >> "$currentOutputFile".tmp
	
	
	
	
	#echo -n "$document_html_root_end" >> "$currentOutputFile".tmp
	echo -n filename."$current_scriptedIllustrator_markup" "$document_html_root_end" >> "$currentOutputFile".tmp
	#echo -n "$currentScriptBasename"."$current_scriptedIllustrator_markup" "$document_html_root_end" >> "$currentOutputFile".tmp
	echo >> "$currentOutputFile".tmp
	
	if [[ "$current_scriptedIllustrator_markup_markdown" == 'true' ]]
	then
		mv "$currentOutputFile".tmp "$currentOutputFile".tmp.html
		echo '<!-- scriptedIllustrator_markup_uk4uPhB663kVcygT0q 
#exit # scriptedIllustrator_markup_uk4uPhB663kVcygT0q ' >> "$currentOutputFile".tmp.md
		cat "$currentOutputFile".tmp.md "$currentOutputFile".tmp.html > "$currentOutputFile".tmp
		rm -f "$currentOutputFile".tmp.md "$currentOutputFile".tmp.html
	fi
	
	chmod u+x "$currentOutputFile".tmp
	mv "$currentOutputFile".tmp "$currentOutputFile"
	
	export current_scriptedIllustrator_markup=
	unset current_scriptedIllustrator_markup
}

_scribble_pdf() {
	_set_markup_html
	_set_strings
	_set_strings_markup_html
	
	local currentScriptBasename
	currentScriptBasename=$(basename "$scriptAbsoluteLocation")
	currentScriptBasename=$(_safeEcho_newline "$currentScriptBasename" | _scribble_filter_extensions )
	
	local currentOutputFile
	currentOutputFile="$scriptAbsoluteFolder"/"$currentScriptBasename".pdf
	[[ "$1" != "" ]] && currentOutputFile=$(_getAbsoluteLocation "$1")
	[[ "$1" == "-" ]] && currentOutputFile=/dev/stdout
	
	! type wkhtmltopdf > /dev/null 2>&1 && rm -f "$currentOutputFile" > /dev/null 2>&1 && return 1
	
	
	rm -f "$currentOutputFile".html > /dev/null 2>&1
	_scribble_html_presentation "$currentOutputFile".html
	
	rm -f "$currentOutputFile" > /dev/null 2>&1
	#--zoom 1.0 --enable-javascript --javascript-delay 750 --enable-local-file-access --disable-plugins --disable-smart-shrinking
	#wkhtmltopdf --page-size A4 "$currentOutputFile".html "$currentOutputFile".a4.pdf
	#wkhtmltopdf --page-size Letter "$currentOutputFile".html "$currentOutputFile".letter.pdf
	wkhtmltopdf --page-size Letter "$currentOutputFile".html "$currentOutputFile"
	rm -f "$currentOutputFile".html
	[[ -e "$currentOutputFile" ]] && return 0
	
	export current_scriptedIllustrator_markup=
	unset current_scriptedIllustrator_markup
}

_scribble_markdown() {
	export current_scriptedIllustrator_markup_markdown='true'
	
	if [[ "$current_markup_html_fold" == "" ]]
	then
		export current_markup_html_fold=76
		_scribble_html "$@"
		export current_markup_html_fold=
		unset current_markup_html_fold
	else
		_scribble_html "$@"
	fi
	
	export current_scriptedIllustrator_markup_markdown=""
	
	export current_scriptedIllustrator_markup=
	unset current_scriptedIllustrator_markup
}
_scribble_md() {
	_scribble_markdown "$@"
}

# ###


_scribble_mediawiki() {
	_set_markup_mediawiki
	_set_strings
	_set_strings_markup_workaround_mediawiki_prog
	
	local currentScriptBasename
	currentScriptBasename=$(basename "$scriptAbsoluteLocation")
	
	# https://stackoverflow.com/questions/26633623/remove-all-text-from-last-dot-in-bash
	currentScriptBasename=$(_safeEcho_newline "$currentScriptBasename" | _scribble_filter_extensions )
	[[ "$current_scriptedIllustrator_presentation" == 'true' ]] && currentScriptBasename="$currentScriptBasename"_presentation
	
	local currentOutputFile
	currentOutputFile="$scriptAbsoluteFolder"/"$currentScriptBasename".txt
	! _safeEcho_newline "$currentOutputFile" | grep '\.'"$current_scriptedIllustrator_markup".txt > /dev/null 2>&1 && currentOutputFile="$scriptAbsoluteFolder"/"$currentScriptBasename"."$current_scriptedIllustrator_markup".txt
	[[ "$1" != "" ]] && currentOutputFile=$(_getAbsoluteLocation "$1")
	[[ "$1" == "-" ]] && currentOutputFile=/dev/stdout
	
	echo -n > "$currentOutputFile".tmp
	! [[ -e "$currentOutputFile".tmp ]] && exit 1
	
	
	
	echo -n "$document_mediawiki_root_begin" >> "$currentOutputFile".tmp
	echo >> "$currentOutputFile".tmp
	
	
	
	
	_HEADER | _filter__scriptedIllustrator_markup >> "$currentOutputFile".tmp
	
	"$scriptAbsoluteLocation" DOCUMENT >> "$currentOutputFile".tmp
	
	_FOOTER | _filter__scriptedIllustrator_markup >> "$currentOutputFile".tmp
	
	
	
	
	#echo -n "$document_mediawiki_root_end" >> "$currentOutputFile".tmp
	echo -n filename."$current_scriptedIllustrator_markup".txt "$document_mediawiki_root_end" >> "$currentOutputFile".tmp
	#echo -n "$currentScriptBasename"."$current_scriptedIllustrator_markup".txt "$document_mediawiki_root_end" >> "$currentOutputFile".tmp
	echo >> "$currentOutputFile".tmp
	
	chmod u+x "$currentOutputFile".tmp
	mv "$currentOutputFile".tmp "$currentOutputFile"
	
	export current_scriptedIllustrator_markup=
	unset current_scriptedIllustrator_markup
}


_scribble_asciidoc() {
	_set_markup_asciidoc
	_set_strings
	_set_strings_markup_workaround_asciidoc_prog
	
	local currentScriptBasename
	currentScriptBasename=$(basename "$scriptAbsoluteLocation")
	
	# https://stackoverflow.com/questions/26633623/remove-all-text-from-last-dot-in-bash
	currentScriptBasename=$(_safeEcho_newline "$currentScriptBasename" | _scribble_filter_extensions )
	[[ "$current_scriptedIllustrator_presentation" == 'true' ]] && currentScriptBasename="$currentScriptBasename"_presentation
	
	local currentOutputFile
	currentOutputFile="$scriptAbsoluteFolder"/"$currentScriptBasename".txt
	! _safeEcho_newline "$currentOutputFile" | grep '\.'"$current_scriptedIllustrator_markup".txt > /dev/null 2>&1 && currentOutputFile="$scriptAbsoluteFolder"/"$currentScriptBasename"."$current_scriptedIllustrator_markup".txt
	[[ "$1" != "" ]] && currentOutputFile=$(_getAbsoluteLocation "$1")
	[[ "$1" == "-" ]] && currentOutputFile=/dev/stdout
	
	echo -n > "$currentOutputFile".tmp
	! [[ -e "$currentOutputFile".tmp ]] && exit 1
	
	
	
	echo -n "$document_asciidoc_root_begin" >> "$currentOutputFile".tmp
	echo >> "$currentOutputFile".tmp
	
	
	
	
	#_HEADER | _filter__scriptedIllustrator_markup >> "$currentOutputFile".tmp
	
	"$scriptAbsoluteLocation" DOCUMENT >> "$currentOutputFile".tmp
	
	#_FOOTER | _filter__scriptedIllustrator_markup >> "$currentOutputFile".tmp
	
	
	
	
	#echo -n "$document_asciidoc_root_end" >> "$currentOutputFile".tmp
	echo -n filename."$current_scriptedIllustrator_markup".txt "$document_asciidoc_root_end" >> "$currentOutputFile".tmp
	#echo -n "$currentScriptBasename"."$current_scriptedIllustrator_markup".txt "$document_asciidoc_root_end" >> "$currentOutputFile".tmp
	echo >> "$currentOutputFile".tmp
	
	chmod u+x "$currentOutputFile".tmp
	mv "$currentOutputFile".tmp "$currentOutputFile"
	
	
	
	#date() {
	#	echo 'disabled: date'
	#}
	#export -f date
	
	rm -f "$scriptAbsoluteFolder"/"$currentScriptBasename"."$current_scriptedIllustrator_markup".html
	
	asciidoc "$currentOutputFile"
	# https://stackoverflow.com/questions/8323287/how-can-i-use-sed-to-delete-2-lines-after-match-matches
	sed -i -e '/^Last updated/,+1d' "$scriptAbsoluteFolder"/"$currentScriptBasename"."$current_scriptedIllustrator_markup".html
	
	wkhtmltopdf --page-size Letter "$scriptAbsoluteFolder"/"$currentScriptBasename"."$current_scriptedIllustrator_markup".html "$scriptAbsoluteFolder"/"$currentScriptBasename"."$current_scriptedIllustrator_markup".pdf
	
	export current_scriptedIllustrator_markup=
	unset current_scriptedIllustrator_markup
}






# ###

_scribble_all() {
	local currentScriptBasename
	currentScriptBasename=$(basename "$scriptAbsoluteLocation")
	
	if [[ "$currentScriptBasename" == 'scriptedIllustrator''.'* ]]
	then
	
		"$scriptAbsoluteLocation" DOCUMENT > "$scriptAbsoluteLocation".out.txt
	
	fi
	
	
	_scribble_html "$@"
	_scribble_html_presentation "$@"
	
	_scribble_pdf "$@"
	
	_scribble_markdown "$@"
	
	# ###
	
	
	
	_scribble_mediawiki "$@"
	
	
	
	
	
	
	if [[ "$currentScriptBasename" == 'scriptedIllustrator''.'* ]]
	then
		
		_scribble_asciidoc "$@"
		
	fi
	
	
	return;
}

# ###

_scribble_filter_extensions() {
	sed 's/\.mediawiki\.txt$/.txt/' | sed 's/\.asciidoc\.txt$/.txt/' | sed 's/\.[^.]*$//'
}



_tinyCompiler_scriptedIllustrator_declareFunctions_scribble() {
	declare -f _scribble_html
	declare -f _scribble_html_presentation
	
	declare -f _scribble_pdf
	
	declare -f _scribble_markdown
	declare -f _scribble_md
	
	# ###
	
	
	
	declare -f _scribble_mediawiki
	
	declare -f _scribble_asciidoc
	
	
	
	
	# ###
	
	declare -f _scribble_all
	
	# ###
	declare -f _scribble_filter_extensions
}



# TODO: Move from 'wip_functions.sh' .
# TODO: Shell code as markup. When used by other markup, this is to prevent shell interpretation of markup. When creating a new file, only 'scribble' the shell code - resulting in a 'simplified', 'editable' shell script.
# To 'scribble' just the shell code, just use the grep 'filter'.


_set_strings_markup_shell() {
	export flag__NOT_shell='scriptedIllustrator_markup_uk4uPhB663kVcygT0q'
	
	export comment_shell_line='#'
	[[ "$workaround_comment_shell_line" != "" ]] && export comment_shell_line="$workaround_comment_shell_line"
	
	# DANGER: CAUTION: Creates a temporary 'here document'. Compatibility problems (ie. MSW/Cygwin) are possible.
	#export comment_shell_begin=": <<'ey5QoR_""'"" $comment_shell_line"
	#export comment_shell_end="ey5QoR_"
	
	# WARNING: Markup files requiring workaround will be more difficult to read/edit directly (ie. adding '<!-- # --> ' or similar to every line to prevent interpretation of '>' as a redirect character even within an 'if false' 'block comment'.
	export comment_shell_begin='if false; then true; '"$comment_shell_line"
	export comment_shell_end='fi'
	export workaround_shellPrependMarkupLines=""
	[[ "$current_scriptedIllustrator_markup" == 'html' ]] && export workaround_shellPrependMarkupLines='<!-- # -->'
	[[ "$current_scriptedIllustrator_markup" == 'mediawiki' ]] && export workaround_shellPrependMarkupLines='<!-- # -->'
}

# WARNING: Affects accurate prevention of '_r' and '_t' inaccurately accumulating or removing newlines.
_filter__scriptedIllustrator_markup() {
	# Inherently add newline if not already present.
	grep -v "$flag__NOT_shell"
	
	# Add newline if already present.
	#grep -v $(_uid) | grep -v "$flag__NOT_shell"
	
	# Do not add newline if not already present.
	#sed 's/^.*'"$flag__NOT_shell"'.*$//g'
}







_shellCommentLines() {
	local currentString
	
	while read -r currentString
	do
		[ "$currentString" ] && printf '%b' "$comment_shell_line $currentString"
		echo
	done
	
	#echo -n "$comment_shell_line"' '
	##LANG=C IFS=
	#while LANG=C IFS= read -r -d '' -n 1 currentString
	#do
		#[ "$currentString" ] && printf '%b' "$currentString"
		#[[ "$currentString" == $'\n' ]] && echo -n "$comment_shell_line"' '
	#done
}

_workaround_shellPrependMarkupLines() {
	local currentString
	
	#while read -r currentString
	#do
		#[ "$currentString" ] && printf '%b' "$workaround_shellPrependMarkupLines""$currentString"
		#echo
	#done
	
	#echo -n "$workaround_shellPrependMarkupLines"
	#LANG=C IFS=
	#while LANG=C IFS= read -r -d '' -n 1 currentString
	#do
		#[ "$currentString" ] && printf '%b' "$currentString"
		#[[ "$currentString" == $'\n' ]] && echo -n "$workaround_shellPrependMarkupLines"
	#done
	
	sed 's/^/'"$workaround_shellPrependMarkupLines"'/g'
}



_tinyCompiler_scriptedIllustrator_declareFunctions_markup_shell() {
	declare -f _set_strings_markup_shell
	
	declare -f _filter__scriptedIllustrator_markup
	
	declare -f _shellCommentLines
	declare -f _workaround_shellPrependMarkupLines
}



# TODO: Cause all markup to print to terminal as ANSI escape codes. Interleaving of shell code may not be possible in this case.
#export current_scriptedIllustrator_markup='terminal'
#export current_scriptedIllustrator_markup=''







_tinyCompiler_scriptedIllustrator_declareFunctions_markup_terminal() {
	true
	
	type _declareFunctions_markup_terminal > /dev/null 2>&1 && _declareFunctions_markup_terminal "$@"
}


# ATTENTION: set/get global variables if appropriate
#export current_scriptedIllustrator_markup='html'
#export current_scriptedIllustrator_presentation='true'


_set_markup_html() {
	export current_scriptedIllustrator_markup='html'
	
	_noShell_block() {
		_noShell_block-html "$@"
	}
	export -f _noShell_block
	_pre_block() {
		_pre_block-html "$@"
	}
	export -f _pre_block
	
	_e() {
		export currentFunctionName="${FUNCNAME[0]}"
		_e-html "$@"
	}
	export -f _e
	
	_e_() {
		export currentFunctionName="${FUNCNAME[0]}"
		_e_-html "$@"
	}
	export -f _e_
	
	_o() {
		export currentFunctionName="${FUNCNAME[0]}"
		_o-html "$@"
	}
	export -f _o
	
	_o_() {
		export currentFunctionName="${FUNCNAME[0]}"
		_o_-html "$@"
	}
	export -f _o_
	
	_i() {
		export currentFunctionName="${FUNCNAME[0]}"
		_i-html "$@"
	}
	export -f _i
	
	_v() {
		export currentFunctionName="${FUNCNAME[0]}"
		_v-html "$@"
	}
	export -f _v
	
	_t() {
		export currentFunctionName="${FUNCNAME[0]}"
		_t-html "$@"
	}
	export -f _t
	
	_r() {
		export currentFunctionName="${FUNCNAME[0]}"
		_r-html "$@"
	}
	export -f _r
	
	_() {
		export currentFunctionName="${FUNCNAME[0]}"
		_h-html "$@"
	}
	_h() {
		export currentFunctionName="${FUNCNAME[0]}"
		_h-html "$@"
	}
	export -f _
	export -f _h
	
	
	
	_heading1() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading1-html "$@"
	}
	export -f _heading1
	_heading2() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading2-html "$@"
	}
	export -f _heading2
	_heading3() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading3-html "$@"
	}
	export -f _heading3
	_heading4() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading4-html "$@"
	}
	export -f _heading4
	_heading5() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading5-html "$@"
	}
	export -f _heading5
	_heading6() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading6-html "$@"
	}
	export -f _heading6
	
	_page() {
		export currentFunctionName="${FUNCNAME[0]}"
		_page-html "$@"
	}
	export -f _page
	
	_paragraph_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_paragraph_begin-html "$@"
	}
	export -f _paragraph_begin
	_paragraph_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_paragraph_end-html "$@"
	}
	export -f _paragraph_end
	
	
	_picture() {
		export currentFunctionName="${FUNCNAME[0]}"
		_picture-html "$@"
	}
	export -f _picture
	_image() {
		export currentFunctionName="${FUNCNAME[0]}"
		_image-html "$@"
	}
	export -f _image
	
	
	_cells_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_begin-html "$@"
	}
	export -f _cells_begin
	_cells_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_end-html "$@"
	}
	export -f _cells_end
	_cells_row_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_row_begin-html "$@"
	}
	export -f _cells_row_begin
	_cells_row_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_row_end-html "$@"
	}
	export -f _cells_row_end
	_cells_speck_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_speck_begin-html "$@"
	}
	export -f _cells_speck_begin
	_cells_speck_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_speck_end-html "$@"
	}
	export -f _cells_speck_end
	
	
	
	_markup_asciidoc_disable_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_markup_asciidoc_disable_begin-html "$@"
	}
	export -f _markup_asciidoc_disable_begin
	
	_markup_asciidoc_disable_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_markup_asciidoc_disable_end-html "$@"
	}
	export -f _markup_asciidoc_disable_end
}


_set_strings_markup_html() {
	# WARNING: Inaccurate. Will 'fold' any markup (such as from _messagePlain_probe and similar) as well as visible text.
	export markup_html_fold="$current_markup_html_fold"
	if [[ "$markup_html_fold" == "" ]]
	then
		true
		#export markup_html_fold=156
		#export markup_html_fold=93
		#export markup_html_fold=76
	fi
	
	
	export comment_html_begin='<!--'
	export comment_html_end='-->'
	export comment_html_line=''
	
	# 'if false; then true; # scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->'
	export interpret__html_NOT_shell__begin="$comment_shell_begin $comment_html_end"
	export interpret__html_NOT_shell__end="$comment_html_begin
$comment_shell_end"
	
	# https://mediatemple.net/blog/design-creative/considerations-for-styling-the-pre-tag/
	# https://stackoverflow.com/questions/7962844/html-how-to-remove-line-spacing-from-pre-tag/20566618
	#line-height:.1;
	#display: inline;
	#width: 100%;
	#font-family: monospace;
	#tab-width: 8;
	#margin-top: 0px;margin-bottom: 0px;
	#<code style="white-space: pre;">
	#white-space: pre-wrap;
	export markup_html_pre_begin="$workaround_shellPrependMarkupLines"'<pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">'
	export markup_html_pre_end="$workaround_shellPrependMarkupLines"'</pre>'
	
	export markup_html_cmd_begin="$workaround_shellPrependMarkupLines"'<pre style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">'
	export markup_html_cmd_end="$markup_html_pre_end"
	
	# WARNING: Pure HTML (no JS) may be strongly preferable (ie. to 'scribble' presentation PDF from the HTML through automation). JS is not necessary to achieve presentation mode - disable if necessary.
	# https://stackoverflow.com/questions/1829370/clear-html-page-using-javascript/1829455
	# <script type="text/javascript"> document.body.innerHTML = ''; </script>
	#export markup_html_root_begin='<html style="size: letter;"><br \><script type="text/javascript"> document.body.innerHTML = '"''"'; </script>'
	export markup_html_root_begin='<html style="size: letter;">'
	[[ "$current_scriptedIllustrator_presentation" == 'true' ]] &&  export markup_html_root_begin='<html style="size: letter;"><br \><script type="text/javascript"> document.body.innerHTML = '"''"'; </script>'
	export markup_html_root_end='</html>'
	
	
	export document_html_root_begin="$comment_shell_line $markup_html_root_begin $comment_html_begin $flag__NOT_shell"
	export document_html_root_end="$comment_shell_line $flag__NOT_shell $comment_html_end $markup_html_root_end"
	
	# WARNING: Omitting comment character prevents interpretation as shell script, although it will otherwise be visible without javascript.
	#[[ "$current_scriptedIllustrator_presentation" == 'true' ]] && export document_html_root_begin="$markup_html_root_begin $comment_html_begin $flag__NOT_shell"
	
	
	# ATTENTION: Override.
	_tryExecFull _set_strings_markup_html_prog "$@"
}

_set_strings_markup_workaround_html_prog() {
	export workaround_noInterpret_begin=''
	export workaround_noInterpret_end=''
	
	export workaround_comment_shell_line=''
}








# Echo command with commented (shell prepending '#' ) output.
_e-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	echo "$markup_html_cmd_begin"
	
	_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	"$@" | _shellCommentLines | _workaround_shellPrependMarkupLines
	
	echo "$markup_html_cmd_end"
	echo "$interpret__html_NOT_shell__end"
}

_e_-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	echo "$markup_html_cmd_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	eval "$@" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _shellCommentLines | _workaround_shellPrependMarkupLines
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_html_cmd_end"
	echo "$interpret__html_NOT_shell__end"
}

# Output only. Useful for '_messagePlain_probe_var', _messagePlain_request' and similar.
_o-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	echo "$markup_html_cmd_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	
	# | _shellCommentLines
	
	"$@" | _workaround_preformattedCharacters-html | _workaround_shellPrependMarkupLines
	
	echo "$markup_html_cmd_end"
	echo "$interpret__html_NOT_shell__end"
}

# Output only. Useful for '_messagePlain_probe_var', _messagePlain_request' and similar.
_o_-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	echo "$markup_html_cmd_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	
	# | _shellCommentLines
	
	eval "$@" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _workaround_preformattedCharacters-html | _workaround_shellPrependMarkupLines
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_html_cmd_end"
	echo "$interpret__html_NOT_shell__end"
}

# Internal. Use for variables, equation solving, etc.
_i-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	#echo "$markup_html_cmd_begin"
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	eval "$@" > /dev/null 2>&1
	
	#echo "$markup_html_cmd_end"
	echo "$interpret__html_NOT_shell__end"
}

# Useful to read out a variable (ie. set from 'COLLECT') as preformatted text.
# Variable. Roughly equivalent to '_messagePlain_probe_var' , however, without any declaration of the variable name .
# https://stackoverflow.com/questions/11386586/how-to-show-div-tag-literally-in-code-pre-tag
# 	'You can't (in modern HTML) write markup and have it be interpreted as text.'
_v-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	echo "$markup_html_pre_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	eval echo -e \$"$1" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _fold-html | _workaround_shellPrependMarkupLines
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_html_pre_end"
	echo "$interpret__html_NOT_shell__end"
}





# Show preformatted text.
_t-html() {
	# No parameters (no input) is meaningless and nothing can be done with that.
	[[ "$1" == "" ]] && return 0
	
	_safeEcho_newline _t "'"
	echo -n "$flag__NOT_shell $comment_html_end""$markup_html_pre_begin"
	
	
	local currentLine
	local currentLine_previous
	local currentIteration
	currentIteration=0
	while read -r currentLine && [[ "$currentIteration" -lt 2 ]]
	do
		if [[ "$currentIteration" == 1 ]] && _safeEcho_newline "$currentLine" | _filter__scriptedIllustrator_markup > /dev/null 2>&1 && [[ "$currentLine_previous" != "" ]] && [[ "$currentLine" != "" ]]
		then
			_safeEcho_newline
			true
		fi
		
		currentLine_previous="$currentLine"
		let currentIteration=currentIteration+1
	done <<<$(_safeEcho "$@")
	[[ "$currentIteration" == 1 ]] && [[ "$currentLine_previous" != "" ]] && _safeEcho_newline
	
	#sed 's/^mediawiki_noLineBreak --><pre.*>//'
	_safeEcho "$@" | sed 's/^mediawiki_noLineBreak --><nowiki>//' | sed 's/^mediawiki_noLineBreak --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">//' | _filter__scriptedIllustrator_markup | _fold-html | _workaround_preformattedCharacters-html
	
	echo "$markup_html_pre_end""$comment_html_begin $flag__NOT_shell"
	_safeEcho_newline "'"
}


# Raw. Experimental. No production use.
_r-html() {
	# No parameters (no input) is meaningless and nothing can be done with that.
	[[ "$1" == "" ]] && return 0
	
	_safeEcho_newline _r "'"
	echo -n "$flag__NOT_shell $comment_html_end"
	
	
	local currentLine
	local currentLine_previous
	local currentIteration
	currentIteration=0
	while read -r currentLine && [[ "$currentIteration" -lt 2 ]]
	do
		if [[ "$currentIteration" == 1 ]] && _safeEcho_newline "$currentLine" | _filter__scriptedIllustrator_markup > /dev/null 2>&1 && [[ "$currentLine_previous" != "" ]]
		then
			_safeEcho_newline
		fi
		
		currentLine_previous="$currentLine"
		let currentIteration=currentIteration+1
	done <<<$(_safeEcho "$@")
	[[ "$currentIteration" == 1 ]] && _safeEcho_newline
	
	_safeEcho "$@" | sed 's/^mediawiki_noLineBreak -->//' | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-html
	
	
	echo "$comment_html_begin $flag__NOT_shell"
	_safeEcho_newline "'"
}

# Hidden. Use for comments and (shell code only) spacing.
_h-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
}







_heading1-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<h1>'"$@"'</h1>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_heading2-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<h2>'"$@"'</h2>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_heading3-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<h3>'"$@"'</h3>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_heading4-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<h4>'"$@"'</h4>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_heading5-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<h5>'"$@"'</h5>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_heading6-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<h6>'"$@"'</h6>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}

# Page break.
#title page (experiment)
#<div style="page-break-before: always;"> </div>
#<p>
#text page (experiment)
#</p>
_page-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<div style="page-break-before: always;margin: 0;padding: 0; border-width: 0px;"> </div>' | _workaround_shellPrependMarkupLines
	
	#_safeEcho_newline '<p style="page-break-after: always;">&nbsp;</p>' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '<p style="page-break-before: always;">&nbsp;</p>' | _workaround_shellPrependMarkupLines
	
	#_safeEcho_newline '<p style="page-break-after: always;">&nbsp;</p><p style="page-break-before: always;">&nbsp;</p>' | _workaround_shellPrependMarkupLines
	
	#_safeEcho_newline '<div style="page-break-after: always;"> </div>' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '<div></div>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}

_paragraph_begin-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<p>' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '<p style="margin: 0;padding: 0; border-width: 0px;">' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_paragraph_end-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '</p>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}

_picture-html() {
	local currentWidth
	currentWidth=""
	[[ "$2" != "" ]] && currentWidth="$2"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	#./
	#https://www.hostpapa.com/knowledgebase/align-float-images-website/
	_safeEcho_newline '<img '"$currentWidthParameter"'src="'"$1"'" style="float: right;margin: 0 0 0 15px;border: 5px solid transparent;">' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_image-html() {
	local currentWidth
	currentWidth="96%"
	[[ "$2" != "" ]] && currentWidth="$2"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	#./
	_safeEcho_newline '<img '"$currentWidthParameter"'src="'"$1"'" style="margin: 0 0 0 15px;border: 5px solid transparent;">' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}



_cells_begin-html() {
	local currentWidth
	currentWidth="0%"
	[[ "$1" != "" ]] && currentWidth="$1"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<table '"$currentWidthParameter"'style="empty-cells: show; border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_cells_end-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '</table>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_cells_row_begin-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<tr>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_cells_row_end-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '</tr>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_cells_speck_begin-html() {
	local currentWidth
	currentWidth="0%"
	[[ "$1" != "" ]] && currentWidth="$1"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	
	local currentColspan
	currentColspan="1"
	[[ "$2" != "" ]] && currentColspan="$2"
	
	local currentColspanParameter
	currentColspanParameter=""
	[[ "$currentColspan" != "" ]] && currentColspanParameter='colspan="'"$currentColspan"'" '
	
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '<td '"$currentWidthParameter"''"$currentColspanParameter"'style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}
_cells_speck_end-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__html_NOT_shell__begin"
	
	_safeEcho_newline '</td>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__html_NOT_shell__end"
}






_markup_asciidoc_disable_begin-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
}

_markup_asciidoc_disable_end-html() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
}







# No production use.
_noShell_block-html() {
	echo -n "$interpret__html_NOT_shell__begin"
	echo
	
	cat
	
	echo -n "$interpret__html_NOT_shell__end"
	echo
}

# No production use.
_pre_block-html() {
	echo -n "$markup_html_pre_begin"
	echo
	
	cat
	
	echo -n "$markup_html_pre_end"
	echo
}



_fold-html() {
	if [[ "$markup_html_fold" != "" ]]
	then
		fold -w "$markup_html_fold" -s
		return
	fi
	cat
}



_workaround_preformattedCharacters-html() {
	#sed 's/\&#35;/#/g'
	#sed 's/\&#35;/#/g' | sed "s/\\\x27/\&#39;/g" | sed "s/\\\047/\&#39;/g" | sed "s/%27/\&#39;/g" | sed "s/\&#39;/\&#39;/g"
	
	#sed "s/\\\x27/\&#39;/g" | sed "s/\\\047/\&#39;/g" | sed "s/%27/\&#39;/g" | sed "s/\&#39;/\&#39;/g"
	#sed "s/\\\x3c/\&lt;;/g" | sed "s/\\\060/\&lt;;/g" | sed "s/%3c/\&lt;;/g" | sed "s/\&lt;;/\&lt;;/g"
	
	sed 's/\&#35;/#/g' | sed "s/\\\x27/\&#39;/g" | sed "s/\\\047/\&#39;/g" | sed "s/%27/\&#39;/g" | sed "s/\&#39;/\&#39;/g" | sed "s/\\\x3c/\&lt;;/g" | sed "s/\\\060/\&lt;;/g" | sed "s/%3c/\&lt;;/g" | sed "s/\&lt;;/\&lt;;/g"
	
	
	#| sed "s/\&#92;/\\\/"
}



_tinyCompiler_scriptedIllustrator_declareFunctions_markup_html() {
	declare -f _set_markup_html
	
	declare -f _set_strings_markup_html
	
	declare -f _set_strings_markup_workaround_html_prog
	
	
	#declare -f _e
	declare -f _e-html
	
	#declare -f _e_
	declare -f _e_-html
	
	#declare -f _o
	declare -f _o-html
	
	#declare -f _o_
	declare -f _o_-html
	
	#declare -f _i
	declare -f _i-html
	
	#declare -f _v
	declare -f _v-html
	
	#declare -f _t
	declare -f _t-html
	
	#declare -f _r
	declare -f _r-html
	
	#declare -f _
	#declare -f _h
	declare -f _h-html
	
	
	
	
	
	
	#declare -f _heading1
	declare -f _heading1-html
	#declare -f _heading2
	declare -f _heading2-html
	#declare -f _heading3
	declare -f _heading3-html
	#declare -f _heading4
	declare -f _heading4-html
	#declare -f _heading5
	declare -f _heading5-html
	#declare -f _heading6
	declare -f _heading6-html
	
	#declare -f _page
	declare -f _page-html
	
	#declare -f _paragraph_begin
	declare -f _paragraph_begin-html
	#declare -f _paragraph_end
	declare -f _paragraph_end-html
	
	#declare -f _picture
	declare -f _picture-html
	#declare -f _image
	declare -f _image-html
	
	#declare -f _cells_begin
	declare -f _cells_begin-html
	#declare -f _cells_end
	declare -f _cells_end-html
	#declare -f _cells_row_begin
	declare -f _cells_row_begin-html
	#declare -f _cells_row_end
	declare -f _cells_row_end-html
	#declare -f _cells_speck_begin
	declare -f _cells_speck_begin-html
	#declare -f _cells_speck_end
	declare -f _cells_speck_end-html
	
	
	#declare -f _markup_asciidoc_disable_begin
	declare -f _markup_asciidoc_disable_begin-html
	#declare -f _markup_asciidoc_disable_end
	declare -f _markup_asciidoc_disable_end-html
	
	
	declare -f _noShell_block-html
	declare -f _pre_block-html
	
	declare -f _fold-html
	
	
	declare -f _workaround_preformattedCharacters-html
}




# TODO: Expect strong resemblence to 'html' .
# https://www.mediawiki.org/wiki/Help:Formatting

# ATTENTION: set/get global variables if appropriate
#export current_scriptedIllustrator_markup='mediawiki'



_set_markup_mediawiki() {
	export current_scriptedIllustrator_markup='mediawiki'
	
	_noShell_block() {
		_noShell_block-mediawiki "$@"
	}
	export -f _noShell_block
	_pre_block() {
		_pre_block-mediawiki "$@"
	}
	export -f _pre_block
	
	_e() {
		export currentFunctionName="${FUNCNAME[0]}"
		_e-mediawiki "$@"
	}
	export -f _e
	
	_e_() {
		export currentFunctionName="${FUNCNAME[0]}"
		_e_-mediawiki "$@"
	}
	export -f _e_
	
	_o() {
		export currentFunctionName="${FUNCNAME[0]}"
		_o-mediawiki "$@"
	}
	export -f _o
	
	_o_() {
		export currentFunctionName="${FUNCNAME[0]}"
		_o_-mediawiki "$@"
	}
	export -f _o_
	
	_i() {
		export currentFunctionName="${FUNCNAME[0]}"
		_i-mediawiki "$@"
	}
	export -f _i
	
	_v() {
		export currentFunctionName="${FUNCNAME[0]}"
		_v-mediawiki "$@"
	}
	export -f _v
	
	_t() {
		export currentFunctionName="${FUNCNAME[0]}"
		_t-mediawiki "$@"
	}
	export -f _t
	
	_r() {
		export currentFunctionName="${FUNCNAME[0]}"
		_r-mediawiki "$@"
	}
	export -f _r
	
	_() {
		export currentFunctionName="${FUNCNAME[0]}"
		_h-mediawiki "$@"
	}
	_h() {
		export currentFunctionName="${FUNCNAME[0]}"
		_h-mediawiki "$@"
	}
	export -f _
	export -f _h
	
	
	
	_heading1() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading1-mediawiki "$@"
	}
	export -f _heading1
	_heading2() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading2-mediawiki "$@"
	}
	export -f _heading2
	_heading3() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading3-mediawiki "$@"
	}
	export -f _heading3
	_heading4() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading4-mediawiki "$@"
	}
	export -f _heading4
	_heading5() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading5-mediawiki "$@"
	}
	export -f _heading5
	_heading6() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading6-mediawiki "$@"
	}
	export -f _heading6
	
	_page() {
		export currentFunctionName="${FUNCNAME[0]}"
		_page-mediawiki "$@"
	}
	export -f _page
	
	_paragraph_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_paragraph_begin-mediawiki "$@"
	}
	export -f _paragraph_begin
	_paragraph_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_paragraph_end-mediawiki "$@"
	}
	export -f _paragraph_end
	
	
	_picture() {
		export currentFunctionName="${FUNCNAME[0]}"
		_picture-mediawiki "$@"
	}
	export -f _picture
	_image() {
		export currentFunctionName="${FUNCNAME[0]}"
		_image-mediawiki "$@"
	}
	export -f _image
	
	
	_cells_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_begin-mediawiki "$@"
	}
	export -f _cells_begin
	_cells_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_end-mediawiki "$@"
	}
	export -f _cells_end
	_cells_row_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_row_begin-mediawiki "$@"
	}
	export -f _cells_row_begin
	_cells_row_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_row_end-mediawiki "$@"
	}
	export -f _cells_row_end
	_cells_speck_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_speck_begin-mediawiki "$@"
	}
	export -f _cells_speck_begin
	_cells_speck_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_speck_end-mediawiki "$@"
	}
	export -f _cells_speck_end
	
	
	
	_markup_asciidoc_disable_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_markup_asciidoc_disable_begin-mediawiki "$@"
	}
	export -f _markup_asciidoc_disable_begin
	
	_markup_asciidoc_disable_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_markup_asciidoc_disable_end-mediawiki "$@"
	}
	export -f _markup_asciidoc_disable_end
}


_set_strings_markup_mediawiki() {
	# WARNING: Inaccurate. Will 'fold' any markup (such as from _messagePlain_probe and similar) as well as visible text.
	export markup_mediawiki_fold="$current_markup_mediawiki_fold"
	if [[ "$markup_mediawiki_fold" == "" ]]
	then
		true
		#export markup_mediawiki_fold=156
		#export markup_mediawiki_fold=93
		#export markup_mediawiki_fold=76
	fi
	
	
	export comment_mediawiki_begin='<!--'
	export comment_mediawiki_end='-->'
	export comment_mediawiki_line=''
	
	# 'if false; then true; # scriptedIllustrator_markup_uk4uPhB663kVcygT0q -->'
	export interpret__mediawiki_NOT_shell__begin="$comment_shell_begin $comment_mediawiki_end"
	export interpret__mediawiki_NOT_shell__end="$comment_mediawiki_begin
$comment_shell_end"
	
	# https://mediatemple.net/blog/design-creative/considerations-for-styling-the-pre-tag/
	# https://stackoverflow.com/questions/7962844/mediawiki-how-to-remove-line-spacing-from-pre-tag/20566618
	#line-height:.1;
	#display: inline;
	#width: 100%;
	#font-family: monospace;
	#tab-width: 8;
	#margin-top: 0px;margin-bottom: 0px;
	#<code style="white-space: pre;">
	#white-space: pre-wrap;
	export markup_mediawiki_pre_begin="$workaround_shellPrependMarkupLines"'<p style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">'
	#export markup_mediawiki_pre_begin="$workaround_shellPrependMarkupLines"'<p style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">'
	export markup_mediawiki_pre_end="$workaround_shellPrependMarkupLines"'</p>'
	
	export markup_mediawiki_cmd_begin="$workaround_shellPrependMarkupLines"'<p style="-webkit-print-color-adjust: exact;background-color:#848484;margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">'
	export markup_mediawiki_cmd_end="$markup_mediawiki_pre_end"
	
	export markup_mediawiki_root_begin='<!-- mediawiki -->'
	export markup_mediawiki_root_end='<!-- /mediawiki -->'
	
	
	export document_mediawiki_root_begin="$comment_shell_line $markup_mediawiki_root_begin $comment_mediawiki_begin $flag__NOT_shell"
	export document_mediawiki_root_end="$comment_shell_line $flag__NOT_shell $comment_mediawiki_end $markup_mediawiki_root_end"
	
	# WARNING: Omitting comment character prevents interpretation as shell script, although it will otherwise be visible without javascript.
	#[[ "$current_scriptedIllustrator_presentation" == 'true' ]] && export document_mediawiki_root_begin="$markup_mediawiki_root_begin $comment_mediawiki_begin $flag__NOT_shell"
	
	
	# ATTENTION: Override.
	_tryExecFull _set_strings_markup_mediawiki_prog "$@"
}

_set_strings_markup_workaround_mediawiki_prog() {
	export workaround_noInterpret_begin=''
	export workaround_noInterpret_end=''
	
	export workaround_noInterpret_begin='<nowiki>'
	export workaround_noInterpret_end='</nowiki>'
	
	export workaround_comment_shell_line=
	#export workaround_comment_shell_line='&#35;'
	#export workaround_comment_shell_line="$workaround_noInterpret_begin"'#'"$workaround_noInterpret_end"
}






# Echo command with commented (shell prepending '#' ) output.
_e-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	echo -n "$markup_mediawiki_cmd_begin"
	
	_color_begin_probe
	#echo -n "$workaround_noInterpret_begin"
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	#echo "$@" | _workaround_noInterpret-mediawiki | _workaround_shellPrependMarkupLines
	_safeEcho_quoteAddSingle_newline "$@" | _workaround_noInterpret-mediawiki | _workaround_shellPrependMarkupLines
	#echo -n "$workaround_noInterpret_end"
	_color_end | _workaround_shellPrependMarkupLines
	
	"$@" | _workaround_shellCommentLines-mediawiki | _workaround_shellPrependMarkupLines
	
	echo "$markup_mediawiki_cmd_end"
	echo "$interpret__mediawiki_NOT_shell__end"
}

_e_-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	echo -n "$markup_mediawiki_cmd_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	_color_begin_probe
	#echo -n "$workaround_noInterpret_begin"
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	#echo "$@" | _workaround_noInterpret-mediawiki | _workaround_shellPrependMarkupLines
	_safeEcho_quoteAddSingle_newline "$@" | _workaround_noInterpret-mediawiki | _workaround_shellPrependMarkupLines
	#echo -n "$workaround_noInterpret_end"
	_color_end | _workaround_shellPrependMarkupLines
	
	eval "$@" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _workaround_shellCommentLines-mediawiki | _workaround_shellPrependMarkupLines
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_mediawiki_cmd_end"
	echo "$interpret__mediawiki_NOT_shell__end"
}

# Output only. Useful for '_messagePlain_probe_var', _messagePlain_request' and similar.
_o-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	echo -n "$markup_mediawiki_cmd_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	
	# | _workaround_shellCommentLines-mediawiki
	
	# https://unix.stackexchange.com/questions/254644/how-do-i-remove-the-newline-from-the-last-line-in-a-file-in-order-to-add-text-to
	#perl -p -e 'chomp if eof'
	
	"$@" | _workaround_preformattedCharacters-mediawiki | _workaround_shellPrependMarkupLines | perl -p -e 'chomp if eof'
	
	echo "$markup_mediawiki_cmd_end"
	echo "$interpret__mediawiki_NOT_shell__end"
}

# Output only. Useful for '_messagePlain_probe_var', _messagePlain_request' and similar.
_o_-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	echo -n "$markup_mediawiki_cmd_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	
	# | _workaround_shellCommentLines-mediawiki
	
	# https://unix.stackexchange.com/questions/254644/how-do-i-remove-the-newline-from-the-last-line-in-a-file-in-order-to-add-text-to
	#perl -p -e 'chomp if eof'
	
	eval "$@" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _workaround_preformattedCharacters-mediawiki | _workaround_shellPrependMarkupLines | perl -p -e 'chomp if eof'
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_mediawiki_cmd_end"
	echo "$interpret__mediawiki_NOT_shell__end"
}

# Internal. Use for variables, equation solving, etc.
_i-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	#echo "$markup_mediawiki_cmd_begin"
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	eval "$@" > /dev/null 2>&1
	
	#echo "$markup_mediawiki_cmd_end"
	echo "$interpret__mediawiki_NOT_shell__end"
}

# Useful to read out a variable (ie. set from 'COLLECT') as preformatted text.
# Variable. Roughly equivalent to '_messagePlain_probe_var' , however, without any declaration of the variable name .
# https://stackoverflow.com/questions/11386586/how-to-show-div-tag-literally-in-code-pre-tag
# 	'You can't (in modern HTML) write markup and have it be interpreted as text.'
_v-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	echo -n "$markup_mediawiki_pre_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	eval echo -e \$"$1" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _fold-mediawiki | _workaround_shellPrependMarkupLines
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_mediawiki_pre_end"
	echo "$interpret__mediawiki_NOT_shell__end"
}





# Show preformatted text.
_t-mediawiki() {
	# No parameters (no input) is meaningless and nothing can be done with that.
	[[ "$1" == "" ]] && return 0
	
	_safeEcho_newline _t "'"
	echo -n "$flag__NOT_shell $comment_mediawiki_end""$markup_mediawiki_pre_begin"'<!-- mediawiki_noLineBreak'
	
	
	local currentLine
	local currentLine_previous
	local currentIteration
	currentIteration=0
	while read -r currentLine && [[ "$currentIteration" -lt 2 ]]
	do
		if [[ "$currentIteration" == 1 ]] && _safeEcho_newline "$currentLine" | _filter__scriptedIllustrator_markup > /dev/null 2>&1 && [[ "$currentLine_previous" != "" ]] && [[ "$currentLine" != "" ]]
		then
			_safeEcho_newline
			true
		fi
		
		currentLine_previous="$currentLine"
		let currentIteration=currentIteration+1
	done <<<$(_safeEcho "$@")
	[[ "$currentIteration" == 1 ]] && [[ "$currentLine_previous" != "" ]] && _safeEcho_newline
	
	#[[ "$1" != 'mediawiki_noLineBreak --><nowiki>'* ]] && _safeEcho 'mediawiki_noLineBreak --><nowiki>'"$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	#[[ "$1" == 'mediawiki_noLineBreak --><nowiki>'* ]] && _safeEcho "$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	#[[ "$1" != 'mediawiki_noLineBreak --><pre'* ]] && _safeEcho 'mediawiki_noLineBreak --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">'"$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	#[[ "$1" == 'mediawiki_noLineBreak -->'* ]] && _safeEcho "$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	
	#[[ "$1" != 'mediawiki_noLineBreak --><pre'* ]] && [[ "$@" != *'scriptedIllustrator_markup_uk4uPhB663kVcygT0q'*'mediawiki_noLineBreak --><pre'* ]]
	#[[ "$@" != *'mediawiki_noLineBreak --><pre'* ]]
	#! _safeEcho_newline "$@" | grep 'mediawiki_noLineBreak --><pre' > /dev/null 2>&1
	#! _safeEcho_newline "$@" | grep 'scriptedIllustrator_markup_uk4uPhB663kVcygT0q''.*''mediawiki_noLineBreak --><pre' > /dev/null 2>&1
	#! _safeEcho_newline "$@" | grep '<pre' > /dev/null 2>&1
	if _safeEcho_newline "$@" | grep '^.*''scriptedIllustrator_markup_uk4uPhB663kVcygT0q''.*''mediawiki_noLineBreak --><pre''.*$' > /dev/null 2>&1
	then
		_safeEcho 'mediawiki_noLineBreak --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">'"$@" | _filter__scriptedIllustrator_markup | _fold-mediawiki | _workaround_preformattedCharacters-mediawiki
	elif ! _safeEcho_newline "$@" | grep 'mediawiki_noLineBreak --><pre' > /dev/null 2>&1
	then
		_safeEcho 'mediawiki_noLineBreak --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">'"$@" | _filter__scriptedIllustrator_markup | _fold-mediawiki | _workaround_preformattedCharacters-mediawiki
	else
		_safeEcho "$@" | _filter__scriptedIllustrator_markup | _fold-mediawiki | _workaround_preformattedCharacters-mediawiki
	fi
	
	#_safeEcho "$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	
	
	#echo '</nowiki>'"$markup_mediawiki_pre_end""$comment_mediawiki_begin $flag__NOT_shell"
	#echo "$markup_mediawiki_pre_end""$comment_mediawiki_begin $flag__NOT_shell"
	echo '</pre>'"$markup_mediawiki_pre_end""$comment_mediawiki_begin $flag__NOT_shell"
	_safeEcho_newline "'"
}


# Raw. Experimental. No production use.
_r-mediawiki() {
	# No parameters (no input) is meaningless and nothing can be done with that.
	[[ "$1" == "" ]] && return 0
	
	_safeEcho_newline _r "'"
	echo -n "$flag__NOT_shell $comment_mediawiki_end"'<!-- mediawiki_noLineBreak'
	
	
	local currentLine
	local currentLine_previous
	local currentIteration
	currentIteration=0
	while read -r currentLine && [[ "$currentIteration" -lt 2 ]]
	do
		if [[ "$currentIteration" == 1 ]] && _safeEcho_newline "$currentLine" | _filter__scriptedIllustrator_markup > /dev/null 2>&1 && [[ "$currentLine_previous" != "" ]]
		then
			_safeEcho_newline
		fi
		
		currentLine_previous="$currentLine"
		let currentIteration=currentIteration+1
	done <<<$(_safeEcho "$@")
	[[ "$currentIteration" == 1 ]] && _safeEcho_newline
	
	#_safeEcho "$@" | _filter__scriptedIllustrator_markup
	#[[ "$1" != 'mediawiki_noLineBreak -->'* ]] && _safeEcho 'mediawiki_noLineBreak -->'"$@" | _filter__scriptedIllustrator_markup
	#[[ "$1" == 'mediawiki_noLineBreak -->'* ]] && _safeEcho "$@" | _filter__scriptedIllustrator_markup
	
	
	if _safeEcho_newline "$@" | grep '^.*''scriptedIllustrator_markup_uk4uPhB663kVcygT0q''.*''mediawiki_noLineBreak -->''.*$' > /dev/null 2>&1
	then
		_safeEcho 'mediawiki_noLineBreak -->'"$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	elif ! _safeEcho_newline "$@" | grep 'mediawiki_noLineBreak -->' > /dev/null 2>&1
	then
		_safeEcho 'mediawiki_noLineBreak -->'"$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	else
		_safeEcho "$@" | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-mediawiki | _fold-mediawiki
	fi
	
	
	
	echo "$comment_mediawiki_begin $flag__NOT_shell"
	_safeEcho_newline "'"
}

# Hidden. Use for comments and (shell code only) spacing.
_h-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
}







_heading1-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<h1>'"$@"'</h1>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_heading2-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<h2>'"$@"'</h2>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_heading3-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<h3>'"$@"'</h3>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_heading4-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<h4>'"$@"'</h4>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_heading5-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<h5>'"$@"'</h5>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_heading6-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<h6>'"$@"'</h6>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}

# Page break.
#title page (experiment)
#<div style="page-break-before: always;"> </div>
#<p>
#text page (experiment)
#</p>
_page-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<div style="page-break-before: always;"> </div>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}

_paragraph_begin-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<p>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_paragraph_end-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '</p>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}

_picture-mediawiki() {
	local currentWidth
	currentWidth=""
	[[ "$2" != "" ]] && currentWidth="$2"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	_warning_imageName-mediawiki "$@"
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	#./
	#_safeEcho_newline '<img '"$currentWidthParameter"'src="'"$1"'" style="float: right;margin: 0 0 0 15px;border: 5px solid transparent;">' | _workaround_shellPrependMarkupLines
	_safeEcho_newline '[[File:'"$1"'|right|'"$currentWidth"']]'
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_image-mediawiki() {
	local currentWidth
	currentWidth="96%"
	[[ "$2" != "" ]] && currentWidth="$2"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	_warning_imageName-mediawiki "$@"
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	#./
	#_safeEcho_newline '<img '"$currentWidthParameter"'src="'"$1"'" style="margin: 0 0 0 15px;border: 5px solid transparent;">' | _workaround_shellPrependMarkupLines
	_safeEcho_newline '[[File:'"$1"'|'"$currentWidth"']]'
	
	echo "$interpret__mediawiki_NOT_shell__end"
}



_cells_begin-mediawiki() {
	local currentWidth
	currentWidth="0%"
	[[ "$1" != "" ]] && currentWidth="$1"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<table '"$currentWidthParameter"'style="empty-cells: show; border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_cells_end-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '</table>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_cells_row_begin-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<tr>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_cells_row_end-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '</tr>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_cells_speck_begin-mediawiki() {
	local currentWidth
	currentWidth="0%"
	[[ "$1" != "" ]] && currentWidth="$1"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	
	local currentColspan
	currentColspan="1"
	[[ "$2" != "" ]] && currentColspan="$2"
	
	local currentColspanParameter
	currentColspanParameter=""
	[[ "$currentColspan" != "" ]] && currentColspanParameter='colspan="'"$currentColspan"'" '
	
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '<td '"$currentWidthParameter"''"$currentColspanParameter"'style="border-spacing: 0px; border: 1px solid black; margin-top: 0px; vertical-align: top;">' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}
_cells_speck_end-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__mediawiki_NOT_shell__begin"
	
	_safeEcho_newline '</td>' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__mediawiki_NOT_shell__end"
}






_markup_asciidoc_disable_begin-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
}

_markup_asciidoc_disable_end-mediawiki() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
}







# No production use.
_noShell_block-mediawiki() {
	echo -n "$interpret__mediawiki_NOT_shell__begin"
	echo
	
	cat
	
	echo -n "$interpret__mediawiki_NOT_shell__end"
	echo
}

# No production use.
_pre_block-mediawiki() {
	echo -n "$markup_mediawiki_pre_begin"
	echo
	
	cat
	
	echo -n "$markup_mediawiki_pre_end"
	echo
}



_fold-mediawiki() {
	if [[ "$markup_mediawiki_fold" != "" ]]
	then
		fold -w "$markup_mediawiki_fold" -s
		return
	fi
	cat
}




_workaround_preformattedCharacters-mediawiki() {
	#sed 's/#/\&#35;/g'
	#sed 's/#/<nowiki>#<\/nowiki>/g'
	
	sed 's/<nowiki>#<\/nowiki>/#/g' | sed 's/\&#35;/#/g' | sed 's/\&#/_uk4uPhB663kVcygT0q_char_x23_/g' | sed 's/#/\&#35;/g' | sed 's/_uk4uPhB663kVcygT0q_char_x23_/\&#/g' | sed "s/\\\x27/\&#39;/g" | sed "s/\\\047/\&#39;/g" | sed "s/%27/\&#39;/g" | sed "s/\&#39;/\&#39;/g" | sed "s/\\\x3c/\&lt;/g" | sed "s/\\\060/\&lt;/g" | sed "s/%3c/\&lt;/g" | sed "s/\&lt;/\&lt;/g"
	
	
	#| sed "s/\\\/\&#92;/"
	#sed 's/\&#/_uk4uPhB663kVcygT0q_char_x23_/g' | sed 's/#/\&#35;/g' | sed 's/_uk4uPhB663kVcygT0q_char_x23_/\&#/g'
}

_workaround_noInterpret-mediawiki() {
	local currentString
	while read -r currentString
	do
		[ "$currentString" ] && printf '%b' "$workaround_noInterpret_begin""$currentString""$workaround_noInterpret_end"
		echo
	done
}

_workaround_shellCommentLines-mediawiki() {
	local currentString
	while read -r currentString
	do
		[ "$currentString" ] && printf '%b' "$workaround_noInterpret_begin""$comment_shell_line""$workaround_noInterpret_end"' '"$currentString"
		echo
	done
}

_warning_imageName-mediawiki() {
	# Recommend ' $(_uid)_12345678.123 ' - 'eg. uk4uPhB663kVcygT0q_filename.jpg' - or similar.
	[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -lt 20 ]] && echo "$currentFunctionName"': warn: image filename <20char: possibly not unique: '"$1" > /dev/tty
	
	
	## https://en.wikipedia.org/wiki/Comparison_of_file_systems#Limits
	
	## Experimental. No production use.
	##[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 10 ]] && echo "$currentFunctionName"': warn: image filename >=10char: '"$1" > /dev/tty && return 1
	
	# May be bad for 'HFS' filesystem.
	#[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 31 ]] && echo "$currentFunctionName"': warn: image filename >=31char: '"$1" > /dev/tty && return 1
	
	# May be bad for 'FATX' filesystem.
	[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 42 ]] && echo "$currentFunctionName"': warn: image filename >=42char: '"$1" > /dev/tty && return 1
	
	# May be bad for 'CDFS' filesystem.
	#[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 64 ]] && echo "$currentFunctionName"': warn: image filename >=64char: '"$1" > /dev/tty && return 1
	
	# May be bad for 'NWFS' filesystem.
	#[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 80 ]] && echo "$currentFunctionName"': warn: image filename >=80char: '"$1" > /dev/tty && return 1
	
	# May be bad for 'VMFS' filesystem.
	#[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 128 ]] && echo "$currentFunctionName"': warn: image filename >=128char: '"$1" > /dev/tty && return 1
}

_tinyCompiler_scriptedIllustrator_declareFunctions_markup_mediawiki() {
	declare -f _set_markup_mediawiki
	
	declare -f _set_strings_markup_mediawiki
	
	declare -f _set_strings_markup_workaround_mediawiki_prog
	
	
	#declare -f _e
	declare -f _e-mediawiki
	
	#declare -f _e_
	declare -f _e_-mediawiki
	
	#declare -f _o
	declare -f _o-mediawiki
	
	#declare -f _o_
	declare -f _o_-mediawiki
	
	#declare -f _i
	declare -f _i-mediawiki
	
	#declare -f _v
	declare -f _v-mediawiki
	
	#declare -f _t
	declare -f _t-mediawiki
	
	#declare -f _r
	declare -f _r-mediawiki
	
	#declare -f _
	#declare -f _h
	declare -f _h-mediawiki
	
	
	
	
	
	
	#declare -f _heading1
	declare -f _heading1-mediawiki
	#declare -f _heading2
	declare -f _heading2-mediawiki
	#declare -f _heading3
	declare -f _heading3-mediawiki
	#declare -f _heading4
	declare -f _heading4-mediawiki
	#declare -f _heading5
	declare -f _heading5-mediawiki
	#declare -f _heading6
	declare -f _heading6-mediawiki
	
	#declare -f _page
	declare -f _page-mediawiki
	
	#declare -f _paragraph_begin
	declare -f _paragraph_begin-mediawiki
	#declare -f _paragraph_end
	declare -f _paragraph_end-mediawiki
	
	#declare -f _picture
	declare -f _picture-mediawiki
	#declare -f _image
	declare -f _image-mediawiki
	
	#declare -f _cells_begin
	declare -f _cells_begin-mediawiki
	#declare -f _cells_end
	declare -f _cells_end-mediawiki
	#declare -f _cells_row_begin
	declare -f _cells_row_begin-mediawiki
	#declare -f _cells_row_end
	declare -f _cells_row_end-mediawiki
	#declare -f _cells_speck_begin
	declare -f _cells_speck_begin-mediawiki
	#declare -f _cells_speck_end
	declare -f _cells_speck_end-mediawiki
	
	
	#declare -f _markup_asciidoc_disable_begin
	declare -f _markup_asciidoc_disable_begin-mediawiki
	#declare -f _markup_asciidoc_disable_end
	declare -f _markup_asciidoc_disable_end-mediawiki
	
	
	
	declare -f _noShell_block-mediawiki
	declare -f _pre_block-mediawiki
	
	declare -f _fold-mediawiki
	
	
	declare -f _workaround_preformattedCharacters-mediawiki
	
	declare -f _workaround_noInterpret-mediawiki
	
	declare -f _workaround_shellCommentLines-mediawiki
	
	
	
	declare -f _warning_imageName-mediawiki
}




#export current_scriptedIllustrator_markup='asciidoc'



_set_markup_asciidoc() {
	export current_scriptedIllustrator_markup='asciidoc'
	
	_noShell_block() {
		_noShell_block-asciidoc "$@"
	}
	export -f _noShell_block
	_pre_block() {
		_pre_block-asciidoc "$@"
	}
	export -f _pre_block
	
	_e() {
		export currentFunctionName="${FUNCNAME[0]}"
		_e-asciidoc "$@"
	}
	export -f _e
	
	_e_() {
		export currentFunctionName="${FUNCNAME[0]}"
		_e_-asciidoc "$@"
	}
	export -f _e_
	
	_o() {
		export currentFunctionName="${FUNCNAME[0]}"
		_o-asciidoc "$@"
	}
	export -f _o
	
	_o_() {
		export currentFunctionName="${FUNCNAME[0]}"
		_o_-asciidoc "$@"
	}
	export -f _o_
	
	_i() {
		export currentFunctionName="${FUNCNAME[0]}"
		_i-asciidoc "$@"
	}
	export -f _i
	
	_v() {
		export currentFunctionName="${FUNCNAME[0]}"
		_v-asciidoc "$@"
	}
	export -f _v
	
	_t() {
		export currentFunctionName="${FUNCNAME[0]}"
		_t-asciidoc "$@"
	}
	export -f _t
	
	_r() {
		export currentFunctionName="${FUNCNAME[0]}"
		_r-asciidoc "$@"
	}
	export -f _r
	
	_() {
		export currentFunctionName="${FUNCNAME[0]}"
		_h-asciidoc "$@"
	}
	_h() {
		export currentFunctionName="${FUNCNAME[0]}"
		_h-asciidoc "$@"
	}
	export -f _
	export -f _h
	
	
	
	_heading1() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading1-asciidoc "$@"
	}
	export -f _heading1
	_heading2() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading2-asciidoc "$@"
	}
	export -f _heading2
	_heading3() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading3-asciidoc "$@"
	}
	export -f _heading3
	_heading4() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading4-asciidoc "$@"
	}
	export -f _heading4
	_heading5() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading5-asciidoc "$@"
	}
	export -f _heading5
	_heading6() {
		export currentFunctionName="${FUNCNAME[0]}"
		_heading6-asciidoc "$@"
	}
	export -f _heading6
	
	_page() {
		export currentFunctionName="${FUNCNAME[0]}"
		_page-asciidoc "$@"
	}
	export -f _page
	
	_paragraph_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_paragraph_begin-asciidoc "$@"
	}
	export -f _paragraph_begin
	_paragraph_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_paragraph_end-asciidoc "$@"
	}
	export -f _paragraph_end
	
	
	_picture() {
		export currentFunctionName="${FUNCNAME[0]}"
		_picture-asciidoc "$@"
	}
	export -f _picture
	_image() {
		export currentFunctionName="${FUNCNAME[0]}"
		_image-asciidoc "$@"
	}
	export -f _image
	
	
	_cells_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_begin-asciidoc "$@"
	}
	export -f _cells_begin
	_cells_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_end-asciidoc "$@"
	}
	export -f _cells_end
	_cells_row_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_row_begin-asciidoc "$@"
	}
	export -f _cells_row_begin
	_cells_row_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_row_end-asciidoc "$@"
	}
	export -f _cells_row_end
	_cells_speck_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_speck_begin-asciidoc "$@"
	}
	export -f _cells_speck_begin
	_cells_speck_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_cells_speck_end-asciidoc "$@"
	}
	export -f _cells_speck_end
	
	
	
	_markup_asciidoc_disable_begin() {
		export currentFunctionName="${FUNCNAME[0]}"
		_markup_asciidoc_disable_begin-asciidoc "$@"
	}
	export -f _markup_asciidoc_disable_begin
	
	_markup_asciidoc_disable_end() {
		export currentFunctionName="${FUNCNAME[0]}"
		_markup_asciidoc_disable_end-asciidoc "$@"
	}
	export -f _markup_asciidoc_disable_end
}


_set_strings_markup_asciidoc() {
	# WARNING: Inaccurate. Will 'fold' any markup (such as from _messagePlain_probe and similar) as well as visible text.
	export markup_asciidoc_fold="$current_markup_asciidoc_fold"
	if [[ "$markup_asciidoc_fold" == "" ]]
	then
		true
		#export markup_asciidoc_fold=156
		#export markup_asciidoc_fold=93
		#export markup_asciidoc_fold=76
	fi
	
	
	export comment_asciidoc_begin='
////
'
	export comment_asciidoc_end='
////
'
	export comment_asciidoc_line=''
	
	export interpret__asciidoc_NOT_shell__begin="$comment_asciidoc_end"
	export interpret__asciidoc_NOT_shell__end="$comment_asciidoc_begin"
	
	
	export markup_asciidoc_pre_begin='
----
'
	export markup_asciidoc_pre_end=""'
----
'
	
	#export markup_asciidoc_cmd_begin='[gray-background]#x #'
	export markup_asciidoc_cmd_begin=''
	export markup_asciidoc_cmd_end=""
	
	export markup_asciidoc_root_begin=''
	export markup_asciidoc_root_end=''
	
	
	# https://github.com/asciidoctor/asciidoctor/issues/1621
	export document_asciidoc_root_begin="////
exit
# WARNING: DANGER: NOT valid shell script code, do NOT attempt to interpret with /bin/bash or similar !

"
	export document_asciidoc_root_end="
////
"
	
	# WARNING: Omitting comment character prevents interpretation as shell script, although it will otherwise be visible without javascript.
	#[[ "$current_scriptedIllustrator_presentation" == 'true' ]] && export document_asciidoc_root_begin="$markup_asciidoc_root_begin $comment_asciidoc_begin $flag__NOT_shell"
	
	
	# ATTENTION: Override.
	_tryExecFull _set_strings_markup_asciidoc_prog "$@"
}

_set_strings_markup_workaround_asciidoc_prog() {
	export workaround_noInterpret_begin=''
	export workaround_noInterpret_end=''
	
	export workaround_noInterpret_begin=''
	export workaround_noInterpret_end=''
	
	export workaround_comment_shell_line=
	#export workaround_comment_shell_line='&#35;'
	#export workaround_comment_shell_line="$workaround_noInterpret_begin"'#'"$workaround_noInterpret_end"
}






# Echo command with commented (shell prepending '#' ) output.
_e-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	echo -n "$markup_asciidoc_cmd_begin"
	
	_safeEcho_newline "$markup_asciidoc_pre_begin"
	_color_begin_probe
	#echo -n "$workaround_noInterpret_begin"
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	#echo "$@" | _workaround_noInterpret-asciidoc | _workaround_shellPrependMarkupLines
	_safeEcho_quoteAddSingle_newline "$@" | _workaround_noInterpret-asciidoc | _workaround_shellPrependMarkupLines
	#echo -n "$workaround_noInterpret_end"
	_color_end | _workaround_shellPrependMarkupLines
	_safeEcho_newline "$markup_asciidoc_pre_end"
	
	"$@" | _workaround_shellCommentLines-asciidoc | _workaround_shellPrependMarkupLines
	
	echo "$markup_asciidoc_cmd_end"
	echo "$interpret__asciidoc_NOT_shell__end"
}

_e_-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	echo -n "$markup_asciidoc_cmd_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	_safeEcho_newline "$markup_asciidoc_pre_begin"
	_color_begin_probe
	#echo -n "$workaround_noInterpret_begin"
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	#echo "$@" | _workaround_noInterpret-asciidoc | _workaround_shellPrependMarkupLines
	_safeEcho_quoteAddSingle_newline "$@" | _workaround_noInterpret-asciidoc | _workaround_shellPrependMarkupLines
	#echo -n "$workaround_noInterpret_end"
	_color_end | _workaround_shellPrependMarkupLines
	_safeEcho_newline "$markup_asciidoc_pre_end"
	
	eval "$@" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _workaround_shellCommentLines-asciidoc | _workaround_shellPrependMarkupLines
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_asciidoc_cmd_end"
	echo "$interpret__asciidoc_NOT_shell__end"
}

# Output only. Useful for '_messagePlain_probe_var', _messagePlain_request' and similar.
_o-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	echo -n "$markup_asciidoc_cmd_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	
	# | _workaround_shellCommentLines-asciidoc
	
	# https://unix.stackexchange.com/questions/254644/how-do-i-remove-the-newline-from-the-last-line-in-a-file-in-order-to-add-text-to
	#perl -p -e 'chomp if eof'
	
	"$@" | _workaround_preformattedCharacters-asciidoc | _workaround_shellPrependMarkupLines | perl -p -e 'chomp if eof'
	
	echo "$markup_asciidoc_cmd_end"
	echo "$interpret__asciidoc_NOT_shell__end"
}

# Output only. Useful for '_messagePlain_probe_var', _messagePlain_request' and similar.
_o_-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	echo -n "$markup_asciidoc_cmd_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	
	# | _workaround_shellCommentLines-asciidoc
	
	# https://unix.stackexchange.com/questions/254644/how-do-i-remove-the-newline-from-the-last-line-in-a-file-in-order-to-add-text-to
	#perl -p -e 'chomp if eof'
	
	eval "$@" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _workaround_preformattedCharacters-asciidoc | _workaround_shellPrependMarkupLines | perl -p -e 'chomp if eof'
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_asciidoc_cmd_end"
	echo "$interpret__asciidoc_NOT_shell__end"
}

# Internal. Use for variables, equation solving, etc.
_i-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	#echo "$markup_asciidoc_cmd_begin"
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	eval "$@" > /dev/null 2>&1
	
	#echo "$markup_asciidoc_cmd_end"
	echo "$interpret__asciidoc_NOT_shell__end"
}

# Useful to read out a variable (ie. set from 'COLLECT') as preformatted text.
# Variable. Roughly equivalent to '_messagePlain_probe_var' , however, without any declaration of the variable name .
# https://stackoverflow.com/questions/11386586/how-to-show-div-tag-literally-in-code-pre-tag
# 	'You can't (in modern HTML) write markup and have it be interpreted as text.'
_v-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	echo -n "$markup_asciidoc_pre_begin"
	
	local current_miniSessionID=$(_uid 8)
	
	#_messagePlain_probe_quoteAddSingle "$@" | _workaround_shellPrependMarkupLines
	
	eval echo -e \$"$1" > "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}"
	cat "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" | _fold-asciidoc | _workaround_shellPrependMarkupLines
	rm -f "$bootTmp"/"$current_miniSessionID"."${ubiquitousBashIDnano:0:3}" > /dev/null 2>&1
	
	echo "$markup_asciidoc_pre_end"
	echo "$interpret__asciidoc_NOT_shell__end"
}




# ATTENTION: OVERRIDE - Second function definition.
# Show preformatted text.
_t-asciidoc() {
	# No parameters (no input) is meaningless and nothing can be done with that.
	[[ "$1" == "" ]] && return 0
	
	_safeEcho_newline _t "'"
	echo -n "$flag__NOT_shell $comment_asciidoc_end""$markup_asciidoc_pre_begin"
	
	
	local currentLine
	local currentLine_previous
	local currentIteration
	currentIteration=0
	while read -r currentLine && [[ "$currentIteration" -lt 2 ]]
	do
		if [[ "$currentIteration" == 1 ]] && _safeEcho_newline "$currentLine" | _filter__scriptedIllustrator_markup > /dev/null 2>&1 && [[ "$currentLine_previous" != "" ]] && [[ "$currentLine" != "" ]]
		then
			_safeEcho_newline
			true
		fi
		
		currentLine_previous="$currentLine"
		let currentIteration=currentIteration+1
	done <<<$(_safeEcho "$@")
	[[ "$currentIteration" == 1 ]] && [[ "$currentLine_previous" != "" ]] && _safeEcho_newline
	
	#sed 's/^mediawiki_noLineBreak --><pre.*>//'
	_safeEcho "$@" | sed 's/^mediawiki_noLineBreak --><nowiki>//' | sed 's/^mediawiki_noLineBreak --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">//' | _filter__scriptedIllustrator_markup | _fold-asciidoc | _workaround_preformattedCharacters-asciidoc
	
	echo "$markup_asciidoc_pre_end""$comment_asciidoc_begin $flag__NOT_shell"
	_safeEcho_newline "'"
}
# Raw. Intentionally not interleaved output, intended only when necessitated by a markup language that may not tolerate line breaks.
# _t-asciidoc() {
# 	# No parameters (no input) is meaningless and nothing can be done with that.
# 	[[ "$1" == "" ]] && return 0
# 	#_safeEcho "$@" | sed 's/^mediawiki_noLineBreak --><nowiki>//' | sed 's/^mediawiki_noLineBreak --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">//' | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-asciidoc | _fold-asciidoc
# 	_safeEcho "$@" | sed 's/^mediawiki_noLineBreak --><nowiki>//' | sed 's/^mediawiki_noLineBreak --><pre style="margin-top: 0px;margin-bottom: 0px;white-space: pre-wrap;">//' | sed 's/^.*'"$flag__NOT_shell"'.*$//g' | _workaround_preformattedCharacters-asciidoc | _fold-asciidoc
# }

# ATTENTION: OVERRIDE - Second function definition.
# Raw. Experimental. No production use.
_r-asciidoc() {
	# No parameters (no input) is meaningless and nothing can be done with that.
	[[ "$1" == "" ]] && return 0
	
	_safeEcho_newline _r "'"
	echo -n "$flag__NOT_shell $comment_asciidoc_end"
	
	
	local currentLine
	local currentLine_previous
	local currentIteration
	currentIteration=0
	while read -r currentLine && [[ "$currentIteration" -lt 2 ]]
	do
		if [[ "$currentIteration" == 1 ]] && _safeEcho_newline "$currentLine" | _filter__scriptedIllustrator_markup > /dev/null 2>&1 && [[ "$currentLine_previous" != "" ]]
		then
			_safeEcho_newline
		fi
		
		currentLine_previous="$currentLine"
		let currentIteration=currentIteration+1
	done <<<$(_safeEcho "$@")
	[[ "$currentIteration" == 1 ]] && _safeEcho_newline
	
	_safeEcho "$@" | sed 's/^mediawiki_noLineBreak -->//' | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-asciidoc
	
	
	echo "$comment_asciidoc_begin $flag__NOT_shell"
	_safeEcho_newline "'"
}
# Raw. Intentionally not interleaved output, intended only when necessitated by a markup language that may not tolerate line breaks.
_r-asciidoc() {
	# No parameters (no input) is meaningless and nothing can be done with that.
	[[ "$1" == "" ]] && return 0
	#_safeEcho "$@" | sed 's/^mediawiki_noLineBreak -->//' | _filter__scriptedIllustrator_markup | _workaround_preformattedCharacters-asciidoc
	_safeEcho "$@" | sed 's/^mediawiki_noLineBreak -->//' | sed 's/^.*'"$flag__NOT_shell"'.*$//g' | _workaround_preformattedCharacters-asciidoc
}

# Hidden. Use for comments and (shell code only) spacing.
_h-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
}







_heading1-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '== '"$@"'' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}
_heading2-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '=== '"$@"'' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}
_heading3-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '==== '"$@"'' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}
_heading4-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '===== '"$@"'' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}
_heading5-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '====== '"$@"'' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}
_heading6-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '======= '"$@"'' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}

# Page break.
#title page (experiment)
#<div style="page-break-before: always;"> </div>
#<p>
#text page (experiment)
#</p>
_page-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	#_safeEcho_newline '<div style="page-break-before: always;"> </div>' | _workaround_shellPrependMarkupLines
_safeEcho_newline '






' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}

_paragraph_begin-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '
' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '<p>' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '----' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}
_paragraph_end-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '
' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '</p>' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '----' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}

_picture-asciidoc() {
	local currentWidth
	currentWidth=""
	[[ "$2" != "" ]] && currentWidth="$2"
	
	[[ "$currentWidth" == *"%" ]] && currentWidth=""
	[[ "$currentWidth" == *"px" ]] && currentWidth=$(_safeEcho_newline "$currentWidth" | tr -dc '0-9')
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	_warning_imageName-asciidoc "$@"
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	#./
	#_safeEcho_newline '<img '"$currentWidthParameter"'src="'"$1"'" style="float: right;margin: 0 0 0 15px;border: 5px solid transparent;">' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '[[File:'"$1"'|right|'"$currentWidth"']]'
	[[ "$currentWidthParameter" != "" ]] && _safeEcho_newline 'image:'"$1"'[
"picture",width='"$currentWidth"',
link="'"$1"'"]'
	[[ "$currentWidthParameter" == "" ]] && _safeEcho_newline 'image:'"$1"'[]'
	
	echo "$interpret__asciidoc_NOT_shell__end"
}
_image-asciidoc() {
	local currentWidth
	#currentWidth="96%"
	currentWidth="900px"
	[[ "$2" != "" ]] && currentWidth="$2"
	
	[[ "$currentWidth" == *"%" ]] && currentWidth=""
	[[ "$currentWidth" == *"px" ]] && currentWidth=$(_safeEcho_newline "$currentWidth" | tr -dc '0-9')
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	_warning_imageName-asciidoc "$@"
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	#./
	#_safeEcho_newline '<img '"$currentWidthParameter"'src="'"$1"'" style="margin: 0 0 0 15px;border: 5px solid transparent;">' | _workaround_shellPrependMarkupLines
	#_safeEcho_newline '[[File:'"$1"'|'"$currentWidth"']]'
	[[ "$currentWidthParameter" != "" ]] && _safeEcho_newline 'image:'"$1"'[
"image",width='"$currentWidth"',
link="'"$1"'"]'
	[[ "$currentWidthParameter" == "" ]] && _safeEcho_newline 'image:'"$1"'[]'
	
	echo "$interpret__asciidoc_NOT_shell__end"
}



_cells_begin-asciidoc() {
	local currentWidth
	currentWidth="0%"
	[[ "$1" != "" ]] && currentWidth="$1"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	#_safeEcho_newline
	
	
	echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '|====' | _workaround_shellPrependMarkupLines
	
	#echo "$interpret__asciidoc_NOT_shell__end"
}
_cells_end-asciidoc() {
	#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	#_safeEcho_newline
	
	
	#echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '|====' | _workaround_shellPrependMarkupLines
	
	echo "$interpret__asciidoc_NOT_shell__end"
}
_cells_row_begin-asciidoc() {
	#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	#_safeEcho_newline
	
	
	#echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho ''
	
	#echo "$interpret__asciidoc_NOT_shell__end"
}
_cells_row_end-asciidoc() {
	#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	#_safeEcho_newline
	
	
	#echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho_newline '' | _workaround_shellPrependMarkupLines
	
	#echo "$interpret__asciidoc_NOT_shell__end"
}
_cells_speck_begin-asciidoc() {
	local currentWidth
	currentWidth="0%"
	[[ "$1" != "" ]] && currentWidth="$1"
	
	local currentWidthParameter
	currentWidthParameter=""
	[[ "$currentWidth" != "" ]] && currentWidthParameter='width="'"$currentWidth"'" '
	
	
	local currentColspan
	currentColspan="1"
	[[ "$2" != "" ]] && currentColspan="$2"
	
	local currentColspanParameter
	currentColspanParameter=""
	[[ "$currentColspan" != "" ]] && currentColspanParameter='colspan="'"$currentColspan"'" '
	
	
	#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	#_safeEcho_newline
	
	
	#echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho '|'
	
	#echo "$interpret__asciidoc_NOT_shell__end"
}
_cells_speck_end-asciidoc() {
	#_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	#_safeEcho_newline
	
	
	#echo "$interpret__asciidoc_NOT_shell__begin"
	
	_safeEcho ' '
	
	#echo "$interpret__asciidoc_NOT_shell__end"
}






_markup_asciidoc_disable_begin-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	export current_markup_asciidoc_disable="true"
	
	export comment_asciidoc_begin=''
	export comment_asciidoc_end=''
	export interpret__asciidoc_NOT_shell__begin=""
	export interpret__asciidoc_NOT_shell__end=""
}

_markup_asciidoc_disable_end-asciidoc() {
	_safeEcho_quoteAddSingle "$currentFunctionName" "$@"
	_safeEcho_newline
	
	_safeEcho_newline "$comment_asciidoc_end"
	
	export current_markup_asciidoc_disable=""
	unset current_markup_asciidoc_disable
	_set_markup_asciidoc
	_set_strings
	_set_strings_markup_workaround_asciidoc_prog
}





# No production use.
_noShell_block-asciidoc() {
	echo -n "$interpret__asciidoc_NOT_shell__begin"
	echo
	
	cat
	
	echo -n "$interpret__asciidoc_NOT_shell__end"
	echo
}

# No production use.
_pre_block-asciidoc() {
	echo -n "$markup_asciidoc_pre_begin"
	echo
	
	cat
	
	echo -n "$markup_asciidoc_pre_end"
	echo
}



_fold-asciidoc() {
	if [[ "$markup_asciidoc_fold" != "" ]]
	then
		fold -w "$markup_asciidoc_fold" -s
		return
	fi
	cat
}




_workaround_preformattedCharacters-asciidoc() {
	#sed 's/#/\&#35;/g'
	#sed 's/#/<nowiki>#<\/nowiki>/g'
	
	sed 's/<nowiki>#<\/nowiki>/#/g' | sed 's/\&#35;/#/g' | sed 's/\&#/_uk4uPhB663kVcygT0q_char_x23_/g' | sed 's/#/\&#35;/g' | sed 's/_uk4uPhB663kVcygT0q_char_x23_/\&#/g' | sed "s/\\\x27/\&#39;/g" | sed "s/\\\047/\&#39;/g" | sed "s/%27/\&#39;/g" | sed "s/\&#39;/\&#39;/g" | sed "s/\\\x3c/\&lt;/g" | sed "s/\\\060/\&lt;/g" | sed "s/%3c/\&lt;/g" | sed "s/\&lt;/\&lt;/g"
	
	
	#| sed "s/\\\/\&#92;/"
	#sed 's/\&#/_uk4uPhB663kVcygT0q_char_x23_/g' | sed 's/#/\&#35;/g' | sed 's/_uk4uPhB663kVcygT0q_char_x23_/\&#/g'
}

_workaround_noInterpret-asciidoc() {
	local currentString
	while read -r currentString
	do
		[ "$currentString" ] && printf '%b' "$workaround_noInterpret_begin""$currentString""$workaround_noInterpret_end"
		echo
	done
}

_workaround_shellCommentLines-asciidoc() {
	local currentString
	while read -r currentString
	do
		[ "$currentString" ] && printf '%b' "$workaround_noInterpret_begin""$comment_shell_line""$workaround_noInterpret_end"' '"$currentString"
		echo
	done
}

_warning_imageName-asciidoc() {
	# Recommend ' $(_uid)_12345678.123 ' - 'eg. uk4uPhB663kVcygT0q_filename.jpg' - or similar.
	[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -lt 20 ]] && echo "$currentFunctionName"': warn: image filename <20char: possibly not unique: '"$1" > /dev/tty
	
	
	## https://en.wikipedia.org/wiki/Comparison_of_file_systems#Limits
	
	## Experimental. No production use.
	##[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 10 ]] && echo "$currentFunctionName"': warn: image filename >=10char: '"$1" > /dev/tty && return 1
	
	# May be bad for 'HFS' filesystem.
	#[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 31 ]] && echo "$currentFunctionName"': warn: image filename >=31char: '"$1" > /dev/tty && return 1
	
	# May be bad for 'FATX' filesystem.
	[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 42 ]] && echo "$currentFunctionName"': warn: image filename >=42char: '"$1" > /dev/tty && return 1
	
	# May be bad for 'CDFS' filesystem.
	#[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 64 ]] && echo "$currentFunctionName"': warn: image filename >=64char: '"$1" > /dev/tty && return 1
	
	# May be bad for 'NWFS' filesystem.
	#[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 80 ]] && echo "$currentFunctionName"': warn: image filename >=80char: '"$1" > /dev/tty && return 1
	
	# May be bad for 'VMFS' filesystem.
	#[[ $(_safeEcho "$1" | wc -c | tr -dc '0-9') -ge 128 ]] && echo "$currentFunctionName"': warn: image filename >=128char: '"$1" > /dev/tty && return 1
}

_tinyCompiler_scriptedIllustrator_declareFunctions_markup_asciidoc() {
	declare -f _set_markup_asciidoc
	
	declare -f _set_strings_markup_asciidoc
	
	declare -f _set_strings_markup_workaround_asciidoc_prog
	
	
	#declare -f _e
	declare -f _e-asciidoc
	
	#declare -f _e_
	declare -f _e_-asciidoc
	
	#declare -f _o
	declare -f _o-asciidoc
	
	#declare -f _o_
	declare -f _o_-asciidoc
	
	#declare -f _i
	declare -f _i-asciidoc
	
	#declare -f _v
	declare -f _v-asciidoc
	
	#declare -f _t
	declare -f _t-asciidoc
	
	#declare -f _r
	declare -f _r-asciidoc
	
	#declare -f _
	#declare -f _h
	declare -f _h-asciidoc
	
	
	
	
	
	
	#declare -f _heading1
	declare -f _heading1-asciidoc
	#declare -f _heading2
	declare -f _heading2-asciidoc
	#declare -f _heading3
	declare -f _heading3-asciidoc
	#declare -f _heading4
	declare -f _heading4-asciidoc
	#declare -f _heading5
	declare -f _heading5-asciidoc
	#declare -f _heading6
	declare -f _heading6-asciidoc
	
	#declare -f _page
	declare -f _page-asciidoc
	
	#declare -f _paragraph_begin
	declare -f _paragraph_begin-asciidoc
	#declare -f _paragraph_end
	declare -f _paragraph_end-asciidoc
	
	#declare -f _picture
	declare -f _picture-asciidoc
	#declare -f _image
	declare -f _image-asciidoc
	
	#declare -f _cells_begin
	declare -f _cells_begin-asciidoc
	#declare -f _cells_end
	declare -f _cells_end-asciidoc
	#declare -f _cells_row_begin
	declare -f _cells_row_begin-asciidoc
	#declare -f _cells_row_end
	declare -f _cells_row_end-asciidoc
	#declare -f _cells_speck_begin
	declare -f _cells_speck_begin-asciidoc
	#declare -f _cells_speck_end
	declare -f _cells_speck_end-asciidoc
	
	
	
	#declare -f _markup_asciidoc_disable_begin
	declare -f _markup_asciidoc_disable_begin-asciidoc
	#declare -f _markup_asciidoc_disable_end
	declare -f _markup_asciidoc_disable_end-asciidoc
	
	
	
	declare -f _noShell_block-asciidoc
	declare -f _pre_block-asciidoc
	
	declare -f _fold-asciidoc
	
	
	declare -f _workaround_preformattedCharacters-asciidoc
	
	declare -f _workaround_noInterpret-asciidoc
	
	declare -f _workaround_shellCommentLines-asciidoc
	
	
	
	declare -f _warning_imageName-asciidoc
}



#currentReversePort=""
#currentMatchingReversePorts=""
#currentReversePortOffset=""
#matchingOffsetPorts=""
#matchingReversePorts=""
#matchingEMBEDDED=""

#Creates "${matchingOffsetPorts}[@]" from "${matchingReversePorts}[@]".
#Intended for public server tunneling (ie. HTTPS).
# ATTENTION: Overload with 'ops' .
_offset_reversePorts() {
	local currentReversePort
	local currentMatchingReversePorts
	local currentReversePortOffset
	for currentReversePort in "${matchingReversePorts[@]}"
	do
		let currentReversePortOffset="$currentReversePort"+100
		currentMatchingReversePorts+=( "$currentReversePortOffset" )
	done
	matchingOffsetPorts=("${currentMatchingReversePorts[@]}")
	export matchingOffsetPorts
}


#####Network Specific Variables
#Statically embedded into monolithic ubiquitous_bash.sh/cautossh script by compile .

# WARNING Must use unique netName!
export netName=default
export gatewayName=gtw-"$netName"-"$netName"
export LOCALSSHPORT=22


#Optional equivalent to LOCALSSHPORT, also respected for tunneling ports from other services.
export LOCALLISTENPORT="$LOCALSSHPORT"

# ATTENTION: Mostly future proofing. Due to placement of autossh within a 'while true' loop, associated environment variables are expected to have minimal, if any, effect.
#Poll time must be double network timeouts.
export AUTOSSH_FIRST_POLL=45
export AUTOSSH_POLL=45
#export AUTOSSH_GATETIME=0
export AUTOSSH_GATETIME=15
#export AUTOSSH_PORT=0
#export AUTOSSH_DEBUG=1
#export AUTOSSH_LOGLEVEL=7

_get_reversePorts() {
	export matchingReversePorts
	matchingReversePorts=()
	export matchingEMBEDDED="false"

	local matched

	local testHostname
	testHostname="$1"
	[[ "$testHostname" == "" ]] && testHostname=$(hostname -s)

	if [[ "$testHostname" == 'hostnameA' ]] || [[ "$testHostname" == 'hostnameB' ]] || [[ "$testHostname" == '*' ]]
	then
		matchingReversePorts+=( '20001' )
		matched='true'
	fi
	if [[ "$testHostname" == 'hostnameC' ]] || [[ "$testHostname" == 'hostnameD' ]] || [[ "$testHostname" == '*' ]]
	then
		matchingReversePorts+=( '20002' )
		export matchingEMBEDDED='true'
		matched='true'
	fi
	if ! [[ "$matched" == 'true' ]] || [[ "$testHostname" == '*' ]]
	then
		matchingReversePorts+=( '20003' )
	fi

	export matchingReversePorts
}
_get_reversePorts
export reversePorts=("${matchingReversePorts[@]}")
export EMBEDDED="$matchingEMBEDDED"

_offset_reversePorts
export matchingOffsetPorts

export keepKeys_SSH='true'

# WARNING: In practice, at least some of 'queue' may be considered 'lean' functionality, to be included regardless of whether '_deps_queue' has been called through 'compile.sh' .
_deps_queue() {
	#_deps_notLean
	#_deps_dev
	
	# Message queue - 'broadcastPipe' , etc , underlying functions , '_read_page' , etc .
	export enUb_queue="true"
	
	# Packet - any noise-tolerant 'format' .
	# RESERVED variable name - synonymous with 'enUb_queue' .
	#export enUb_packet="true"
	
	# Portal - a 'filter program' to make arrangements between embedded devices of various unique identities and/or devices (eg. 'xAxis400stepsMM' . )
	# RESERVED variable name - synonymous with 'enUb_queue' .
	#export enUb_portal="true"
}

_compile_bash_queue() {
	export includeScriptList
	
	#includeScriptList+=( "queue"/undefined.sh )
}

_compile_bash_vars_queue() {
	export includeScriptList
	
	#[[ "$enUb_queue" == "true" ]] && 
	#[[ "$enUb_packet" == "true" ]] && 
	#[[ "$enUb_portal" == "true" ]] && 
	
	
	# ATTENTION: Only the test procedures are disabled if the 'queue' dependency is not declared. Due to the lengthy timing required to reliabily test the inherently unpredictability of any InterProcess-Communication with non-dedicated non-realtime software.
	
	
	
	
	includeScriptList+=( "queue"/queue_vars.sh )
	includeScriptList+=( "queue"/queue_vars_default.sh )
	
	includeScriptList+=( "queue"/queue.sh )
	
	
	
	includeScriptList+=( "queue/tripleBuffer"/page_read.sh )
	includeScriptList+=( "queue/tripleBuffer"/page_read_single.sh )
	
	includeScriptList+=( "queue/tripleBuffer"/page_write.sh )
	includeScriptList+=( "queue/tripleBuffer"/page_write_single.sh )
	
	
	includeScriptList+=( "queue/tripleBuffer"/broadcastPipe_page_here.sh )
	includeScriptList+=( "queue/tripleBuffer"/broadcastPipe_page.sh )
	
	includeScriptList+=( "queue/tripleBuffer"/demand_broadcastPipe_page.sh )
	
	
	#[[ "$enUb_queue" == "true" ]] && includeScriptList+=( "queue/tripleBuffer"/benchmark_page.sh )
	includeScriptList+=( "queue/tripleBuffer"/benchmark_page.sh )
	
	
	[[ "$enUb_queue" ]] && includeScriptList+=( "queue/tripleBuffer"/test_broadcastPipe_page.sh )
	[[ "$enUb_queue" ]] && includeScriptList+=( "queue/tripleBuffer"/benchmark_broadcastPipe_page.sh )
	
	
	
	includeScriptList+=( "queue/aggregator"/fifo_aggregator.sh )
	
	includeScriptList+=( "queue/aggregator"/aggregator_read.sh )
	includeScriptList+=( "queue/aggregator"/aggregator_write.sh )
	
	includeScriptList+=( "queue/aggregator/static"/broadcastPipe_aggregatorStatic.sh )
	includeScriptList+=( "queue/aggregator/static"/demand_broadcastPipe_aggregatorStatic.sh )
	
	[[ "$enUb_queue" ]] && includeScriptList+=( "queue/aggregator/static"/test_broadcastPipe_aggregatorStatic.sh )
	[[ "$enUb_queue" ]] && includeScriptList+=( "queue/aggregator/static"/benchmark_broadcastPipe_aggregatorStatic.sh )
	
	( [[ "$enUb_queue" ]] || [[ "$enUb_dev" == "true" ]] ) && includeScriptList+=( "queue/aggregator/static"/test_scope_aggregatorStatic.sh )
	
	
	includeScriptList+=( "queue/zSocket"/page_socket_tcp.sh )
	includeScriptList+=( "queue/zSocket"/page_socket_unix.sh )
	includeScriptList+=( "queue/zSocket"/aggregatorStatic_socket_tcp.sh )
	includeScriptList+=( "queue/zSocket"/aggregatorStatic_socket_unix.sh )
	
	
	
	
	
	includeScriptList+=( "queue/zDatabase"/database.sh )
	
	
	includeScriptList+=( "queue/zInteractive"/interactive.sh )
	
	
	
	[[ "$enUb_queue" ]] && includeScriptList+=( "queue"/test_queue.sh )
	
}

_deps_metaengine() {
# 	#_deps_notLean
	_deps_dev
	
	export enUb_metaengine="true"
} 

_compile_bash_metaengine() {
	export includeScriptList
	
	#[[ "$enUb_metaengine" == "true" ]] && includeScriptList+=( "metaengine"/undefined.sh )
}

_compile_bash_vars_metaengine() {
	export includeScriptList
	
	[[ "$enUb_metaengine" == "true" ]] && includeScriptList+=( "metaengine/"/metaengine.sh )
	
	[[ "$enUb_metaengine" == "true" ]] && includeScriptList+=( "metaengine/env"/metaengine_diag.sh )
	
	[[ "$enUb_metaengine" == "true" ]] && includeScriptList+=( "metaengine/env"/metaengine_here.sh )
	[[ "$enUb_metaengine" == "true" ]] && includeScriptList+=( "metaengine/env"/metaengine_vars.sh )
	[[ "$enUb_metaengine" == "true" ]] && includeScriptList+=( "metaengine/env"/metaengine_parm.sh )
	[[ "$enUb_metaengine" == "true" ]] && includeScriptList+=( "metaengine/env"/metaengine_local.sh )
	
	[[ "$enUb_metaengine" == "true" ]] && includeScriptList+=( "metaengine/example"/example_metaengine_chain.sh )
	[[ "$enUb_metaengine" == "true" ]] && includeScriptList+=( "metaengine/example"/example_metaengine_object.sh )
	
	[[ "$enUb_metaengine" == "true" ]] && includeScriptList+=( "metaengine/typical"/typical_metaengine_chain.sh )
	[[ "$enUb_metaengine" == "true" ]] && includeScriptList+=( "metaengine/typical"/typical_metaengine_object.sh )
	[[ "$enUb_metaengine" == "true" ]] && includeScriptList+=( "metaengine/typical"/typical_metaengine_vars.sh )
	
	[[ "$enUb_metaengine" == "true" ]] && includeScriptList+=( "metaengine/typical"/typical_metaengine_divert.sh )
	
	[[ "$enUb_metaengine" == "true" ]] && includeScriptList+=( "metaengine/typical"/typical_metaengine_buffer.sh )
	[[ "$enUb_metaengine" == "true" ]] && includeScriptList+=( "metaengine/typical"/typical_metaengine_page.sh )
}


_generate_lean-lib-python_here() {
	cat << 'CZXWXcRMTo8EmM8i4d'

# https://stackoverflow.com/questions/44834/can-someone-explain-all-in-python

# https://bruxy.regnet.cz/programming/bash-python/workshop_bash-python-en.html
# https://www.geeksforgeeks.org/how-to-run-bash-script-in-python/
# https://softwareengineering.stackexchange.com/questions/207613/encoding-a-bash-script-for-use-in-python

# https://www.codementor.io/@arpitbhayani/personalize-your-python-prompt-13ts4kw6za

# https://kimsereylam.com/python/2020/02/07/improve-your-python-shell-with-pythonrc.html




#os.system("python --version")
#print (sys.version_info)



#os.system("ubiquitous_bash.sh _getAbsoluteFolder .")



# https://www.geeksforgeeks.org/how-to-pass-multiple-arguments-to-function/

#def _bin(currentArgumentsString):
#	os.system("ubiquitous_bash.sh _bin " + currentArgumentsString)

#_bin("_getAbsoluteFolder .")

#_bin("_scope .")

#_bin("_bash -i")



#def _bash():
#	os.system("ubiquitous_bash.sh _bin _bash -i ")

#def _bash():
#	os.system("$HOME/.ubcore/ubiquitous_bash/ubcore.sh _bash -i ")

#_bash()





########################################


# WARNING: Python API documentation suggests significant possibility of incompatibility (perhaps return object type) 'if sys.hexversion < 0x03060000' or 'if sys.hexversion < 0x03000000'.
# CAUTION: Python API version compatibility may or may not be strictly enforced, due to lack of known failures, and/or usual expectations of problems from the multiple ways of doing things.
# Apparently reasonable expectations confirmed by exhaustive research may be met if python version is at least >0x20710f0 and <0x30703f0 .
#import sys
#if sys.hexversion < 0x03060000:
# https://stackoverflow.com/questions/446052/how-can-i-check-for-python-version-in-a-program-that-uses-new-language-features
#	exit(1)


#_messagePlain_request( 'request: user please install...' )
def _messagePlain_request(currentMessage = '', currentContext = '(python)'):
	print ( '\x01\033[0;35;47m\x02' + currentContext + '\x01\033[0m\x02' + '\x01\033[0;35m\x02 ' + currentMessage + ' \x01\033[0m\x02' )

#_messagePlain_nominal( 'init: _function' )
def _messagePlain_nominal(currentMessage = '', currentContext = '(python)'):
	print ( '\x01\033[0;35;47m\x02' + currentContext + '\x01\033[0m\x02' + '\x01\033[0;36m\x02 ' + currentMessage + ' \x01\033[0m\x02' )

#_messagePlain_probe( '_messagePlain_probe ( \'_messagePlain_probe\' ) ' )
def _messagePlain_probe(currentMessage = '', currentContext = '(python)'):
	print ( '\x01\033[0;35;47m\x02' + currentContext + '\x01\033[0m\x02' + '\x01\033[0;34m\x02 ' + currentMessage + ' \x01\033[0m\x02' )

#_messagePlain_good( 'good: success' )
def _messagePlain_good(currentMessage = '', currentContext = '(python)'):
	print ( '\x01\033[0;35;47m\x02' + currentContext + '\x01\033[0m\x02' + '\x01\033[0;32m\x02 ' + currentMessage + ' \x01\033[0m\x02' )

#_messagePlain_warn( 'warn: workaround' )
def _messagePlain_warn(currentMessage = '', currentContext = '(python)'):
	print ( '\x01\033[0;35;47m\x02' + currentContext + '\x01\033[0m\x02' + '\x01\033[1;33m\x02 ' + currentMessage + ' \x01\033[0m\x02' )

#_messagePlain_bad( 'bad: fail: missing' )
def _messagePlain_bad(currentMessage = '', currentContext = '(python)'):
	print ( '\x01\033[0;35;47m\x02' + currentContext + '\x01\033[0m\x02' + '\x01\033[0;31m\x02 ' + currentMessage + ' \x01\033[0m\x02' )

#_messageNormal( '_function_sequence: Stop' )
def _messageNormal(currentMessage = '', currentContext = '(python)'):
	print ( '\x01\033[0;35;47m\x02' + currentContext + '\x01\033[0m\x02' + '\x01\033[1;32;46m\x02 ' + currentMessage + ' \x01\033[0m\x02' )

#_messageError( 'FAIL: unknown app failure' )
def _messageERROR(currentMessage = '', currentContext = '(python)'):
	print ( '\x01\033[0;35;47m\x02' + currentContext + '\x01\033[0m\x02' + '\x01\033[1;33;41m\x02 ' + currentMessage + ' \x01\033[0m\x02' )


#_messageNormal( '_function_sequence: Start' )

#_messagePlain_nominal( 'init: _function' )
#_messagePlain_request( 'request: user please install...' )
#_messagePlain_probe( '_messagePlain_probe ( \'_messagePlain_probe\' ) ' )

#_messagePlain_good( 'good: success' )
#_messagePlain_warn( 'warn: workaround' )
#_messagePlain_bad( 'bad: fail: missing' )

#_messageERROR( 'FAIL: unknown app failure' )

#_messageNormal( '_function_sequence: Stop' )







import sys
# https://stackoverflow.com/questions/446052/how-can-i-check-for-python-version-in-a-program-that-uses-new-language-features
#if sys.hexversion < 0x03060000:
#	exit(1)
import string
import subprocess
import os
# WARNING: Procedures exclusively relying on python code are NOT intended or expected to be robust. Instead use '_getScriptAbsoluteLocation' within 'ubiquitous_bash.sh' as able.
# WARNING: Whether '__file__' has similar characteristics to "$0" as used within 'ubiquitous_bash' in all relevant cases is NOT determined and is NOT to be relied upon.
# WARNING: Historically 'python' has NOT had the API stability, reliability, or portability of 'bash'.
# https://stackoverflow.com/questions/4934806/how-can-i-find-scripts-directory
# https://stackoverflow.com/questions/3503879/assign-output-of-os-system-to-a-variable-and-prevent-it-from-being-displayed-on
#currentPathCheck = subprocess.Popen(['/bin/bash', '--noprofile', '--norc', '-c', 'type -p ubiquitous_bash.sh'], stdout=subprocess.PIPE, universal_newlines=True)
#print(os.path.dirname(os.path.realpath(__file__)))
#print(sys.path[0])
#os.path.abspath(os.path.dirname(os.path.realpath(__file__))).rstrip('\n')
#if True:
#currentProc = subprocess.Popen(['/bin/bash', '-c', 'ubiquitous_bash.sh _getAbsoluteFolder ' + __file__], stdout=subprocess.PIPE, universal_newlines=True)
#currentProc = subprocess.Popen(['/bin/bash', '--noprofile', '--norc', '-c', 'ubiquitous_bash.sh _getAbsoluteFolder ' + __file__], stdout=subprocess.PIPE, universal_newlines=True)
#currentProc = subprocess.Popen(['ubiquitous_bash.sh', '_getAbsoluteFolder', __file__], stdout=subprocess.PIPE, universal_newlines=True)
def _getScriptAbsoluteFolder():
	currentPathCheck = subprocess.Popen(['/bin/bash', '-c', 'type -p ubiquitous_bash.sh'], stdout=subprocess.PIPE, universal_newlines=True)
	currentPathCheck.communicate()
	currentPathCheck.wait()
	if currentPathCheck.returncode == 0:
		currentProc = subprocess.Popen(['ubiquitous_bash.sh', '_getAbsoluteFolder', __file__], stdout=subprocess.PIPE, universal_newlines=True)
		(currentOut, currentErr) = currentProc.communicate()
		currentProc.wait()
		currentOut = currentOut.rstrip('\n')
		return(currentOut.rstrip('\n'))
	else:
		return(os.path.abspath(os.path.dirname(os.path.realpath(__file__))).rstrip('\n'))

#print(_getScriptAbsoluteFolder())










import sys
#if sys.hexversion < 0x03060000:
#	exit(1)
import string
import subprocess
import os
#
#_bash()
# WARNING: CAUTION: DANGER: Beware '_getScriptAbsoluteLocation' will NOT be set correctly!
#_bash(['-c', '_getScriptAbsoluteLocation'], True, os.path.expanduser("~/core/infrastructure/ubiquitous_bash/ubiquitous_bash.sh"))
#_bash("-c '_getScriptAbsoluteLocation'", True, os.path.expanduser("~/core/infrastructure/ubiquitous_bash/ubiquitous_bash.sh"))
#
#_bash(['-c', 'echo test', 'xyz'])
#print(_bash(['-c', 'echo test', 'xyz'], False))
#print(_bash(['-c', '_false'], False))
#print(_bash(['-c', '_false'], False)[1])
#
#_bash('-i')
#_bash("-c '/bin/echo true'")
#_bash("-c 'echo true'")
# https://stackoverflow.com/questions/38821586/one-line-to-check-if-string-or-list-then-convert-to-list-in-python
# https://stackoverflow.com/questions/23883394/detect-if-python-script-is-run-from-an-ipython-shell-or-run-from-the-command-li
#sys.argv[1]
#os.system("$HOME/.ubcore/ubiquitous_bash/ubcore.sh _bash -i ")
#currentArguments = [currentArguments] if isinstance(currentArguments, str) else currentArguments
#print(['ubiquitous_bash.sh', '_bash'] + currentArguments)
def _bash(currentArguments = ['-i'], currentPrint = False, current_ubiquitous_bash = "ubiquitous_bash.sh"):
	if current_ubiquitous_bash == "ubiquitous_bash.sh":
		if os.path.exists(os.environ['HOME'] + "/.ubcore/ubiquitous_bash/ubcore.sh"):
			current_ubiquitous_bash = (os.environ['HOME'] + "/.ubcore/ubiquitous_bash/ubcore.sh")
	if current_ubiquitous_bash == "ubiquitous_bash.sh":
		if os.path.exists("/cygdrive/c/core/infrastructure/ubiquitous_bash/ubcore.sh"):
			current_ubiquitous_bash = "/cygdrive/c/core/infrastructure/ubiquitous_bash/ubcore.sh"
	if current_ubiquitous_bash == "ubiquitous_bash.sh":
		if os.path.exists("/cygdrive/c/core/infrastructure/lean/lean.sh"):
			current_ubiquitous_bash = "/cygdrive/c/core/infrastructure/lean/lean.sh"
	currentArguments = ['-i'] if currentArguments == '-i' else currentArguments
	if isinstance(currentArguments, str):
		# WARNING: Discouraged.
		if not currentArguments == '-i':
			currentProc = subprocess.Popen(current_ubiquitous_bash + " _bash " + currentArguments, stdout=subprocess.PIPE, universal_newlines=True, shell=True)
			(currentOut, currentErr) = currentProc.communicate()
			currentProc.wait()
			currentOut = currentOut.rstrip('\n')
			if currentPrint == True:
				print(currentOut)
				return (currentOut), currentProc.returncode
		else:
			currentProc = subprocess.Popen(current_ubiquitous_bash + " _bash " + currentArguments, universal_newlines=True, shell=True)
			(currentOut, currentErr) = currentProc.communicate()
			currentProc.wait()
		return (currentOut), currentProc.returncode
	else:
		if not currentArguments == ['-i']:
			currentArguments = [currentArguments] if isinstance(currentArguments, str) else currentArguments
			currentProc = subprocess.Popen([current_ubiquitous_bash, '_bash'] + currentArguments, stdout=subprocess.PIPE, universal_newlines=True)
			(currentOut, currentErr) = currentProc.communicate()
			currentProc.wait()
			currentOut = currentOut.rstrip('\n')
			if currentPrint == True:
				print(currentOut)
				return (currentOut), currentProc.returncode
		else:
			currentArguments = [currentArguments] if isinstance(currentArguments, str) else currentArguments
			currentProc = subprocess.Popen([current_ubiquitous_bash, '_bash'] + currentArguments, universal_newlines=True)
			(currentOut, currentErr) = currentProc.communicate()
			currentProc.wait()
		return (currentOut), currentProc.returncode





import sys
#if sys.hexversion < 0x03060000:
#	exit(1)
import string
import subprocess
import os
#
#_bin(['/bin/bash', '-i'])
#_bin(['_getScriptAbsoluteLocation'], True, os.path.expanduser("~/core/infrastructure/ubiquitous_bash/ubiquitous_bash.sh"))
#_bin(['_getScriptAbsoluteLocation'], True)
#_bin(['echo', 'test'], True, os.path.expanduser("~/core/infrastructure/ubiquitous_bash/ubiquitous_bash.sh"))
#print(_bin(['_false'], False, os.path.expanduser("~/core/infrastructure/ubiquitous_bash/ubiquitous_bash.sh"))[1])
#
#_bin('_true')
#_bin('_echo test')
#_bin('_bash')
#print( _bin('_false', False)[1] )
#_bin("_getScriptAbsoluteLocation", True, os.path.expanduser("~/core/infrastructure/ubiquitous_bash/ubiquitous_bash.sh"))
def _bin(currentArguments = [''], currentPrint = False, current_ubiquitous_bash = "ubiquitous_bash.sh"):
	if current_ubiquitous_bash == "ubiquitous_bash.sh":
		if os.path.exists(os.environ['HOME'] + "/.ubcore/ubiquitous_bash/ubcore.sh"):
			current_ubiquitous_bash = (os.environ['HOME'] + "/.ubcore/ubiquitous_bash/ubcore.sh")
	if current_ubiquitous_bash == "ubiquitous_bash.sh":
		if os.path.exists("/cygdrive/c/core/infrastructure/ubiquitous_bash/ubcore.sh"):
			current_ubiquitous_bash = "/cygdrive/c/core/infrastructure/ubiquitous_bash/ubcore.sh"
	if current_ubiquitous_bash == "ubiquitous_bash.sh":
		if os.path.exists("/cygdrive/c/core/infrastructure/lean/lean.sh"):
			current_ubiquitous_bash = "/cygdrive/c/core/infrastructure/lean/lean.sh"
	currentArguments = [''] if currentArguments == '' else currentArguments
	if isinstance(currentArguments, str):
		# WARNING: Discouraged.
		if not ( ( currentArguments == '/bin/bash -i' ) or ( currentArguments == '/bin/bash' ) ):
			currentProc = subprocess.Popen(current_ubiquitous_bash + " _bin " + currentArguments, stdout=subprocess.PIPE, universal_newlines=True, shell=True)
			(currentOut, currentErr) = currentProc.communicate()
			currentProc.wait()
			currentOut = currentOut.rstrip('\n')
			if currentPrint == True:
				print(currentOut)
				return (currentOut), currentProc.returncode
		else:
			currentProc = subprocess.Popen(current_ubiquitous_bash + " _bin " + currentArguments, universal_newlines=True, shell=True)
			(currentOut, currentErr) = currentProc.communicate()
			currentProc.wait()
		return (currentOut), currentProc.returncode
	else:
		if not (  ( currentArguments == ['/bin/bash', '-i'] ) or ( currentArguments == ['/bin/bash'] ) or ( currentArguments == ['_qalculate', ''] ) or ( currentArguments == ['_qalculate'] ) or ( currentArguments == ['_octave', ''] ) or ( currentArguments == ['_octave'] )  ):
			currentArguments = [currentArguments] if isinstance(currentArguments, str) else currentArguments
			currentProc = subprocess.Popen([current_ubiquitous_bash, '_bin'] + currentArguments, stdout=subprocess.PIPE, universal_newlines=True)
			(currentOut, currentErr) = currentProc.communicate()
			currentProc.wait()
			currentOut = currentOut.rstrip('\n')
			if currentPrint == True:
				print(currentOut)
				return (currentOut), currentProc.returncode
		else:
			currentArguments = [currentArguments] if isinstance(currentArguments, str) else currentArguments
			currentProc = subprocess.Popen([current_ubiquitous_bash, '_bin'] + currentArguments, universal_newlines=True)
			(currentOut, currentErr) = currentProc.communicate()
			currentProc.wait()
		return (currentOut), currentProc.returncode

# ATTENTION: Only intended for indirect calls.
# https://stackoverflow.com/questions/5067604/determine-function-name-from-within-that-function-without-using-traceback
#	'there aren't enough important use cases given'
# https://www.tutorialspoint.com/How-can-I-remove-the-ANSI-escape-sequences-from-a-string-in-python
# https://docs.python.org/3/library/re.html
#return _bin(currentCommand + currentArguments + currentString, currentPrint)[0]
#return re.sub(r'(\x9B|\x1B\[)[0-?]*[ -\/]*[@-~]', '', _bin(currentCommand + currentArguments + currentString, currentPrint)[0])
def _bin_stringAfterArgs(currentString = [], currentArguments = [], currentPrint = False, currentCommand = ['_false']):
	currentString = [currentString] if isinstance(currentString, str) else currentString
	currentArguments = [currentArguments] if isinstance(currentArguments, str) else currentArguments
	if currentPrint:
		return _bin(currentCommand + currentArguments + currentString, currentPrint)
	else:
		return re.sub(r'\n', '', re.sub(r'(\x9B|\x1B\[)[0-?]*[ -\/]*[@-~]', '', _bin(currentCommand + currentArguments + currentString, currentPrint)[0]))

#def _bash(currentArguments = [''], currentPrint = True, current_ubiquitous_bash = "ubiquitous_bash.sh"):
#	_bin(['/bin/bash', '-i'])



#if sys.hexversion < 0x03000000:
#	exit(1)
#_bin_alias = _bin


#_clc('1 + 2')
#_qalculate('1 + 2')
#_octave('1 + 2')
#print(_octave_solve('(y == x * 2, x)' ))

def _clc(currentString = [], currentArguments = [], currentPrint = False, currentCommand = ['_clc']):
	return _bin_stringAfterArgs(currentString, currentArguments, currentPrint, currentCommand)

def clc(currentString = [], currentArguments = [], currentPrint = False, currentCommand = ['clc']):
	return _bin_stringAfterArgs(currentString, currentArguments, currentPrint, currentCommand)

def c(currentString = [], currentArguments = [], currentPrint = False, currentCommand = ['c']):
	return _bin_stringAfterArgs(currentString, currentArguments, currentPrint, currentCommand)

def _solve(currentString = [], currentArguments = [], currentPrint = False, currentCommand = ['_solve']):
	return _bin_stringAfterArgs(currentString, currentArguments, currentPrint, currentCommand)

def solve(currentString = [], currentArguments = [], currentPrint = False, currentCommand = ['solve']):
	return _bin_stringAfterArgs(currentString, currentArguments, currentPrint, currentCommand)

def nsolve(currentString = [], currentArguments = [], currentPrint = False, currentCommand = ['nsolve']):
	return _bin_stringAfterArgs(currentString, currentArguments, currentPrint, currentCommand)

def _qalculate_solve(currentString = [], currentArguments = [], currentPrint = False, currentCommand = ['_qalculate_solve']):
	return _bin_stringAfterArgs(currentString, currentArguments, currentPrint, currentCommand)

def _qalculate_nsolve(currentString = [], currentArguments = [], currentPrint = False, currentCommand = ['_qalculate_nsolve']):
	return _bin_stringAfterArgs(currentString, currentArguments, currentPrint, currentCommand)

def _octave_solve(currentString = [], currentArguments = [], currentPrint = False, currentCommand = ['_octave_solve']):
	return _bin_stringAfterArgs(currentString, currentArguments, currentPrint, currentCommand)

def _octave_nsolve(currentString = [], currentArguments = [], currentPrint = False, currentCommand = ['_octave_nsolve']):
	return _bin_stringAfterArgs(currentString, currentArguments, currentPrint, currentCommand)


def _qalculate(currentString = [], currentArguments = [], currentPrint = False, currentCommand = ['_qalculate']):
	return _bin_stringAfterArgs(currentString, currentArguments, currentPrint, currentCommand)

def _octave(currentString = [], currentArguments = [], currentPrint = False, currentCommand = ['_octave']):
	return _bin_stringAfterArgs(currentString, currentArguments, currentPrint, currentCommand)








import readline # optional, will allow Up/Down/History in the console
import code
#_python()
# https://stackoverflow.com/questions/5597836/embed-create-an-interactive-python-shell-inside-a-python-program
def _python():
	variables = globals().copy()
	variables.update(locals())
	shell = code.InteractiveConsole(variables)
	shell.interact()



import sys
import os
import socket
import string
import re
#if sys.hexversion < 0x03060000:
#	exit(1)
# https://www.codementor.io/@arpitbhayani/personalize-your-python-prompt-13ts4kw6za
# https://stackoverflow.com/questions/4271740/how-can-i-use-python-to-get-the-system-hostname
# https://bugs.python.org/issue20359
#os.environ['PWD']
#os.path.expanduser(os.getcwd())
#\033[0;35;47mpython-%d\033[0m
#return "\033[92mIn [%d]:\033[0m " % (self.line)
#return ">>> "
#return "\033[1;94m|\033[91m#:\033[1;93m%s\033[1;92m@%s\033[1;94m)-%s(\033[1;95m\033[0;35;47mpython-%s\033[0m\033[1;94m)\033[1;96m|\n\033[1;94m|\033[1;97m[%s]\n\033[1;94m|\033[1;96m%d\033[1;94m) \033[1;96m>\033[0m " % (os.environ['USER'], socket.gethostname(), os.environ.get('prompt_cloudNetName', ''), hex(sys.hexversion), re.sub('^%s' % os.environ['HOME'], '~', os.path.expanduser(os.getcwd()) ), self.line)
#return "\033[1;94m|\033[91m#:\033[1;93m%s\033[1;92m@%s\033[1;94m)-%s(\033[1;95m\033[0;35;47mpython-%s\033[0m\033[1;94m)\033[1;96m|\n\033[1;94m|\033[1;97m[%s]\n\033[1;94m|%d\033[1;94m) \033[1;96m>\033[0m " % (os.environ['USER'], socket.gethostname(), os.environ.get('prompt_cloudNetName', ''), hex(sys.hexversion), re.sub('^%s' % os.environ['HOME'], '~', os.path.expanduser(os.getcwd()) ), self.line)
class ubPythonPS1(object):
	def __init__(self):
		self.line = 0

	def __str__(self):
		self.line += 1
		if self.line == 1:
			return "\x01\033[1;94m\x02|\x01\033[91m\x02#:\x01\033[1;93m\x02%s\x01\033[1;92m\x02@%s\x01\033[1;94m\x02)-%s(\x01\033[1;95m\x02\x01\033[0;35;47m\x02python-%s\x01\033[0m\x02\x01\033[1;94m\x02)\x01\033[1;96m\x02|\n\x01\033[1;94m\x02|\x01\033[1;97m\x02[%s]\n\x01\033[1;94m\x02|\x01\033[1;96m\x02%d\x01\033[1;94m\x02) \x01\033[1;96m\x02>\x01\033[0m\x02 " % (os.environ['USER'], socket.gethostname(), os.environ.get('prompt_cloudNetName', ''), hex(sys.hexversion), re.sub('^%s' % os.environ['HOME'], '~', os.path.expanduser(os.getcwd()) ), self.line)
		else:
			return "\x01\033[1;94m\x02|\x01\033[91m\x02#:\x01\033[1;93m\x02%s\x01\033[1;92m\x02@%s\x01\033[1;94m\x02)-%s(\x01\033[1;95m\x02\x01\033[0;35;47m\x02python-%s\x01\033[0m\x02\x01\033[1;94m\x02)\x01\033[1;96m\x02|\n\x01\033[1;94m\x02|\x01\033[1;97m\x02[%s]\n\x01\033[1;94m\x02|%d\x01\033[1;94m\x02) \x01\033[1;96m\x02>\x01\033[0m\x02 " % (os.environ['USER'], socket.gethostname(), os.environ.get('prompt_cloudNetName', ''), hex(sys.hexversion), re.sub('^%s' % os.environ['HOME'], '~', os.path.expanduser(os.getcwd()) ), self.line)

sys.ps1 = ubPythonPS1()
sys.ps2 = "\x01\033[0;96m\x02|...\x01\033[0m\x02 "




#_python()





CZXWXcRMTo8EmM8i4d
}


_generate_lean-overrides-python_here() {
	cat << 'CZXWXcRMTo8EmM8i4d'










#################################################
# ATTENTION: Add '_prog' script code here!







def _main():
	pass


















# ATTENTION: Add '_prog' script code here!
#################################################


import sys
if sys.hexversion > 0x03000000:
	exec('_print = print')

import sys
import string
#./lean.py "_python(c('1 + 2'))"
#./lean.py "_print(c('1 + 2'))"
#./lean.py "print(c('1 + 2'))"
# https://www.tutorialspoint.com/python/python_command_line_arguments.htm
# https://www.programiz.com/python-programming/methods/built-in/exec
# https://www.geeksforgeeks.org/python-program-to-convert-a-list-to-string/
# https://www.geeksforgeeks.org/python-removing-first-element-of-list/
#print ( 'Argument List:', str(sys.argv) )
#eval( sys.argv[1] + ' ' + ' '.join( sys.argv[2:] ) )
#exec( sys.argv[1] )
#if (1 in sys.argv):
if len(sys.argv) > 1:
	if ( sys.argv[1].startswith('_') ) or ( sys.argv[1].startswith('print') ) :
		exec( sys.argv[1] )











_main()



CZXWXcRMTo8EmM8i4d
}




_generate_lean-python_prog() {
	[[ "$objectName" == "ubiquitous_bash" ]] && return 0
	
	return 1
}

_generate_lean-python() {
	! _generate_lean-python_prog && return 0
	
	echo '#!/usr/bin/env python3' > "$scriptAbsoluteFolder"/lean.py
	
	_generate_lean-lib-python_here "$@" >> "$scriptAbsoluteFolder"/lean.py
	
	_generate_lean-overrides-python_here "$@" >> "$scriptAbsoluteFolder"/lean.py
	
	chmod u+x "$scriptAbsoluteFolder"/lean.py
}






# 
# _python_hook_here() {
# 	cat << CZXWXcRMTo8EmM8i4d
# 	
# 	_setupUbiquitous_accessories_here-python_hook
# 	
# CZXWXcRMTo8EmM8i4d
# }
# 
# 
# _python_hook() {
# 	_messageNormal "init: _python_hook"
# 	local ubHome
# 	ubHome="$HOME"
# 	[[ "$1" != "" ]] && ubHome="$1"
# 	
# 	export ubcoreDir="$ubHome"/.ubcore
# 	
# 	_python_hook_here > "$ubcoreDir"/python_bash_rc
# }
# 
































_findUbiquitous() {
	export ubiquitousLibDir="$scriptAbsoluteFolder"
	export ubiquitiousLibDir="$ubiquitousLibDir"
	
	local scriptBasename=$(basename "$scriptAbsoluteFolder")
	if [[ "$scriptBasename" == "ubiquitous_bash" ]]
	then
		return 0
	fi
	
	if [[ -e "$ubiquitousLibDir"/_lib/ubiquitous_bash ]]
	then
		export ubiquitousLibDir="$ubiquitousLibDir"/_lib/ubiquitous_bash
		export ubiquitiousLibDir="$ubiquitousLibDir"
		return 0
	fi
	
	local ubiquitousLibDirDiscovery=$(find ./_lib -maxdepth 3 -type d -name 'ubiquitous_bash' | head -n 1)
	if [[ "$ubiquitousLibDirDiscovery" != "" ]] && [[ -e "$ubiquitousLibDirDiscovery" ]]
	then
		export ubiquitousLibDir="$ubiquitousLibDirDiscovery"
		export ubiquitiousLibDir="$ubiquitousLibDir"
		return 0
	fi
	
	return 1
}


_init_deps() {
	export enUb_set="true"
	
	export enUb_dev=""
	export enUb_dev_heavy=""
	
	export enUb_cloud_heavy=""
	
	export enUb_mount=""
	
	export enUb_machineinfo=""
	export enUb_git=""
	export enUb_bup=""
	export enUb_repo=""
	export enUb_search=""
	export enUb_cloud=""
	export enUb_cloud_self=""
	export enUb_cloud_build=""
	export enUb_notLean=""
	export enUb_distro=""
	export enUb_build=""
	export enUb_buildBash=""
	export enUb_os_x11=""
	export enUb_proxy=""
	export enUb_proxy_special=""
	export enUb_clog=""
	export enUb_x11=""
	export enUb_blockchain=""
	export enUb_java=""
	export enUb_image=""
	export enUb_disc=""
	export enUb_virt=""
	export enUb_virt_thick=""
	export enUb_virt_translation=""
	export enUb_ChRoot=""
	export enUb_QEMU=""
	export enUb_vbox=""
	export enUb_docker=""
	export enUb_wine=""
	export enUb_DosBox=""
	export enUb_msw=""
	export enUb_fakehome=""
	export enUb_abstractfs=""
	export enUb_buildBash=""
	export enUb_buildBashUbiquitous=""
	
	export enUb_command=""
	export enUb_synergy=""
	
	export enUb_hardware=""
	export enUb_enUb_x220t=""
	export enUb_enUb_peripherial=""
	
	export enUb_user=""
	
	export enUb_channel=""
	
	export enUb_metaengine=""
	
	export enUb_stopwatch=""
	
	export enUb_linux=""
	
	export enUb_calculators=""
}

_deps_dev() {
	export enUb_dev="true"
}

_deps_dev_heavy() {
	_deps_notLean
	export enUb_dev_heavy="true"
}

_deps_cloud_heavy() {
	_deps_notLean
	export enUb_cloud_heavy="true"
}

_deps_mount() {
	_deps_notLean
	export enUb_mount="true"
}

_deps_machineinfo() {
	export enUb_machineinfo="true"
}

_deps_git() {
	export enUb_git="true"
}

_deps_bup() {
	export enUb_bup="true"
}

_deps_repo() {
	export enUb_repo="true"
}

_deps_search() {
	_deps_abstractfs
	
	_deps_git
	_deps_bup
	
	_deps_x11
	
	export enUb_search="true"
}

_deps_cloud() {
	_deps_repo
	_deps_proxy
	_deps_stopwatch
	
	_deps_fakehome
	
	export enUb_cloud="true"
}

_deps_cloud_self() {
	_deps_cloud
	export enUb_cloud_self="true"
}

_deps_cloud_build() {
	_deps_cloud
	export enUb_cloud_build="true"
}

_deps_notLean() {
	_deps_git
	_deps_bup
	_deps_repo
	export enUb_notLean="true"
}

_deps_distro() {
	export enUb_distro="true"
}

_deps_build() {
	export enUb_build="true"
}

#Note that '_build_bash' does not incur '_build', expected to require only scripted concatenation.
_deps_build_bash() {
	export enUb_buildBash="true"
}

_deps_build_bash_ubiquitous() {
	_deps_build_bash
	export enUb_buildBashUbiquitous="true"
}

_deps_os_x11() {
	export enUb_os_x11="true"
}

_deps_proxy() {
	export enUb_proxy="true"
}

_deps_proxy_special() {
	_deps_proxy
	export enUb_proxy_special="true"
}

_deps_clog() {
	export enUb_clog="true"
}

_deps_x11() {
	_deps_build
	_deps_notLean
	export enUb_x11="true"
}

_deps_blockchain() {
	_deps_notLean
	_deps_x11
	export enUb_blockchain="true"
}

_deps_java() {
	export enUb_java="true"
}

_deps_image() {
	_deps_notLean
	_deps_machineinfo
	
	# DANGER: Required for safety mechanisms which may also be used by some other virtualization backends!
	# _deps_image
	# _deps_chroot
	# _deps_vbox
	# _deps_qemu
	export enUb_image="true"
}

_deps_disc() {
	export enUb_disc="true"
}

_deps_virt_thick() {
	_deps_distro
	_deps_build
	_deps_notLean
	_deps_image
	export enUb_virt_thick="true"
}

_deps_virt() {
	_deps_machineinfo
	
	# WARNING: Includes 'findInfrastructure_virt' which may be a dependency of multiple virtualization backends.
	# _deps_image
	# _deps_chroot
	# _deps_vbox
	# _deps_qemu
	# _deps_docker
	export enUb_virt="true"
}

# Specifically intended to support shortcuts using file parameter translation.
_deps_virt_translation() {
	export enUb_virt_translation="true"
}

_deps_chroot() {
	_deps_notLean
	_deps_virt
	_deps_virt_thick
	export enUb_ChRoot="true"
}

_deps_qemu() {
	_deps_notLean
	_deps_virt
	#_deps_virt_thick
		_deps_distro
		_deps_build
		_deps_image
	export enUb_QEMU="true"
}

_deps_vbox() {
	_deps_notLean
	_deps_virt
	#_deps_virt_thick
		_deps_distro
		_deps_build
		_deps_image
	export enUb_vbox="true"
}

_deps_docker() {
	_deps_notLean
	_deps_virt
	_deps_virt_thick
	export enUb_docker="true"
}

_deps_wine() {
	_deps_notLean
	_deps_virt
	export enUb_wine="true"
}

_deps_dosbox() {
	_deps_notLean
	_deps_virt
	export enUb_DosBox="true"
}

_deps_msw() {
	_deps_notLean
	_deps_virt
	#_deps_virt_thick
		_deps_distro
		_deps_build
		_deps_image
	_deps_qemu
	_deps_vbox
	_deps_wine
	export enUb_msw="true"
}

_deps_fakehome() {
	_deps_notLean
	_deps_virt
	export enUb_fakehome="true"
}

_deps_abstractfs() {
	_deps_git
	_deps_bup
	_deps_virt
	export enUb_abstractfs="true"
}

_deps_command() {
	_deps_os_x11
	_deps_proxy
	_deps_proxy_special
	
	export enUb_command="true"
}

_deps_synergy() {
	_deps_command
	export enUb_synergy="true"
}

_deps_hardware() {
	_deps_notLean
	export enUb_hardware="true"
}

_deps_x220t() {
	_deps_notLean
	_deps_hardware
	export enUb_x220t="true"
}

_deps_peripherial() {
	_deps_notLean
	_deps_hardware
	export enUb_peripherial="true"
}

_deps_user() {
	_deps_notLean
	export enUb_user="true"
}

_deps_channel() {
	export enUb_channel="true"
}

_deps_stopwatch() {
	export enUb_stopwatch="true"
}

# WARNING: Specifically refers to 'Linux', the kernel, and things specific to it, NOT any other UNIX like features.
# WARNING: Beware Linux shortcut specific dependency programs must not be required, or will break other operating systems!
# ie. _test_linux must not require Linux-only binaries
_deps_linux() {
	export enUb_linux="true"
}

_deps_calculators() {
	export enUb_calculators="true"
}

#placeholder, define under "queue/build"
# _deps_queue() {
# 	# Message queue - 'broadcastPipe' , etc , underlying functions , '_read_page' , etc .
# 	export enUb_queue="true"
# 	
# 	# Packet - any noise-tolerant 'format' .
# 	# RESERVED variable name - synonymous with 'enUb_queue' .
# 	#export enUb_packet="true"
# 	
# 	# Portal - a 'filter program' to make arrangements between embedded devices of various unique identities and/or devices (eg. 'xAxis400stepsMM' . )
# 	# RESERVED variable name - synonymous with 'enUb_queue' .
# 	#export enUb_portal="true"
# }

#placeholder, define under "metaengine/build"
#_deps_metaengine() {
#	_deps_notLean
#	
#	export enUb_metaengine="true"
#}


_generate_bash() {
	
	_findUbiquitous
	_vars_generate_bash
	
	#####
	
	_deps_build_bash
	_deps_build_bash_ubiquitous
	
	#####
	
	rm -f "$progScript" >/dev/null 2>&1
	
	_compile_bash_header
	
	_compile_bash_essential_utilities
	_compile_bash_utilities
	
	_compile_bash_vars_global
	
	_compile_bash_extension
	_compile_bash_selfHost
	_compile_bash_selfHost_prog
	
	_compile_bash_overrides_disable
	_compile_bash_overrides
	
	_includeScripts "${includeScriptList[@]}"
	
	#Default command.
	echo >> "$progScript"
	echo '_generate_lean-python "$@"' >> "$progScript"
	
	echo >> "$progScript"
	echo '_generate_compile_bash "$@"' >> "$progScript"
	
	echo 'exit 0' >> "$progScript"
	
	chmod u+x "$progScript"
	
	
	_tryExecFull _ub_cksum_special_derivativeScripts_write "$progScript"
	
	# DANGER Do NOT remove.
	exit 0
}

_vars_generate_bash() {
	export configDir="$scriptAbsoluteFolder"/_config
	
	export progDir="$scriptAbsoluteFolder"/_prog
	export progScript="$scriptAbsoluteFolder"/compile.sh
}

#Intended as last command in a compile script. Updates the compile script itself, uses the updated script to update itself again, then compiles product with fully synchronized script.
# WARNING Must be last command and part of a function, or there will be risk of re-entering the script at an incorrect location.
_generate_compile_bash() {
	"$scriptAbsoluteLocation" _generate_bash
	"$scriptAbsoluteFolder"/compile.sh _generate_bash
	"$scriptAbsoluteFolder"/compile.sh _compile_bash
	
	[[ "$objectName" == "ubiquitous_bash" ]] && "$scriptAbsoluteFolder"/compile.sh _compile_bash lean lean.sh
	#[[ "$objectName" == "ubiquitous_bash" ]] && "$scriptAbsoluteFolder"/compile.sh _compile_bash core core_monolithic.sh
	[[ "$objectName" == "ubiquitous_bash" ]] && "$scriptAbsoluteFolder"/compile.sh _compile_bash monolithic monolithic.sh
	[[ "$objectName" == "ubiquitous_bash" ]] && "$scriptAbsoluteFolder"/compile.sh _compile_bash ubcore ubcore.sh
	
	[[ "$1" != "" ]] && "$scriptAbsoluteFolder"/compile.sh _compile_bash "$@"
	
	[[ "$objectName" == "ubiquitous_bash" ]] && _generate_compile_bash-compressed_procedure lean
	[[ "$objectName" == "ubiquitous_bash" ]] && _generate_compile_bash-compressed_procedure ubcore
	#[[ "$objectName" == "ubiquitous_bash" ]] && _generate_compile_bash-compressed_procedure core_monolithic
	#rm -f "$scriptAbsoluteFolder"/core_monolithic.sh
	##mv "$scriptAbsoluteFolder"/core_monolithic_compressed.sh "$scriptAbsoluteFolder"/core_compressed.sh
	[[ "$objectName" == "ubiquitous_bash" ]] && _generate_compile_bash-compressed_procedure monolithic
	rm -f "$scriptAbsoluteFolder"/monolithic.sh
	#mv "$scriptAbsoluteFolder"/monolithic_compressed.sh "$scriptAbsoluteFolder"/compressed.sh
	
	
	[[ "$objectName" == "ubiquitous_bash" ]] && _generate_compile_bash-compressed_procedure ubiquitous_bash
	
	
	_generate_compile_bash_prog
	
	# DANGER Do NOT remove.
	exit 0
}

# #No production use. Unmaintained, obsolete. Never used literally. Preserved as an example command set to build the otherwise self-hosted generate/compile script manually (ie. bootstrapping).
# _bootstrap_bash_basic() {
# 	cat "generic"/minimalheader.sh "labels"/utilitiesLabel.sh "generic/filesystem"/absolutepaths.sh "generic/filesystem"/safedelete.sh "generic/process"/timeout.sh "generic"/uid.sh "generic/filesystem/permissions"/checkpermissions.sh "build/bash"/include.sh "structure"/globalvars.sh "build/bash/ubiquitous"/discoverubiquitous.sh "build/bash/ubiquitous"/depsubiquitous.sh "build/bash"/generate.sh "build/bash"/compile.sh "structure"/overrides.sh > ./compile.sh
# 	echo >> ./compile.sh
# 	echo _generate_compile_bash >> ./compile.sh
# 	chmod u+x ./compile.sh
# }






_generate_compile_bash-compressed_procedure() {
	# If a "base85"/"ascii85" implementation were widely available at all possibly relevant 'environments', then compressed scripts could possibly be ~5% smaller.
	# WARNING: Do NOT attempt 'yEnc', apparently NOT 'utf8' text editor compatible.
	# https://en.wikipedia.org/wiki/Ascii85
	# https://en.wikipedia.org/wiki/Binary-to-text_encoding
	# https://sites.google.com/site/dannychouinard/Home/unix-linux-trinkets/little-utilities/base64-and-base85-encoding-awk-scripts
	#  'if you plan on running these on Solaris, use the /usr/xpg4/bin versions of awk'
	#  https://sites.google.com/site/dannychouinard/Home
	#   'Everything is open source, either public domain or GPL V2.'
	#  Experiments may have found input character corruption apparently with few but significant binary symbols.
	# https://metacpan.org/pod/Math::Base85
	# https://stackoverflow.com/questions/51821351/how-do-i-use-m-flag-to-load-a-perl-module-using-its-relative-path-from-command
	#uudeview
	#local current_textBinaryEncoder
	#current_textBinaryEncoder=""
	#current_textBinaryEncoder="$2"
	#sed -i 'N;s/\n//'
	
	echo "#!/usr/bin/env bash" > "$scriptAbsoluteFolder"/"$1"_compressed.sh
	
	_compressed_criticalDep() {
		! _getAbsolute_criticalDep && exit 1
		
		! type -p sed > /dev/null 2>&1 && exit 1
		! type -p head > /dev/null 2>&1 && exit 1
		! type -p awk > /dev/null 2>&1 && exit 1
		! type -p grep > /dev/null 2>&1 && exit 1
		! type -p ls > /dev/null 2>&1 && exit 1
		! type -p base64 > /dev/null 2>&1 && exit 1
		
		! type -p xz > /dev/null 2>&1 && exit 1
		
		! type -p fold > /dev/null 2>&1 && exit 1
		
		#! type -p cksum > /dev/null 2>&1 && exit 1
		#! type -p env > /dev/null 2>&1 && exit 1
		
		return 0
	}
	
	_compress_declare_headerFunctions() {
	declare -f _realpath_L
	declare -f _realpath_L_s
	declare -f _cygwin_translation_rootFileParameter
	declare -f _getAbsolute_criticalDep
	declare -f _getScriptAbsoluteLocation
	declare -f _getScriptAbsoluteFolder
	declare -f _getAbsoluteLocation
	
	declare -f _compressed_criticalDep
	}
	
	
	#local current_internal_compressedScript_headerFunctions
	current_internal_compressedScript_headerFunctions=$(_compress_declare_headerFunctions | xz -z -e9 -C crc64 --threads=1 | base64 -w 156 | fold -w 156 -s)
	
	
	
	# Comment filter seems to greatly improve compressibility, possibly due to comments being much less compressible than code.
	# WARNING: Comment filter may incorrectly remove comments within here documents, as with '#!/bin/dash' from '_here_header_bash_or_dash()' . Interleaved code using different comment characters (eg. 'batch' files interpretable as 'bash', 'scriptedIllustrator', etc) will fail. Diagnostic/debugging/etc comments may also be removed.
	# https://unix.stackexchange.com/questions/157328/how-can-i-remove-all-comments-from-a-file
	#grep -o '^[^#]*'
	#sed '/^[[:blank:]]*#/d;s/#.*//''
	#shfmt -mn foo.sh
	# https://stackoverflow.com/questions/3349156/general-utility-to-remove-strip-all-comments-from-source-code-in-various-languag
	#cloc --strip-comments=small
	#--use-sloccount
	#grep -v '^'"[[:space:]]"'#'
	#grep -v '^#' | grep -v '^'"[[:space:]]"'#'
	#grep -v '^#[^!]' | grep -v '^'"[[:space:]]"'#[^!]'
	
	local current_internal_CompressedScript
	#current_internal_CompressedScript=$(cat "$scriptAbsoluteFolder"/"$1".sh | grep -v '^_main "$@"$' | sed 's/^_main "$@"$//' | xz -z -e9 -C crc64 --threads=1 | base64 -w 156 | fold -w 156 -s)
	
	current_internal_CompressedScript=$(cat "$scriptAbsoluteFolder"/"$1".sh | grep -v '^_main "$@"$' | sed 's/^_main "$@"$//' | grep -v '^#[^!]' | grep -v '^'"[[:space:]]"'#[^!]' | xz -z -e9 -C crc64 --threads=1 | base64 -w 156 | fold -w 156 -s)
	
	#local current_internal_CompressedScript_cksum
	current_internal_CompressedScript_cksum=$(echo "$current_internal_CompressedScript" | env CMD_ENV=xpg4 cksum | cut -f1 -d\  | tr -dc '0-9')
	#local current_internal_CompressedScript_bytes
	current_internal_CompressedScript_bytes=$(echo "$current_internal_CompressedScript" | wc -c | tr -dc '0-9')
	
	echo '#_compressedScript_uk4uPhB663kVcygT0q_compressedScript_uk4uPhB663kVcygT0q_compressedScript_uk4uPhB663kVcygT0q_compressedScript' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo 'export ub_setScriptChecksum_disable="true"' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	
	echo 'current_internal_CompressedScript_bytes='\'"$current_internal_CompressedScript_bytes"\' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo 'current_internal_CompressedScript_cksum='\'"$current_internal_CompressedScript_cksum"\' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo 'current_internal_CompressedScript='\' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo "$current_internal_CompressedScript"\' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo 'current_internal_compressedScript_headerFunctions='\' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo "$current_internal_compressedScript_headerFunctions"\' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo '! echo "$current_internal_compressedScript_headerFunctions" | base64 -d | xz -d > /dev/null && exit 1' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo 'source <(echo "$current_internal_compressedScript_headerFunctions" | base64 -d | xz -d)' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	cat << 'CZXWXcRMTo8EmM8i4d' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
export importScriptLocation=$(_getScriptAbsoluteLocation)
export importScriptFolder=$(_getScriptAbsoluteFolder)
! type readlink > /dev/null 2>&1 && exit 1;
! type dirname > /dev/null 2>&1 && exit 1;
! type basename > /dev/null 2>&1 && exit 1;
! readlink -f . > /dev/null 2>&1 && exit 1;
[[ "$importScriptLocation" == "" ]] && exit 1
[[ "$importScriptFolder" == "" ]] && exit 1
! _getAbsolute_criticalDep && exit 1
CZXWXcRMTo8EmM8i4d
	
	echo '! _compressed_criticalDep && exit 1' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	
	echo '! echo "$current_internal_CompressedScript" | base64 -d | xz -d > /dev/null && exit 1' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	#echo 'source <(echo "$current_internal_CompressedScript" | base64 -d | xz -d) --compressed "$@"' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	#echo 'source <(echo "$current_internal_CompressedScript" | base64 -d | xz -d) --script' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	#echo 'source <(echo "$current_internal_CompressedScript" | base64 -d | xz -d) --call' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	#echo 'source <(echo "$current_internal_CompressedScript" | base64 -d | xz -d) --bypass "$@"' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
cat << 'CZXWXcRMTo8EmM8i4d' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
if [[ "$1" == "--embed" ]]
then
	source <(echo "$current_internal_CompressedScript" | base64 -d | xz -d) "$@"
	internalFunctionExitStatus="$?"
	return "$internalFunctionExitStatus" > /dev/null 2>&1
	exit "$internalFunctionExitStatus"
elif [[ "$1" == "--profile" ]] || [[ "$1" == "--parent" ]]
then
	source <(echo "$current_internal_CompressedScript" | base64 -d | xz -d) "$@"
else
	source <(echo "$current_internal_CompressedScript" | base64 -d | xz -d) --compressed "$@"
	ub_import=
	ub_import_param=
	ub_import_script=
	ub_loginshell=
fi
if [[ "$ub_import" == "true" ]] && ! ( [[ "$ub_import_param" == "--bypass" ]] ) || [[ "$ub_import_param" == "--compressed" ]] || [[ "$ub_import_param" == "--parent" ]] || [[ "$ub_import_param" == "--profile" ]]
then
	return 0 > /dev/null 2>&1
	exit 0
fi
CZXWXcRMTo8EmM8i4d
	
	echo 'unset current_internal_CompressedScript ; unset current_internal_CompressedScript_cksum ; unset current_internal_CompressedScript_bytes' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo 'export ub_setScriptChecksum_disable=' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo 'unset ub_setScriptChecksum_disable' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	
	echo 'true' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	
	echo '# https://github.com/mirage335/ubiquitous_bash' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo '#_compressedScript_uk4uPhB663kVcygT0q_compressedScript_uk4uPhB663kVcygT0q_compressedScript_uk4uPhB663kVcygT0q_compressedScript' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	
	unset current_internal_CompressedScript ; unset current_internal_CompressedScript_cksum ; unset current_internal_CompressedScript_bytes
	
	
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo '#####Entry' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo '# ###' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	
	# TODO: ' ./ubiquitous_bash_compressed.sh _bin bash -i ' fails if '_main' is enabled
	# TODO: Maybe "$ub_import_param" is not set in this context?
	#echo '[[ "$1" == '"'"_"'"'* ]] && type "$1" > /dev/null 2>&1 && "$@"' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	
	# Disable dependency for 'gosu' binaries only if definitely necessary and if function is otherwise defined.
	#_test_Gosu() {
		#true
	#}
	cat << 'CZXWXcRMTo8EmM8i4d' >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
_test_prog() {
	true
}
_main() {
	#_start
	_start scriptLocal_mkdir_disable
	
	_collect
	
	_enter "$@"
	
	_stop
}
if [[ "$1" == '_test' ]]
then
	current_deleteScriptLocal="false"
	[[ ! -e "$scriptLocal" ]] && current_deleteScriptLocal="true"
	_stop_prog() {
		[[ "$current_deleteScriptLocal" == "true" ]] && rmdir "$scriptLocal" > /dev/null 2>&1
	}
fi
if [[ "$1" == '_'* ]] && type "$1" > /dev/null 2>&1
then
	"$@"
	internalFunctionExitStatus="$?"
	return "$internalFunctionExitStatus" > /dev/null 2>&1
	exit "$internalFunctionExitStatus"
fi
if [[ "$1" != '_'* ]]
then
	_main "$@"
fi
CZXWXcRMTo8EmM8i4d
	echo >> "$scriptAbsoluteFolder"/"$1"_compressed.sh
	
	chmod u+x "$scriptAbsoluteFolder"/"$1"_compressed.sh
	
}

















_generate_compile_bash_prog() {
	"$scriptAbsoluteLocation" _true
	
	#return
	
	rm "$scriptAbsoluteFolder"/ubiquitous_bash.sh
	
	#"$scriptAbsoluteLocation" _compile_bash cautossh cautossh
	#"$scriptAbsoluteLocation" _compile_bash lean lean.sh
	
	#"$scriptAbsoluteLocation" _compile_bash core ubiquitous_bash.sh
	
	#"$scriptAbsoluteLocation" _compile_bash "" ""
	#"$scriptAbsoluteLocation" _compile_bash ubiquitous_bash ubiquitous_bash.sh
	
	#"$scriptAbsoluteLocation" _package
	
	
	#"$scriptAbsoluteLocation" _compile_bash scriptedIllustrator ubiquitous_bash.sh
	
	"$scriptAbsoluteLocation" _compile_bash tinyCompiler_scriptedIllustrator tinyCompiler_scriptedIllustrator.sh
	
	"$scriptAbsoluteFolder"/tinyCompiler_scriptedIllustrator.sh _tinyCompiler_scriptedIllustrator
}

#Default is to include all, or run a specified configuration. For this reason, it will be more typical to override this entire function, rather than append any additional code.
_compile_bash_deps() {
	if [[ "$1" == "lean" ]]
	then
		#_deps_git
		
		#_deps_virt_translation
		
		#_deps_stopwatch
		
		_deps_queue
		
		return 0
	fi
	
	# Specifically intended to be imported into user profile.
	if [[ "$1" == "ubcore" ]]
	then
		_deps_notLean
		
		_deps_git
		_deps_bup
		
		_deps_repo
		
		_deps_search
		
		# WARNING: Only known production use in this context is '_cloud_reset' , '_cloud_unhook' , and similar.
		_deps_cloud
		#_deps_cloud_self
		#_deps_cloud_build
		
		_deps_abstractfs
		
		_deps_virt_translation
		
		_deps_stopwatch
		
		
		_deps_distro
		_deps_linux
		
		_deps_calculators
		
		#_deps_queue
		
		_deps_disc
		
		# _compile_bash_deps 'core'
		return 0
	fi
	
	if [[ "$1" == "cautossh" ]]
	then
		_deps_os_x11
		_deps_proxy
		_deps_proxy_special
		
		_deps_clog
		
		_deps_channel
		
		_deps_git
		_deps_bup
		
		_deps_repo
		
		# WARNING: Although 'cloud' may be relevant to 'cautossh', not included for now, to avoid remotely pulling client software.
		# ATTENTION: Override with 'ops.sh', 'core.sh', or similar.
		#_deps_cloud
		#_deps_cloud_self
		#_deps_cloud_build
		
		_deps_command
		_deps_synergy
		
		# WARNING: Linux *kernel* admin assistance *only*. NOT any other UNIX like features.
		# WARNING: Beware Linux shortcut specific dependency programs must not be required, or will break other operating systems!
		# ie. _test_linux must not require Linux-only binaries
		_deps_linux
		
		_deps_stopwatch
		
		return 0
	fi
	
	if [[ "$1" == "processor" ]]
	then
		_deps_dev
		
		_deps_calculators
		
		_deps_channel
		
		_deps_queue
		_deps_metaengine
		
		return 0
	fi
	
	if [[ "$1" == "abstract" ]] || [[ "$1" == "abstractfs" ]]
	then
		_deps_dev
		
		_deps_calculators
		
		_deps_channel
		
		#_deps_queue
		_deps_metaengine
		
		_deps_abstractfs
		
		return 0
	fi
	
	# Beware most uses of fakehome will benefit from full virtualization fallback.
	if [[ "$1" == "fakehome" ]]
	then
		_deps_dev
		
		_deps_calculators
		
		_deps_channel
		
		#_deps_queue
		_deps_metaengine
		
		_deps_fakehome
		_deps_abstractfs
		
		return 0
	fi
	
	if [[ "$1" == "monolithic" ]]
	then
		_deps_dev_heavy
		_deps_dev
		
		#_deps_cloud_heavy
		
		
		
		_deps_mount
		
		_deps_notLean
		_deps_os_x11
		
		_deps_java
		
		
		_deps_x11
		_deps_image
		
		_deps_virt
		#_deps_virt_thick
		
		#_deps_chroot
		_deps_qemu
		_deps_vbox
		#_deps_docker
		_deps_wine
		_deps_dosbox
		_deps_msw
		_deps_fakehome
		_deps_abstractfs
		
		_deps_calculators
		
		_deps_channel
		
		#_deps_queue
		_deps_metaengine
		
		_deps_git
		_deps_bup
		_deps_repo
		
		_deps_search
		
		#_deps_cloud
		#_deps_cloud_self
		#_deps_cloud_build
		
		_deps_distro
		
		#_deps_blockchain
		
		#_deps_command
		#_deps_synergy
		
		#_deps_hardware
		#_deps_x220t
		#_deps_peripherial
		
		#_deps_user
		
		#_deps_proxy
		#_deps_proxy_special
		
		# WARNING: Linux *kernel* admin assistance *only*. NOT any other UNIX like features.
		# WARNING: Beware Linux shortcut specific dependency programs must not be required, or will break other operating systems!
		# ie. _test_linux must not require Linux-only binaries
		_deps_linux
		
		_deps_stopwatch
		
		_deps_disc
		
		_deps_build
		
		#_deps_build_bash
		#_deps_build_bash_ubiquitous
		
		return 0
	fi
	
	if [[ "$1" == "core" ]]
	then
		_deps_dev_heavy
		_deps_dev
		
		#_deps_cloud_heavy
		
		
		
		_deps_mount
		
		_deps_notLean
		_deps_os_x11
		
		_deps_java
		
		
		_deps_x11
		_deps_image
		
		_deps_virt
		_deps_virt_thick
		
		_deps_chroot
		_deps_qemu
		_deps_vbox
		#_deps_docker
		_deps_wine
		_deps_dosbox
		_deps_msw
		_deps_fakehome
		_deps_abstractfs
		
		_deps_calculators
		
		_deps_channel
		
		#_deps_queue
		_deps_metaengine
		
		_deps_git
		_deps_bup
		_deps_repo
		
		_deps_search
		
		#_deps_cloud
		#_deps_cloud_self
		#_deps_cloud_build
		
		_deps_distro
		
		#_deps_blockchain
		
		#_deps_command
		#_deps_synergy
		
		#_deps_hardware
		#_deps_x220t
		#_deps_peripherial
		
		#_deps_user
		
		#_deps_proxy
		#_deps_proxy_special
		
		# WARNING: Linux *kernel* admin assistance *only*. NOT any other UNIX like features.
		# WARNING: Beware Linux shortcut specific dependency programs must not be required, or will break other operating systems!
		# ie. _test_linux must not require Linux-only binaries
		_deps_linux
		
		_deps_stopwatch
		
		_deps_disc
		
		_deps_build
		
		_deps_build_bash
		_deps_build_bash_ubiquitous
		
		return 0
	fi
	
	if [[ "$1" == "" ]] || [[ "$1" == "ubiquitous_bash" ]] || [[ "$1" == "ubiquitous_bash.sh" ]] || [[ "$1" == "complete" ]]
	then
		_deps_dev_heavy
		_deps_dev
		
		_deps_cloud_heavy
		
		
		
		_deps_mount
		
		_deps_notLean
		_deps_os_x11
		
		_deps_java
		
		
		_deps_x11
		_deps_image
		
		_deps_virt
		_deps_virt_thick
		
		_deps_chroot
		_deps_qemu
		_deps_vbox
		_deps_docker
		_deps_wine
		_deps_dosbox
		_deps_msw
		_deps_fakehome
		_deps_abstractfs
		
		_deps_calculators
		
		_deps_channel
		
		_deps_queue
		_deps_metaengine
		
		_deps_git
		_deps_bup
		_deps_repo
		
		_deps_search
		
		_deps_cloud
		_deps_cloud_self
		_deps_cloud_build
		
		_deps_distro
		
		_deps_blockchain
		
		_deps_command
		_deps_synergy
		
		_deps_hardware
		_deps_x220t
		_deps_peripherial
		
		_deps_user
		
		_deps_proxy
		_deps_proxy_special
		
		_deps_clog
		
		_deps_stopwatch
		
		_deps_linux
		
		_deps_disc
		
		_deps_build
		
		_deps_build_bash
		_deps_build_bash_ubiquitous
		
		return 0
	fi
	
	return 1
}

_vars_compile_bash() {
	export configDir="$scriptAbsoluteFolder"/_config
	
	export progDir="$scriptAbsoluteFolder"/_prog
	export progScript="$scriptAbsoluteFolder"/ubiquitous_bash.sh
	[[ "$1" != "" ]] && export progScript="$scriptAbsoluteFolder"/"$1"
	
	_vars_compile_bash_prog "$@"
}

_compile_bash_header() {
	export includeScriptList
	
	includeScriptList+=( "generic"/minimalheader.sh )
	includeScriptList+=( "generic"/ubiquitousheader.sh )
	
	includeScriptList+=( "os/override"/override.sh )
	includeScriptList+=( "os/override"/override_prog.sh )
	
	includeScriptList+=( "os/override"/override_cygwin.sh )
}

_compile_bash_header_program() {
	export includeScriptList
	
	includeScriptList+=( progheader.sh )
}

_compile_bash_essential_utilities() {
	export includeScriptList
	
	#####Essential Utilities
	includeScriptList+=( "labels"/utilitiesLabel.sh )
	includeScriptList+=( "generic/filesystem"/absolutepaths.sh )
	includeScriptList+=( "generic/filesystem"/safedelete.sh )
	includeScriptList+=( "generic/filesystem"/moveconfirm.sh )
	includeScriptList+=( "generic/filesystem"/allLogic.sh )
	includeScriptList+=( "generic/process"/timeout.sh )
	includeScriptList+=( "generic/process"/terminate.sh )
	includeScriptList+=( "generic"/condition.sh )
	includeScriptList+=( "generic"/uid.sh )
	includeScriptList+=( "generic/filesystem/permissions"/checkpermissions.sh )
	includeScriptList+=( "generic"/findInfrastructure.sh )
	includeScriptList+=( "generic"/gather.sh )
	
	includeScriptList+=( "generic/process"/priority.sh )
	
	includeScriptList+=( "generic/filesystem"/internal.sh )
	
	includeScriptList+=( "generic"/messaging.sh )
	
	includeScriptList+=( "generic"/config/mustcarry.sh )
	
	[[ "$enUb_buildBash" == "true" ]] && includeScriptList+=( "build/bash"/include_bash.sh )
	[[ "$enUb_buildBash" == "true" ]] && includeScriptList+=( "build/bash"/include_bash_prog.sh )
}

_compile_bash_utilities() {
	export includeScriptList
	
	#####Utilities
	includeScriptList+=( "generic/filesystem"/getext.sh )
	
	includeScriptList+=( "generic/filesystem"/finddir.sh )
	
	includeScriptList+=( "generic/filesystem"/discoverresource.sh )
	
	includeScriptList+=( "generic/filesystem"/relink.sh )
	
	[[ "$enUb_mount" == "true" ]] && includeScriptList+=( "generic/filesystem/mounts"/bindmountmanager.sh )
	
	[[ "$enUb_mount" == "true" ]] && includeScriptList+=( "generic/filesystem/mounts"/waitumount.sh )
	
	[[ "$enUb_mount" == "true" ]] && includeScriptList+=( "generic/filesystem/mounts"/mountchecks.sh )
	
	[[ "$enUb_channel" == "true" ]] && includeScriptList+=( "generic/process/"channel.sh )
	
	includeScriptList+=( "generic/process"/waitforprocess.sh )
	
	includeScriptList+=( "generic/process"/daemon.sh )
	
	includeScriptList+=( "generic/process"/remotesig.sh )
	
	includeScriptList+=( "generic/process"/embed_here.sh )
	includeScriptList+=( "generic/process"/embed.sh )
	
	includeScriptList+=( "generic/net"/fetch.sh )
	
	includeScriptList+=( "generic/net"/findport.sh )
	
	includeScriptList+=( "generic/net"/waitport.sh )
	
	[[ "$enUb_proxy_special" == "true" ]] && includeScriptList+=( "generic/net/proxy/tor"/tor.sh )
	
	[[ "$enUb_proxy" == "true" ]] && includeScriptList+=( "generic/net/proxy/ssh"/here_ssh.sh )
	[[ "$enUb_proxy" == "true" ]] && includeScriptList+=( "generic/net/proxy/ssh"/ssh.sh )
	[[ "$enUb_proxy" == "true" ]] && includeScriptList+=( "generic/net/proxy/ssh"/autossh.sh )
	
	[[ "$enUb_proxy" == "true" ]] && includeScriptList+=( "generic/net/proxy/vnc"/vnc_vncserver_operations.sh )
	[[ "$enUb_proxy" == "true" ]] && includeScriptList+=( "generic/net/proxy/vnc"/vnc_vncviewer_operations.sh )
	[[ "$enUb_proxy" == "true" ]] && includeScriptList+=( "generic/net/proxy/vnc"/vnc_x11vnc_operations.sh )
	
	[[ "$enUb_proxy" == "true" ]] && includeScriptList+=( "generic/net/proxy/proxyrouter"/here_proxyrouter.sh )
	[[ "$enUb_proxy" == "true" ]] && includeScriptList+=( "generic/net/proxy/proxyrouter"/proxyrouter.sh )
	
	[[ "$enUb_clog" == "true" ]] && includeScriptList+=( "generic/net/clog"/clog.sh )
	
	includeScriptList+=( "generic"/showCommand.sh )
	includeScriptList+=( "generic"/validaterequest.sh )
	
	includeScriptList+=( "generic"/preserveLog.sh )
	
	[[ "$enUb_os_x11" == "true" ]] && includeScriptList+=( "os/unix/x11"/findx11.sh )
	
	includeScriptList+=( "os"/getDep.sh )
	[[ "$enUb_notLean" == "true" ]] && includeScriptList+=( "os/distro/debian"/getDep_debian.sh )
	
	[[ "$enUb_notLean" == "true" ]] && includeScriptList+=( "os/unix/systemd"/here_systemd.sh )
	[[ "$enUb_notLean" == "true" ]] && includeScriptList+=( "os/unix/systemd"/hook_systemd.sh )
	
	includeScriptList+=( "special"/mustberoot.sh )
	includeScriptList+=( "special"/mustgetsudo.sh )
	
	includeScriptList+=( "special"/uuid.sh )
	
	[[ "$enUb_dev_heavy" == "true" ]] && includeScriptList+=( "instrumentation"/bashdb/bashdb.sh )
	( [[ "$enUb_notLean" == "true" ]] || [[ "$enUb_stopwatch" == "true" ]] ) && includeScriptList+=( "instrumentation"/profiling/stopwatch.sh )
}

# Specifically intended to support Eclipse as necessary for building existing software .
# Java is regarded as something similar to, but not, an unusual virtualization backend, due to its perhaps rare combination of portability, ongoing incompatible versions, lack of root or kernelspace requirements, typical operating system wide installation, and overall complexity.
# Multiple 'jre' and 'jdk' packages or script contained versions may be able to, or required, to satisfy related dependencies.
# WARNING: This is intended to provide for java *applications*, NOT necessarily browser java 'applets'.
# WARNING: Do NOT deprecate java versions for 'security' reasons - this is intended ONLY to support applications which already normally require user or root permissions.
_compile_bash_utilities_java() {
	[[ "$enUb_java" == "true" ]] && includeScriptList+=( "special/java"/java.sh )
#	[[ "$enUb_java" == "true" ]] && includeScriptList+=( "special/java"/javac.sh )
}

_compile_bash_utilities_virtualization() {
	export includeScriptList
	
	# ATTENTION: Although the only known requirement for gosu is virtualization, it may be necessary wherever sudo is not sufficient to drop privileges.
	[[ "$enUb_virt_thick" == "true" ]] && includeScriptList+=( "special/gosu"/gosu.sh )
	
	[[ "$enUb_virt" == "true" ]] && includeScriptList+=( "virtualization"/virtenv.sh )
	
	[[ "$enUb_virt" == "true" ]] && includeScriptList+=( "virtualization"/findInfrastructure_virt.sh )
	
	# Any script managing MSW from UNIX may need basic file parameter translation without needing complete remapping. Example: "_vncviewer_operations" .
	( [[ "$enUb_virt" == "true" ]] || [[ "$enUb_proxy" == "true" ]] || [[ "$enUb_virt_translation" == "true" ]] ) && includeScriptList+=( "virtualization"/osTranslation.sh )
	( [[ "$enUb_virt" == "true" ]] || [[ "$enUb_virt_translation" == "true" ]] ) && includeScriptList+=( "virtualization"/localPathTranslation.sh )
	
	[[ "$enUb_abstractfs" == "true" ]] && includeScriptList+=( "virtualization/abstractfs"/abstractfs.sh )
	[[ "$enUb_abstractfs" == "true" ]] && includeScriptList+=( "virtualization/abstractfs"/abstractfs_appdir_specific.sh )
	[[ "$enUb_abstractfs" == "true" ]] && includeScriptList+=( "virtualization/abstractfs"/abstractfs_appdir.sh )
	[[ "$enUb_abstractfs" == "true" ]] && includeScriptList+=( "virtualization/abstractfs"/abstractfsvars.sh )
	
	[[ "$enUb_fakehome" == "true" ]] && includeScriptList+=( "virtualization/fakehome"/fakehomemake.sh )
	[[ "$enUb_fakehome" == "true" ]] && includeScriptList+=( "virtualization/fakehome"/fakehome.sh )
	[[ "$enUb_fakehome" == "true" ]] && includeScriptList+=( "virtualization/fakehome"/fakehomeuser.sh )
	includeScriptList+=( "virtualization/fakehome"/fakehomereset.sh )
	
	[[ "$enUb_image" == "true" ]] && includeScriptList+=( "virtualization/image"/mountimage.sh )
	[[ "$enUb_image" == "true" ]] && includeScriptList+=( "virtualization/image"/createImage.sh )
	[[ "$enUb_image" == "true" ]] && includeScriptList+=( "virtualization/image"/here_bootdisc.sh )
	[[ "$enUb_image" == "true" ]] && includeScriptList+=( "virtualization/image"/bootdisc.sh )
	[[ "$enUb_image" == "true" ]] && includeScriptList+=( "virtualization/image"/userpersistenthome.sh )
	[[ "$enUb_image" == "true" ]] && includeScriptList+=( "virtualization/image"/transferimage.sh )
	
	[[ "$enUb_ChRoot" == "true" ]] && includeScriptList+=( "virtualization/chroot"/testchroot.sh )
	
	[[ "$enUb_ChRoot" == "true" ]] && includeScriptList+=( "virtualization/chroot"/procchroot.sh )
	[[ "$enUb_ChRoot" == "true" ]] && includeScriptList+=( "virtualization/chroot"/mountchroot.sh )
	[[ "$enUb_ChRoot" == "true" ]] && includeScriptList+=( "virtualization/chroot"/enterchroot.sh )
	
	[[ "$enUb_ChRoot" == "true" ]] && includeScriptList+=( "virtualization/chroot"/mountchrootuser.sh )
	[[ "$enUb_ChRoot" == "true" ]] && includeScriptList+=( "virtualization/chroot"/userchroot.sh )
	[[ "$enUb_ChRoot" == "true" ]] && includeScriptList+=( "virtualization/chroot"/dropchroot.sh )
	
	[[ "$enUb_QEMU" == "true" ]] && includeScriptList+=( "virtualization/qemu"/qemu-raspi-raspi.sh )
	[[ "$enUb_QEMU" == "true" ]] && includeScriptList+=( "virtualization/qemu"/qemu-x64-raspi.sh )
	[[ "$enUb_QEMU" == "true" ]] && includeScriptList+=( "virtualization/qemu"/qemu-x64-x64.sh )
	[[ "$enUb_QEMU" == "true" ]] && includeScriptList+=( "virtualization/qemu"/qemu.sh )
	
	[[ "$enUb_vbox" == "true" ]] && includeScriptList+=( "virtualization/vbox"/vboxtest.sh )
	[[ "$enUb_vbox" == "true" ]] && includeScriptList+=( "virtualization/vbox"/vboxmount.sh )
	[[ "$enUb_vbox" == "true" ]] && includeScriptList+=( "virtualization/vbox"/vboxlab.sh )
	[[ "$enUb_vbox" == "true" ]] && includeScriptList+=( "virtualization/vbox"/vboxuser.sh )
	
	[[ "$enUb_DosBox" == "true" ]] && includeScriptList+=( "virtualization/dosbox"/here_dosbox.sh )
	[[ "$enUb_DosBox" == "true" ]] && includeScriptList+=( "virtualization/dosbox"/dosbox.sh )
	
	[[ "$enUb_wine" == "true" ]] && includeScriptList+=( "virtualization/wine"/wine.sh )
	
	[[ "$enUb_docker" == "true" ]] && includeScriptList+=( "virtualization/docker"/here_docker.sh )
	[[ "$enUb_docker" == "true" ]] && includeScriptList+=( "virtualization/docker"/dockerdrop.sh )
	[[ "$enUb_docker" == "true" ]] && includeScriptList+=( "virtualization/docker"/dockertest.sh )
	[[ "$enUb_docker" == "true" ]] && includeScriptList+=( "virtualization/docker"/dockerchecks.sh )
	[[ "$enUb_docker" == "true" ]] && includeScriptList+=( "virtualization/docker"/dockeruser.sh )
}

# WARNING: Shortcuts must NOT cause _stop/exit failures in _test/_setup procedures!
_compile_bash_shortcuts() {
	export includeScriptList
	
	
	#####Shortcuts
	includeScriptList+=( "labels"/shortcutsLabel.sh )
	
	includeScriptList+=( "shortcuts/prompt"/visualPrompt.sh )
	
	#[[ "$enUb_dev_heavy" == "true" ]] && 
	includeScriptList+=( "shortcuts/dev"/devsearch.sh )
	
	
	( ( [[ "$enUb_dev_heavy" == "true" ]] || [[ "$enUb_metaengine" == "true" ]] ) || [[ "$enUb_calculators" == "true" ]] ) && includeScriptList+=( "shortcuts/dev/app/calculators"/gnuoctave.sh )
	( ( [[ "$enUb_dev_heavy" == "true" ]] || [[ "$enUb_metaengine" == "true" ]] ) || [[ "$enUb_calculators" == "true" ]] ) && includeScriptList+=( "shortcuts/dev/app/calculators"/gnuoctave_extra.sh )
	( ( [[ "$enUb_dev_heavy" == "true" ]] || [[ "$enUb_metaengine" == "true" ]] ) || [[ "$enUb_calculators" == "true" ]] ) && includeScriptList+=( "shortcuts/dev/app/calculators"/qalculate.sh )
	( ( [[ "$enUb_dev_heavy" == "true" ]] || [[ "$enUb_metaengine" == "true" ]] ) || [[ "$enUb_calculators" == "true" ]] ) && includeScriptList+=( "shortcuts/dev/app/calculators"/scriptedIllustrator_terminal.sh )
	
	[[ "$enUb_fakehome" == "true" ]] && [[ "$enUb_dev_heavy" == "true" ]] && includeScriptList+=( "shortcuts/dev/app"/devemacs.sh )
	[[ "$enUb_fakehome" == "true" ]] && [[ "$enUb_dev_heavy" == "true" ]] && includeScriptList+=( "shortcuts/dev/app"/devatom.sh )
	
	[[ "$enUb_fakehome" == "true" ]] && [[ "$enUb_abstractfs" == "true" ]] && [[ "$enUb_dev_heavy" == "true" ]] && includeScriptList+=( "shortcuts/dev/app/eclipse"/deveclipse_java.sh )
	[[ "$enUb_fakehome" == "true" ]] && [[ "$enUb_abstractfs" == "true" ]] && [[ "$enUb_dev_heavy" == "true" ]] && includeScriptList+=( "shortcuts/dev/app/eclipse"/deveclipse_env.sh )
	[[ "$enUb_fakehome" == "true" ]] && [[ "$enUb_abstractfs" == "true" ]] && [[ "$enUb_dev_heavy" == "true" ]] && includeScriptList+=( "shortcuts/dev/app/eclipse"/deveclipse_bin_.sh )
	[[ "$enUb_fakehome" == "true" ]] && [[ "$enUb_abstractfs" == "true" ]] && [[ "$enUb_dev_heavy" == "true" ]] && includeScriptList+=( "shortcuts/dev/app/eclipse"/deveclipse_app.sh )
	[[ "$enUb_fakehome" == "true" ]] && [[ "$enUb_abstractfs" == "true" ]] && [[ "$enUb_dev_heavy" == "true" ]] && includeScriptList+=( "shortcuts/dev/app/eclipse"/deveclipse_example_export.sh )
	[[ "$enUb_fakehome" == "true" ]] && [[ "$enUb_abstractfs" == "true" ]] && [[ "$enUb_dev_heavy" == "true" ]] && includeScriptList+=( "shortcuts/dev/app/eclipse"/deveclipse_example.sh )
	[[ "$enUb_fakehome" == "true" ]] && [[ "$enUb_abstractfs" == "true" ]] && [[ "$enUb_dev_heavy" == "true" ]] && includeScriptList+=( "shortcuts/dev/app/eclipse"/deveclipse.sh )
	
	includeScriptList+=( "shortcuts/dev/query"/devquery.sh )
	
	[[ "$enUb_dev" == "true" ]] && includeScriptList+=( "shortcuts/dev/scope"/devscope.sh )
	[[ "$enUb_dev" == "true" ]] && includeScriptList+=( "shortcuts/dev/scope"/devscope_here.sh )
	
	# WARNING: Some apps may have specific dependencies (eg. fakeHome, abstractfs, eclipse, atom).
	[[ "$enUb_dev" == "true" ]] && includeScriptList+=( "shortcuts/dev/scope"/devscope_app.sh )
	
	( [[ "$enUb_repo" == "true" ]] && [[ "$enUb_git" == "true" ]] ) && includeScriptList+=( "shortcuts/git"/git.sh )
	( [[ "$enUb_repo" == "true" ]] && [[ "$enUb_git" == "true" ]] ) && includeScriptList+=( "shortcuts/git"/gitBare.sh )
	
	[[ "$enUb_bup" == "true" ]] && includeScriptList+=( "shortcuts/bup"/bup.sh )
	
	
	( [[ "$enUb_dev_heavy" == "true" ]] || [[ "$enUb_repo" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/dev/app/repo/mktorrent"/mktorrent.sh )
	( [[ "$enUb_notLean" == "true" ]] || [[ "$enUb_dev" == "true" ]] || [[ "$enUb_dev_heavy" == "true" ]] || [[ "$enUb_image" == "true" ]] || [[ "$enUb_repo" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/dev/app/repo/disk"/dd.sh )
	
	
	( [[ "$enUb_dev_heavy" == "true" ]] || [[ "$enUb_search" == "true" ]] ) && includeScriptList+=( "shortcuts/dev/app/search"/search.sh )
	( [[ "$enUb_dev_heavy" == "true" ]] || [[ "$enUb_search" == "true" ]] ) && includeScriptList+=( "shortcuts/dev/app/search/recoll"/recoll.sh )
	
	
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/self/screenScraper"/screenScraper-nix.sh )
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/self/screenScraper"/screenScraper-msw.sh )
	
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud_self" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/self/ubVirt"/ubVirt_self.sh )
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud_self" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/self"/phpvirtualbox_self.sh )
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud_self" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/self"/virtualbox_self.sh )
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud_self" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/self"/libvirt_self.sh )
	
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/service"/aws/aws.sh )
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/service"/gcloud/gcloud.sh )
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/service"/ibm/ibm.sh )
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/service"/oracle/oracle.sh )
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/service"/azure/azure.sh )
	
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/service/vps"/digitalocean/digitalocean.sh )
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/service/vps"/linode/linode.sh )
	
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/storage"/aws/aws_s3_compatible.sh )
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/storage"/blackblaze/blackblaze.sh )
	
	
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/bridge"/apacheLibcloud/apacheLibcloud.sh )
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/bridge"/nubo/nubo.sh )
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/bridge"/rclone/rclone.sh )
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/bridge"/paramiko/paramiko.sh )
	
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud/bridge"/terraform/terraform.sh )
	
	
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud"/cloud.sh )
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud"/cloud_abstraction.sh )
	
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud_build" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud-build"/docker/docker_build.sh )
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud_build" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud-build"/cloudNativeBuildpack/cloudNativeBuildpack_build.sh )
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud-build"/vagrant/vagrant_build.sh )
	
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud_build" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud-build"/_custom/debian/debian_build.sh )
	( [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud_build" == "true" ]] ) && includeScriptList+=( "shortcuts/cloud-build"/_custom/gentoo/gentoo_build.sh )
	
	
	[[ "$enUb_image" == "true" ]] && includeScriptList+=( "shortcuts/mkboot"/here_mkboot.sh )
	[[ "$enUb_image" == "true" ]] && includeScriptList+=( "shortcuts/mkboot"/mkboot.sh )
	
	[[ "$enUb_notLean" == "true" ]] && [[ "$enUb_distro" == "true" ]] && includeScriptList+=( "shortcuts/distro"/distro.sh )
	
	[[ "$enUb_QEMU" == "true" ]] && [[ "$enUb_distro" == "true" ]] && includeScriptList+=( "shortcuts/distro/debian"/createDebian.sh )
	[[ "$enUb_image" == "true" ]] && [[ "$enUb_distro" == "true" ]] && includeScriptList+=( "shortcuts/distro/raspbian"/createRaspbian.sh )
	
	[[ "$enUb_msw" == "true" ]] && [[ "$enUb_distro" == "true" ]] && includeScriptList+=( "shortcuts/distro/msw"/msw.sh )
	
	[[ "$enUb_x11" == "true" ]] && includeScriptList+=( "shortcuts/x11"/testx11.sh )
	[[ "$enUb_x11" == "true" ]] && includeScriptList+=( "shortcuts/x11"/xinput.sh )
	[[ "$enUb_x11" == "true" ]] && includeScriptList+=( "shortcuts/x11/clipboard"/x11ClipboardImage.sh )
	
	[[ "$enUb_x11" == "true" ]] && includeScriptList+=( "shortcuts/x11/desktop/kde4x"/kde4x.sh )
	
	[[ "$enUb_vbox" == "true" ]] && includeScriptList+=( "shortcuts/vbox"/vboxconvert.sh )
	
	[[ "$enUb_docker" == "true" ]] && includeScriptList+=( "shortcuts/docker"/dockerassets.sh )
	[[ "$enUb_docker" == "true" ]] && includeScriptList+=( "shortcuts/docker"/dockerdelete.sh )
	[[ "$enUb_docker" == "true" ]] && includeScriptList+=( "shortcuts/docker"/dockercreate.sh )
	[[ "$enUb_docker" == "true" ]] && includeScriptList+=( "shortcuts/docker"/dockerconvert.sh )
	[[ "$enUb_docker" == "true" ]] && includeScriptList+=( "shortcuts/docker"/dockerportation.sh )
	[[ "$enUb_docker" == "true" ]] && includeScriptList+=( "shortcuts/docker"/dockercontainer.sh )
	
	[[ "$enUb_docker" == "true" ]] && includeScriptList+=( "shortcuts/docker"/dockercontainer.sh )
	
	[[ "$enUb_image" == "true" ]] && includeScriptList+=( "shortcuts/image"/gparted.sh )
	( [[ "$enUb_image" == "true" ]] || [[ "$enUb_disc" == "true" ]] ) && includeScriptList+=( "shortcuts/image"/packetDrive.sh )
	
	( [[ "$enUb_image" == "true" ]] || [[ "$enUb_disc" == "true" ]] ) && includeScriptList+=( "shortcuts/image/disc"/pattern_recovery.sh )
	
	
	[[ "$enUb_linux" == "true" ]] && includeScriptList+=( "shortcuts/linux"/kernelConfig_here.sh )
	[[ "$enUb_linux" == "true" ]] && includeScriptList+=( "shortcuts/linux"/kernelConfig.sh )
	[[ "$enUb_linux" == "true" ]] && includeScriptList+=( "shortcuts/linux"/kernelConfig_platform.sh )
	
	[[ "$enUb_linux" == "true" ]] && includeScriptList+=( "shortcuts/linux"/bfq.sh )
}

_compile_bash_shortcuts_setup() {
	export includeScriptList
	
	includeScriptList+=( "shortcuts"/setupUbiquitous_accessories_here.sh )
	includeScriptList+=( "shortcuts"/setupUbiquitous_accessories.sh )
	
	includeScriptList+=( "shortcuts"/setupUbiquitous_here.sh )
	includeScriptList+=( "shortcuts"/setupUbiquitous.sh )
}

_compile_bash_shortcuts_os() {
	export includeScriptList
	
	includeScriptList+=( "shortcuts/os/unix/nice"/renice.sh )
	includeScriptList+=( "shortcuts/os/unix/systemd"/systemd_cleanup.sh )
}

_compile_bash_bundled() {
	export includeScriptList
	
	
	[[ "$enUb_blockchain" == "true" ]] && includeScriptList+=( "blockchain"/blockchain.sh )
	[[ "$enUb_blockchain" == "true" ]] && includeScriptList+=( "blockchain/ethereum"/ethereum.sh )
	[[ "$enUb_blockchain" == "true" ]] && includeScriptList+=( "shortcuts/blockchain/ethereum"/ethereum.sh )
	
	[[ "$enUb_blockchain" == "true" ]] && includeScriptList+=( "blockchain/ethereum"/ethereum_parity.sh )
}

_compile_bash_command() {
	[[ "$enUb_command" == "true" ]] && includeScriptList+=( "generic/net/command"/command.sh )
	
	[[ "$enUb_command" == "true" ]] && [[ "$enUb_synergy" == "true" ]] && includeScriptList+=( "generic/net/command/synergy"/here_synergy.sh )
	[[ "$enUb_command" == "true" ]] && [[ "$enUb_synergy" == "true" ]] && includeScriptList+=( "generic/net/command/synergy"/synergy.sh )
}

_compile_bash_user() {
	true
}

_compile_bash_hardware() {
	[[ "$enUb_hardware" == "true" ]] && [[ "$enUb_x220t" == "true" ]] && includeScriptList+=( "hardware/x220t"/x220_display.sh )
	
	[[ "$enUb_hardware" == "true" ]] && [[ "$enUb_peripherial" == "true" ]] && includeScriptList+=( "hardware/peripherial/h1060p"/h1060p.sh )
}

_compile_bash_vars_basic() {
	export includeScriptList
	
	
	#####Basic Variable Management
	includeScriptList+=( "labels"/basicvarLabel.sh )
}

_compile_bash_vars_global() {
	export includeScriptList
	
	includeScriptList+=( "structure"/resetvars.sh )
	
	#Optional, rarely used, intended for overload.
	includeScriptList+=( "structure"/prefixvars.sh )
	
	#####Global variables.
	includeScriptList+=( "structure"/globalvars.sh )
}

_compile_bash_vars_spec() {
	export includeScriptList
	
	
	[[ "$enUb_machineinfo" == "true" ]] && includeScriptList+=( "special/machineinfo"/machinevars.sh )
	
	[[ "$enUb_virt" == "true" ]] && includeScriptList+=( "virtualization"/virtvars.sh )
	[[ "$enUb_virt" == "true" ]] && includeScriptList+=( "virtualization"/image/imagevars.sh )
	
	[[ "$enUb_proxy" == "true" ]] && includeScriptList+=( "generic/net/proxy/ssh"/sshvars.sh )
	
	
	includeScriptList+=( "structure"/specglobalvars.sh )
}

_compile_bash_vars_shortcuts() {
	export includeScriptList
	
	includeScriptList+=( "shortcuts/git"/gitVars.sh )
}

_compile_bash_vars_virtualization() {
	export includeScriptList
	
	
	[[ "$enUb_fakehome" == "true" ]] && includeScriptList+=( "virtualization/fakehome"/fakehomevars.sh )
	[[ "$enUb_vbox" == "true" ]] && includeScriptList+=( "virtualization/vbox"/vboxvars.sh )
	[[ "$enUb_docker" == "true" ]] && includeScriptList+=( "virtualization/docker"/dockervars.sh )
}

_compile_bash_vars_bundled() {
	export includeScriptList
	
	
	[[ "$enUb_proxy" == "true" ]] && includeScriptList+=( "generic/net/proxy/ssh"/sshvars.sh )
}

_compile_bash_buildin() {
	export includeScriptList
	
	[[ "$enUb_build" == "true" ]] && includeScriptList+=( "generic/hello"/hello.sh )
	
	# ATTENTION: Running while X11 session is idle is a common requirement for a daemon.
	[[ "$enUb_build" == "true" ]] && [[ "$enUb_x11" == "true" ]] && includeScriptList+=( "generic/process"/idle.sh )
	
	[[ "$enUb_build" == "true" ]] && includeScriptList+=( "structure"/build.sh )
}

_compile_bash_environment() {
	export includeScriptList
	
	
	includeScriptList+=( "structure"/localfs.sh )
	
	includeScriptList+=( "structure"/localenv.sh )
	includeScriptList+=( "structure"/localenv_prog.sh )
}

_compile_bash_installation() {
	export includeScriptList
	
	includeScriptList+=( "structure"/installation.sh )
	includeScriptList+=( "structure"/installation_prog.sh )
}

_compile_bash_program() {
	export includeScriptList
	
	
	includeScriptList+=( core.sh )
	
	includeScriptList+=( "structure"/program.sh )
}

_compile_bash_config() {
	export includeScriptList
	
	
	#####Hardcoded
	includeScriptList+=( "_config"/netvars.sh )
}

_compile_bash_selfHost() {
	export includeScriptList
	
	
	#####Generate/Compile
	if ( [[ "$enUb_buildBashUbiquitous" == "true" ]] || [[ "$enUb_notLean" == "true" ]] || [[ "$enUb_dev" == "true" ]] || [[ "$enUb_dev_heavy" == "true" ]] || [[ "$enUb_cloud_heavy" == "true" ]] || [[ "$enUb_cloud" == "true" ]] || [[ "$enUb_cloud_self" == "true" ]] || [[ "$enUb_cloud_build" == "true" ]] || [[ "$enUb_metaengine" == "true" ]] || [[ "$enUb_calculators" == "true" ]] )
	then
		includeScriptList+=( "build/python"/python_lean_here.sh )
		includeScriptList+=( "build/python"/python_lean_here_prog.sh )
	fi
	
	
	includeScriptList+=( "build/bash/ubiquitous"/discoverubiquitous.sh )
	#[[ "$enUb_buildBashUbiquitous" == "true" ]] && includeScriptList+=( "build/bash/ubiquitous"/discoverubiquitous.sh )
	[[ "$enUb_buildBashUbiquitous" == "true" ]] && includeScriptList+=( "build/bash/ubiquitous"/depsubiquitous.sh )
	[[ "$enUb_buildBashUbiquitous" == "true" ]] && includeScriptList+=( deps.sh )
	[[ "$enUb_buildBashUbiquitous" == "true" ]] && includeScriptList+=( "build/bash"/generate_bash.sh )
	[[ "$enUb_buildBashUbiquitous" == "true" ]] && includeScriptList+=( "build/bash"/generate_bash_prog.sh )
	
	[[ "$enUb_buildBashUbiquitous" == "true" ]] && includeScriptList+=( "build/bash"/compile_bash.sh )
	[[ "$enUb_buildBashUbiquitous" == "true" ]] && includeScriptList+=( "build/bash"/compile_bash_prog.sh )
}

_compile_bash_overrides() {
	export includeScriptList
	
	
	includeScriptList+=( "structure"/overrides.sh )
}

_compile_bash_overrides_disable() {
	export includeScriptList
	
	
	includeScriptList+=( "structure"/overrides_disable.sh )
}

_compile_bash_entry() {
	export includeScriptList
	
	
	includeScriptList+=( "structure"/entry.sh )
}

_compile_bash_extension() {
	export includeScriptList
	
	[[ "$enUb_buildBashUbiquitous" == "true" ]] && includeScriptList+=( "queue/__build"/deps_queue.sh )
	[[ "$enUb_buildBashUbiquitous" == "true" ]] && includeScriptList+=( "queue/__build"/compile_queue.sh )
	
	[[ "$enUb_buildBashUbiquitous" == "true" ]] && includeScriptList+=( "metaengine/__build"/deps_meta.sh )
	[[ "$enUb_buildBashUbiquitous" == "true" ]] && includeScriptList+=( "metaengine/__build"/compile_meta.sh )
}

#placehoder, define under "queue/build"
#_compile_bash_queue() {
#	true
#}

#placeholder, define under "queue/build"
#_compile_bash_vars_queue() {
#	true
#}

#placehoder, define under "metaengine/build"
#_compile_bash_metaengine() {
#	true
#}

#placeholder, define under "metaengine/build"
#_compile_bash_vars_metaengine() {
#	true
#}

#Ubiquitous Bash compile script. Override with "ops", "_config", or "_prog" directives through "compile_bash_prog.sh" to compile other work products through similar scripting.
# "$1" == configuration
# "$2" == output filename
# DANGER
#Especially, be careful to explicitly check all prerequsites for _safeRMR are in place.
# DANGER
# Intended only for manual use, or within a memory cached function terminated by "exit". Launching through "$scriptAbsoluteLocation" is not adequate protection if the original script itself can reach modified code!
# However, launching through "$scriptAbsoluteLocation" can be used to run a command within the new version fo the script. Use this capability only with full understanding of this notification. 
# WARNING
#Beware lean configurations may not have been properly tested, and are of course intended for developer use. Their purpose is to disable irrelevant dependency checking in "_test" procedures. Rigorous test procedures covering all intended functionality should always be included in downstream projects. Pull requests welcome.
_compile_bash() {
	_findUbiquitous
	_vars_compile_bash "$2"
	
	#####
	
	_compile_bash_deps "$1"
	_compile_bash_deps_prog "$1"
	
	#####
	
	rm "$progScript" >/dev/null 2>&1
	
	export includeScriptList
	
	_compile_bash_header
	_compile_bash_header_prog
	_compile_bash_header_program
	_compile_bash_header_program_prog
	
	_compile_bash_essential_utilities
	_compile_bash_essential_utilities_prog
	_compile_bash_utilities
	_compile_bash_utilities_prog
	_compile_bash_utilities_java
	_compile_bash_utilities_virtualization
	_compile_bash_utilities_virtualization_prog
	
	_compile_bash_shortcuts
	_compile_bash_shortcuts_prog
	_compile_bash_shortcuts_setup
	_compile_bash_shortcuts_setup_prog
	
	_compile_bash_shortcuts_os
	
	_compile_bash_bundled
	_compile_bash_bundled_prog
	
	_compile_bash_command
	
	_compile_bash_user
	
	_compile_bash_hardware
	
	
	_tryExec _compile_bash_queue
	
	_tryExec _compile_bash_metaengine
	
	
	_compile_bash_vars_basic
	_compile_bash_vars_basic_prog
	_compile_bash_vars_global
	_compile_bash_vars_global_prog
	_compile_bash_vars_spec
	_compile_bash_vars_spec_prog
	
	_compile_bash_vars_shortcuts
	_compile_bash_vars_shortcuts_prog
	
	_compile_bash_vars_virtualization
	_compile_bash_vars_virtualization_prog
	_compile_bash_vars_bundled
	_compile_bash_vars_bundled_prog
	
	
	_tryExec _compile_bash_vars_queue
	
	_tryExec _compile_bash_vars_metaengine
	
	
	_compile_bash_buildin
	_compile_bash_buildin_prog
	
	
	_compile_bash_environment
	_compile_bash_environment_prog
	
	_compile_bash_installation
	_compile_bash_installation_prog
	
	_compile_bash_program
	_compile_bash_program_prog
	
	
	_compile_bash_config
	_compile_bash_config_prog
	
	_compile_bash_extension
	_compile_bash_selfHost
	_compile_bash_selfHost_prog
	
	
	_compile_bash_overrides
	_compile_bash_overrides_prog
	
	_compile_bash_entry
	_compile_bash_entry_prog
	
	
	
	_includeScripts "${includeScriptList[@]}"
	
	chmod u+x "$progScript"
	
	
	_tryExecFull _ub_cksum_special_derivativeScripts_write "$progScript"
	
	#if "$progScript" _test > ./compile.log 2>&1
	#then
	#	rm compile.log
	#else
	#	exit 1
	#fi
	
	#"$progScript" _package
	
	# DANGER Do NOT remove.
	exit 0
}

_compile_bash_deps_prog() {
	if [[ "$1" == "tinyCompiler_scriptedIllustrator" ]]
	then
		#_deps_git
		#_deps_virt_translation
		#_deps_stopwatch
		#_deps_queue
		
		
		_deps_calculators
		
		_deps_build_bash
		_deps_build_bash_ubiquitous
		
		return 0
	fi
}

#Default is to include all, or run a specified configuration. For this reason, it will be more typical to override this entire function, rather than append any additional code.
# WARNING Find current version of this function at "build/bash/compile_bash.sh"
# _compile_bash_deps() {
# 	[[ "$1" == "lean" ]] && return 0
# 	
# 	false
# }

_vars_compile_bash_prog() {
	#export configDir="$scriptAbsoluteFolder"/_config
	
	#export progDir="$scriptAbsoluteFolder"/_prog
	#export progScript="$scriptAbsoluteFolder"/ubiquitous_bash.sh
	#[[ "$1" != "" ]] && export progScript="$scriptAbsoluteFolder"/"$1"
	
	true
}

_compile_bash_header_prog() {	
	export includeScriptList
	true
}

_compile_bash_header_program_prog() {	
	export includeScriptList
	true
}

_compile_bash_essential_utilities_prog() {	
	export includeScriptList
	true
}

_compile_bash_utilities_virtualization_prog() {	
	export includeScriptList
	true
}

_compile_bash_utilities_prog() {	
	export includeScriptList
	true
}

_compile_bash_shortcuts_prog() {	
	export includeScriptList
	true
}

_compile_bash_shortcuts_setup_prog() {	
	export includeScriptList
	true
}

_compile_bash_bundled_prog() {	
	export includeScriptList
	true
}

_compile_bash_vars_basic_prog() {	
	export includeScriptList
	true
}

_compile_bash_vars_global_prog() {	
	export includeScriptList
	true
}

_compile_bash_vars_spec_prog() {	
	export includeScriptList
	true
}

_compile_bash_vars_shortcuts_prog() {	
	export includeScriptList
	true
}

_compile_bash_vars_virtualization_prog() {	
	export includeScriptList
	true
}

_compile_bash_vars_bundled_prog() {	
	export includeScriptList
	true
}

_compile_bash_buildin_prog() {	
	export includeScriptList
	true
}

_compile_bash_environment_prog() {	
	export includeScriptList
	true
}

_compile_bash_installation_prog() {	
	export includeScriptList
	true
}

_compile_bash_program_prog() {	
	export includeScriptList
	true
	
	
	includeScriptList+=( "scriptedIllustrator"/functions/20_wip_functions.sh )
	includeScriptList+=( "scriptedIllustrator"/functions/25_experimental_functions.sh )
	includeScriptList+=( "scriptedIllustrator"/functions/40_splice_functions.sh )
	
	includeScriptList+=( "scriptedIllustrator"/functions/70_core_functions.sh )
	includeScriptList+=( "scriptedIllustrator"/functions/78_installation_functions.sh )
	includeScriptList+=( "scriptedIllustrator"/functions/79_program_functions.sh )
	
	includeScriptList+=( "scriptedIllustrator"/functions_markup/_scribble.sh )
	includeScriptList+=( "scriptedIllustrator"/functions_markup/01_shell.sh )
	includeScriptList+=( "scriptedIllustrator"/functions_markup/02_editable.sh )
	includeScriptList+=( "scriptedIllustrator"/functions_markup/05_terminal.sh )
	includeScriptList+=( "scriptedIllustrator"/functions_markup/20_html.sh )
	includeScriptList+=( "scriptedIllustrator"/functions_markup/30_mediawiki.sh )
	includeScriptList+=( "scriptedIllustrator"/functions_markup/40_asciidoc.sh )
	includeScriptList+=( "scriptedIllustrator"/functions_markup/70_python_docx.sh )
}

_compile_bash_config_prog() {	
	export includeScriptList
	true
}

_compile_bash_selfHost_prog() {	
	export includeScriptList
	true
}

_compile_bash_overrides_prog() {	
	export includeScriptList
	true
}

_compile_bash_entry_prog() {	
	export includeScriptList
	true
}

#####Overrides

[[ "$isDaemon" == "true" ]] && echo "$$" | _prependDaemonPID

#May allow traps to work properly in simple scripts which do not include more comprehensive "_stop" or "_stop_emergency" implementations.
if ! type _stop > /dev/null 2>&1
then
	# ATTENTION: Consider carefully, override with "ops".
	# WARNING: Unfortunate, but apparently necessary, workaround for script termintaing while "sleep" or similar run under background.
	_stop_stty_echo() {
		#true
		
		stty echo --file=/dev/tty > /dev/null 2>&1
		
		#[[ "$ubFoundEchoStatus" != "" ]] && stty --file=/dev/tty "$ubFoundEchoStatus" 2> /dev/null
	}
	_stop() {
		_stop_stty_echo
		
		if [[ "$1" != "" ]]
		then
			exit "$1"
		else
			exit 0
		fi
	}
fi
if ! type _stop_emergency > /dev/null 2>&1
then
	_stop_emergency() {
		_stop "$1"
	}
fi

#Traps, if script is not imported into existing shell, or bypass requested.
# WARNING Exact behavior of this system is critical to some use cases.
if [[ "$ub_import" != "true" ]] || [[ "$ub_import_param" == "--bypass" ]]
then
	trap 'excode=$?; _stop $excode; trap - EXIT; echo $excode' EXIT HUP QUIT PIPE 	# reset
	trap 'excode=$?; trap "" EXIT; _stop $excode; echo $excode' EXIT HUP QUIT PIPE 	# ignore
	
	# DANGER: Mechanism of workaround 'ub_trapSet_stop_emergency' is not fully understood, and was added undesirably late in development, with unknown effects. Nevertheless, a need for such functionality is expected to be encountered only rarely.
	# At least '_closeChRoot' , '_userChRoot' , '_userVBox' do not seem to have lost functionality.
	# DANGER: Any shell command matching ' _timeout.*&$ ' (backgrounding of _timeout) will probably be unable to reach '_stop' correctly, and may not remove temporary directories, etc.
	if [[ "$ub_trapSet_stop_emergency" != 'true' ]]
	then
		trap 'excode=$?; _stop_emergency $excode; trap - EXIT; echo $excode' INT TERM	# reset
		trap 'excode=$?; trap "" EXIT; _stop_emergency $excode; echo $excode' INT TERM	# ignore
		export ub_trapSet_stop_emergency='true'
	fi
fi

# DANGER: NEVER intended to be set in an end user shell for ANY reason.
# DANGER: Implemented to prevent 'compile.sh' from attempting to run functions from 'ops.sh'. No other valid use currently known or anticipated!
if [[ "$ub_ops_disable" != 'true' ]]
then
	#Override functions with external definitions from a separate file if available.
	#if [[ -e "./ops" ]]
	#then
	#	. ./ops
	#fi

	#Override functions with external definitions from a separate file if available.
	# CAUTION: Recommend only "ops" or "ops.sh" . Using both can cause confusion.
	# ATTENTION: Recommend "ops.sh" only when unusually long. Specifically intended for "CoreAutoSSH" .
	if [[ -e "$objectDir"/ops ]]
	then
		. "$objectDir"/ops
	fi
	if [[ -e "$objectDir"/ops.sh ]]
	then
		. "$objectDir"/ops.sh
	fi
	if [[ -e "$scriptLocal"/ops ]]
	then
		. "$scriptLocal"/ops
	fi
	if [[ -e "$scriptLocal"/ops.sh ]]
	then
		. "$scriptLocal"/ops.sh
	fi
	if [[ -e "$scriptLocal"/ssh/ops ]]
	then
		. "$scriptLocal"/ssh/ops
	fi
	if [[ -e "$scriptLocal"/ssh/ops.sh ]]
	then
		. "$scriptLocal"/ssh/ops.sh
	fi

	#WILL BE OVERWRITTEN FREQUENTLY.
	#Intended for automatically generated shell code identifying usable resources, such as unused network ports. Do NOT use for serialization of internal variables (use $varStore for that).
	if [[ -e "$objectDir"/opsauto ]]
	then
		. "$objectDir"/opsauto
	fi
	if [[ -e "$scriptLocal"/opsauto ]]
	then
		. "$scriptLocal"/opsauto
	fi
	if [[ -e "$scriptLocal"/ssh/opsauto ]]
	then
		. "$scriptLocal"/ssh/opsauto
	fi
fi

#Wrapper function to launch arbitrary commands within the ubiquitous_bash environment, including its PATH with scriptBin.
_bin() {
	"$@"
}
#Mostly intended to launch bash prompt for MSW/Cygwin users.
_bash() {
	local currentIsCygwin
	currentIsCygwin='false'
	[[ -e '/cygdrive' ]] && uname -a | grep -i cygwin > /dev/null 2>&1 && _if_cygwin && currentIsCygwin='true'
	
	# WARNING: What is otherwise considered bad practice may be accepted to reduce substantial MSW/Cygwin inconvenience .
	[[ "$currentIsCygwin" == 'true' ]] && echo -n '.'
	
	
	_visualPrompt
	[[ "$ub_scope_name" != "" ]] && _scopePrompt
	
	
	[[ "$1" == '-i' ]] && shift
	
	
	
	if [[ "$currentIsCygwin" == 'true' ]] && grep ubcore "$HOME"/.bashrc > /dev/null 2>&1 && [[ "$scriptAbsoluteLocation" == *"lean.sh" ]]
	then
		export sessionid=""
		export scriptAbsoluteFolder=""
		export scriptAbsoluteLocation=""
		bash -i "$@"
		return
	elif  [[ "$currentIsCygwin" == 'true' ]] && grep ubcore "$HOME"/.bashrc > /dev/null 2>&1 && [[ "$scriptAbsoluteLocation" != *"lean.sh" ]]
	then
		bash -i "$@"
		return
	elif [[ "$currentIsCygwin" == 'true' ]] && ! grep ubcore "$HOME"/.bashrc > /dev/null 2>&1
	then
		bash --norc -i "$@"
		return
	else
		bash -i "$@"
		return
	fi
	
	bash -i "$@"
	return
	
	return 1
}

#Mostly if not entirely intended for end user convenience.
_python() {
	if [[ -e "$safeTmp"/lean.py ]]
	then
		"$safeTmp"/lean.py '_python()'
		return
	fi
	if [[ -e "$scriptAbsoluteFolder"/lean.py ]]
	then
		"$scriptAbsoluteFolder"/lean.py '_python()'
		return
	fi
	if type -p 'lean.py' > /dev/null 2>&1
	then
		lean.py '_python()'
		return
	fi
	return 1
}

#Launch internal functions as commands, and other commands, as root.
_sudo() {
	sudo -n "$scriptAbsoluteLocation" _bin "$@"
}

_true() {
	#"$scriptAbsoluteLocation" _false && return 1
	#! "$scriptAbsoluteLocation" _bin true && return 1
	#"$scriptAbsoluteLocation" _bin false && return 1
	true
}
_false() {
	false
}
_echo() {
	echo "$@"
}

_diag() {
	echo "$sessionid"
}

#Stop if script is imported, parameter not specified, and command not given.
if [[ "$ub_import" == "true" ]] && [[ "$ub_import_param" == "" ]] && [[ "$1" != '_'* ]]
then
	_messagePlain_warn 'import: missing: parameter, missing: command' | _user_log-ub
	ub_import=""
	return 1 > /dev/null 2>&1
	exit 1
fi

#Set "ubOnlyMain" in "ops" overrides as necessary.
if [[ "$ubOnlyMain" != "true" ]]
then
	
	#Launch command named by link name.
	if scriptLinkCommand=$(_getScriptLinkName)
	then
		if [[ "$scriptLinkCommand" == '_'* ]]
		then
			"$scriptLinkCommand" "$@"
			internalFunctionExitStatus="$?"
			
			#Exit if not imported into existing shell, or bypass requested, else fall through to subsequent return.
			if [[ "$ub_import" != "true" ]] || [[ "$ub_import_param" == "--bypass" ]] || [[ "$ub_import_param" == "--compressed" ]]
			then
				#export noEmergency=true
				exit "$internalFunctionExitStatus"
			fi
			ub_import=""
			return "$internalFunctionExitStatus" > /dev/null 2>&1
			exit "$internalFunctionExitStatus"
		fi
	fi
	
	# NOTICE Launch internal functions as commands.
	#if [[ "$1" != "" ]] && [[ "$1" != "-"* ]] && [[ ! -e "$1" ]]
	#if [[ "$1" == '_'* ]] || [[ "$1" == "true" ]] || [[ "$1" == "false" ]]
	# && [[ "$1" != "_test" ]] && [[ "$1" != "_setup" ]] && [[ "$1" != "_build" ]] && [[ "$1" != "_vector" ]] && [[ "$1" != "_setupCommand" ]] && [[ "$1" != "_setupCommand_meta" ]] && [[ "$1" != "_setupCommands" ]] && [[ "$1" != "_find_setupCommands" ]] && [[ "$1" != "_setup_anchor" ]] && [[ "$1" != "_anchor" ]] && [[ "$1" != "_package" ]] && [[ "$1" != *"_prog" ]] && [[ "$1" != "_main" ]] && [[ "$1" != "_collect" ]] && [[ "$1" != "_enter" ]] && [[ "$1" != "_launch" ]] && [[ "$1" != "_default" ]] && [[ "$1" != "_experiment" ]]
	if [[ "$1" == '_'* ]] && type "$1" > /dev/null 2>&1 && [[ "$1" != "_test" ]] && [[ "$1" != "_setup" ]] && [[ "$1" != "_build" ]] && [[ "$1" != "_vector" ]] && [[ "$1" != "_setupCommand" ]] && [[ "$1" != "_setupCommand_meta" ]] && [[ "$1" != "_setupCommands" ]] && [[ "$1" != "_find_setupCommands" ]] && [[ "$1" != "_setup_anchor" ]] && [[ "$1" != "_anchor" ]] && [[ "$1" != "_package" ]] && [[ "$1" != *"_prog" ]] && [[ "$1" != "_main" ]] && [[ "$1" != "_collect" ]] && [[ "$1" != "_enter" ]] && [[ "$1" != "_launch" ]] && [[ "$1" != "_default" ]] && [[ "$1" != "_experiment" ]]
	then
		"$@"
		internalFunctionExitStatus="$?"
		
		#Exit if not imported into existing shell, or bypass requested, else fall through to subsequent return.
		if [[ "$ub_import" != "true" ]] || [[ "$ub_import_param" == "--bypass" ]] || [[ "$ub_import_param" == "--compressed" ]]
		then
			#export noEmergency=true
			exit "$internalFunctionExitStatus"
		fi
		ub_import=""
		return "$internalFunctionExitStatus" > /dev/null 2>&1
		exit "$internalFunctionExitStatus"
		#_stop "$?"
	fi
fi

[[ "$ubOnlyMain" == "true" ]] && export ubOnlyMain="false"

#Do not continue script execution through program code if critical global variables are not sane.
[[ ! -e "$scriptAbsoluteLocation" ]] && exit 1
[[ ! -e "$scriptAbsoluteFolder" ]] && exit 1
_failExec || exit 1

#Return if script is under import mode, and bypass is not requested.
# || [[ "$current_internal_CompressedScript" != "" ]] || [[ "$current_internal_CompressedScript_cksum" != "" ]] || [[ "$current_internal_CompressedScript_bytes" != "" ]]
if [[ "$ub_import" == "true" ]] && ! ( [[ "$ub_import_param" == "--bypass" ]] ) || [[ "$ub_import_param" == "--compressed" ]] || [[ "$ub_import_param" == "--parent" ]] || [[ "$ub_import_param" == "--profile" ]]
then
	return 0 > /dev/null 2>&1
	exit 0
fi


#####Entry

# WARNING: Do not add code directly here without disabling checksum!
# WARNING: Checksum may only be disabled either by override of 'generic/minimalheader.sh' or by adding appropriate '.nck' file !

#"$scriptAbsoluteLocation" _setup




if [[ "$1" == '_'* ]] && type "$1" > /dev/null 2>&1
then
	"$@"
	internalFunctionExitStatus="$?"
	return "$internalFunctionExitStatus" > /dev/null 2>&1
	exit "$internalFunctionExitStatus"
fi
if [[ "$1" != '_'* ]]
then
	_main "$@"
fi

