#! /bin/bash
cd ~/neorv32/setups/osflow
make BOARD=iCEBreaker MinimalBoot
iceprog neorv32_iCEBreaker_MinimalBoot.bit
cd ~/neorv32/sw/example/$1
make exe
cutecom &
echo "\n\n"
echo "----------------------------------------------------------------------------------------------------------"
echo "open & reset board & send any character via UART"
echo "CMD> u (upload) + load program + e (execute)"
echo "----------------------------------------------------------------------------------------------------------"
echo "\n\n"
