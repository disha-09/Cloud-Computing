#! /bin/bash
#

CPU_TEST_PATH="/vagrant_folder/cpu.sh"
FILEIO_TEST_PATH="/vagrant_folder/file.sh"

sudo apt-get update
sudo apt-get install -y sysbench

chmod +x /vagrant_folder/cpu.sh
chmod +x /vagrant_folder/file.sh

"$CPU_TEST_PATH"
"$FILEIO_TEST_PATH"