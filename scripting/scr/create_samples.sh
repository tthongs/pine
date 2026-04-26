#!/bin/bash

# Setup Tutorial Sample Data
# Description: This script creates a 'data/' directory with sample files and deep paths.
# Run this if you want to explore the data structures manually.

# Create base data directory
mkdir -p data
cd data || exit

# 1. Basic Text File (f1)
cat <<EOF > f1
Pine academy 345
Pine academy 567
pine academy 123
pine academy 129
pine academy 12
pine academy 1
EOF

# 2. Pattern File (f2)
cat <<EOF > f2
a
12c
b
c
1
d
e
f
EOF

# 3. Delimited File (tt)
cat <<EOF > tt
apple:10:red
banana:5:yellow
cherry:20:red
EOF

# 4. Human-readable sizes (sizes.txt)
cat <<EOF > sizes.txt
total 4
0 Sep 27 22:34 newfile 1.2K
0 Oct  4 21:37 f9 500
0 Nov 10 10:00 bigfile 2.5M
0 Nov 11 11:00 smallfile 100K
EOF

# 5. Deep Paths for Parameter Expansion testing
mkdir -p projects/bash_tutorial/src/utils
touch projects/bash_tutorial/src/main.sh
touch projects/bash_tutorial/src/utils/helper.py
touch projects/bash_tutorial/config.json

# 6. Sample Directories for diff comparison
mkdir -p D1 D2
touch D1/f1 D1/f2 D1/f3
touch D2/f1 D2/f2

echo "Sample data has been created in the 'data/' directory."
echo "Deep paths generated for testing basename/dirname logic:"
find projects -maxdepth 3
