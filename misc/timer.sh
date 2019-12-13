#!/bin/bash
RUNTIME=360
QTIME=50

while true; do
  echo "START"
  I=${RUNTIME}
  while [[ $I -gt 0 ]]; do
    echo $I
    sleep 1
    I=$(expr $I - 1)
  done
  mplayer buzz.wav 1>/dev/null 2>/dev/null
  echo "QUESTIONS"
  I=${QTIME}
  while [[ $I -gt 0 ]]; do
    echo $I
    sleep 1
    I=$(expr $I - 1)
  done
  mplayer buzz.wav 1>/dev/null 2>/dev/null
  echo
  echo "press return to start next presentation"
  read
done

