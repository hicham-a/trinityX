
######################################################################
# Trinity X
# Copyright (c) 2016  ClusterVision B.V.
# 
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License (included with the sources) for more
# details.
######################################################################


echo_info "Configure firewalld."

if /usr/bin/firewall-cmd --state >/dev/null ; then
    /usr/bin/firewall-cmd --permanent --add-port=7789/tcp
    /usr/bin/firewall-cmd --reload
else
    echo_warn "Firewalld is not running. 7789/tcp should be open if you enable it later."
fi

