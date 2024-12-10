#!/bin/bash

trials=("1")

for trial in "${trials[@]}"; do
    echo "  Trial: $trial"

    for scene in 0; do
        SCENE_NUM=${scene}
        export SCENE_NUM
        echo "Running scene number ${SCENE_NUM}"
        # python3 -u run_slam_stihl.py --config configs/mono/stihl/d435i.yaml --base_data_path /media/mobile-robots/My\ Passport/stihl_datasets --base_output_path output/short_mapping/mono/$trial
        python3 -u run_slam_stihl.py --config configs/rgbd/stihl/d435i.yaml --base_data_path /media/mobile-robots/My\ Passport/stihl_datasets --base_output_path output/short_mapping/rgbd/$trial
    done
done