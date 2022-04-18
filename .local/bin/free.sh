#!/bin/bash

LOW_WATERMARK=$(awk '$1 == "low" {LOW_WATERMARK += $2} END {print LOW_WATERMARK * 4096}' /proc/zoneinfo)

MEMINFO=$(</proc/meminfo)

MEMINFO_MEMTOTAL=$(echo "${MEMINFO}" | awk '$1 == "MemTotal:" {print $2 * 1024}')
MEMINFO_MEMFREE=$(echo "${MEMINFO}" | awk '$1 == "MemFree:" {print $2 * 1024}')
MEMINFO_FILE=$(echo "${MEMINFO}" | awk '{MEMINFO[$1]=$2} END {print (MEMINFO["Active(file):"] + MEMINFO["Inactive(file):"]) * 1024}')
MEMINFO_SRECLAIMABLE=$(echo "${MEMINFO}" | awk '$1 == "SReclaimable:" {print $2 * 1024}')

MEMINFO_MEMAVAILABLE=$((
  MEMINFO_MEMFREE - LOW_WATERMARK
  + MEMINFO_FILE - ((MEMINFO_FILE/2) < LOW_WATERMARK ? (MEMINFO_FILE/2) : LOW_WATERMARK)
  + MEMINFO_SRECLAIMABLE - ((MEMINFO_SRECLAIMABLE/2) < LOW_WATERMARK ? (MEMINFO_SRECLAIMABLE/2) : LOW_WATERMARK)
))

if [[ "${MEMINFO_MEMAVAILABLE}" -le 0 ]]
then
  MEMINFO_MEMAVAILABLE=0
fi

PERCENT=$(bc <<< "scale=4; ${MEMINFO_MEMAVAILABLE} / ${MEMINFO_MEMTOTAL} * 100")
echo ${PERCENT%00}
