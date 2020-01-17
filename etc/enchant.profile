# Firejail profile for enchant
# Description: Wrapper for various spell checker engines
# This file is overwritten after every install/update
# Persistent local customizations
include enchant.local
# Persistent global definitions
include globals.local

noblacklist ${HOME}/.config/enchant

blacklist /tmp/.X11-unix

include disable-common.inc
include disable-devel.inc
include disable-exec.inc
include disable-interpreters.inc
include disable-passwdmgr.inc
include disable-programs.inc
include disable-xdg.inc

mkdir ${HOME}/.config/enchant
whitelist ${HOME}/.config/enchant
include whitelist-common.inc
include whitelist-usr-share-common.inc
include whitelist-var-common.inc

apparmor
caps.drop all
ipc-namespace
machine-id
net none
no3d
nodbus
nodvd
nogroups
nonewprivs
noroot
nosound
notv
nou2f
novideo
protocol unix
seccomp
shell none
tracelog
x11 none

private-bin enchant,enchant-*
private-cache
private-dev
private-etc alternatives
private-lib
private-tmp

memory-deny-write-execute
