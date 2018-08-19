#!/bin/bash

zip -F ./datasets/pix2code_datasets.zip --out ./datasets/datasets.zip;
unzip ./datasets/datasets.zip -d ./datasets;
python3 ./model/build_datasets.py ./datasets/web/all_data;
python3 ./model/convert_imgs_to_arrays.py ./datasets/web/training_set ./datasets/web/training_features;
python3 ./model/train.py ./datasets/web/training_features ../drive/bin/ 1