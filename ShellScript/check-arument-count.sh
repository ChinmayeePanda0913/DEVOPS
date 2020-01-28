#!/bin/bash

Message1="Message1 : $(basename $0) you passed $# Arguments.."
Message2="Message2 : you passed $# Arguments.."

if [ $# -ne 2 ]
then
  echo $Message1
  exit
else
  echo $Message2
  exit
fi

