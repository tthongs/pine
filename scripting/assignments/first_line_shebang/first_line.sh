#!/usr/bin/bash

cd scripts

SB="#!/usr/bin/bash"

for sf in *.sh; do

  if [ -f "$sf" ]; then
    echo "Processing file: $sf"

    fl=$(head -n 1 "$sf")

    if [ "$fl" != "$SB" ]; then
      echo "Missing or incorrect shebang. Inserting '$SB'...."

      sed -i "1i\\$SB" "$sf"

      echo "Successfully inserted the shebang."
    else
      echo "Shebang already present. No changes made."
    fi
  fi
done
