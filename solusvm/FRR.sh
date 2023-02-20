#/bin/bash
# AutoSetup FRR, made to SolusVM.

# Checking for an active GRE connection
if (( $(ip tunnel show | grep router | wc -l) == 1 ))
then
    # Execute script 
    sudo su -c "bash <(wget -qO- http://10.3.0.2/frr/setup.sh)" root
else 
    echo "setup gre tunnel to start"
fi