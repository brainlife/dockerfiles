#!/bin/bash
export PATH=/opt/sensu/embedded/bin:$PATH
/opt/sensu/bin/sensu-server -c /etc/sensu/config.json -d /etc/sensu/conf.d -L warn &
/opt/sensu/bin/sensu-api -c /etc/sensu/config.json -d /etc/sensu/conf.d -L warn

