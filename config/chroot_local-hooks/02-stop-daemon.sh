#!/bin/sh
update-rc.d -f openbsd-inetd remove
update-rc.d -f stop-bootlogd remove
update-rc.d -f cron remove
update-rc.d -f syslogd remove
update-rc.d -f saned remove

