#!/bin/bash

dates=("2023-08-18" "2023-09-15" "2024-01-13" "2024-04-11" "2024-05-29_1" "2024-05-29_2" "2024-05-29_3" "2024-05-29_4")

for date in "${dates[@]}"; do
    echo "Processing date: $date"

    trials=("0" "1" "2" "3" "4")

    for trial in "${trials[@]}"; do
        echo "  Trial: $trial"
        python3 -u run_slam_rover.py --config configs/mono/rover/d435i.yaml --data_path /workspace/mounted_directory/media/$date/d435i --output_path output/mono/$trial
        python3 -u run_slam_rover.py --config configs/rgbd/rover/d435i.yaml --data_path /workspace/mounted_directory/media/$date/d435i --output_path output/rgbd/$trial
    done
done
