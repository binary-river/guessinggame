#!/usr/bin/env bash
# Test

function numberValidator {
 
 if [[ $# -eq 0 ]]
 then 
  return 1;
 fi

 if [[ ! $1 =~ ^[0-9]+ ]]
 then
  return 1;
 fi

 return 0;
}

file_cnt=$(ls -al | egrep ^- | wc -l)

while [[ 1 -eq 1 ]]
do
 printf  "guess number : "
 read user_input
 
 numberValidator ${user_input}
 if [[ $? -eq 1 ]]
 then 
  echo "invalid number"
  continue;
 fi

 if [[ ${user_input} -eq ${file_cnt} ]] 
 then 
  echo "congratulation!"
  break;
 elif [[ ${user_input} -gt ${file_cnt} ]]
 then
  echo "too high"
 elif [[ ${user_input} -lt ${file_cnt} ]]
 then 
  echo "too low"
 else
  echo "unexpected input"
 fi

done
