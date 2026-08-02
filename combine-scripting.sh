#!/bin/bash

echo "============================"
echo " Daily Server maintenance   "
echo "============================"

bash health_check.sh

bash log_rotation.sh

bash cleanup.sh

echo "=================================="
echo "maintenance Completed successfully"
echo "=================================="