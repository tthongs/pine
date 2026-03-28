#!/usr/bin/bash

touch op_alpha_hash

while IFS= read -r line; do
  if [[ $line =~ ^[a-zA-Z] ]] || [[ $line =~ ^# ]]; then
    echo "$line" >>op_alpha_hash
  fi
done <inp_tt.txt
