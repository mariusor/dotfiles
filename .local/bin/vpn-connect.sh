#!/bin/bash
gopass show -o work/accounts.google.com/morc@hellofresh.com | nmcli connection up hf::vpn --ask
