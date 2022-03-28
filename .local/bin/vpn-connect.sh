#!/bin/bash
_pass=$(gopass show -o work/accounts.google.com/morc@hellofresh.com)
echo vpn.secrets.password:${_pass} | nmcli connection up hf-vpn passwd-file /dev/fd/0
