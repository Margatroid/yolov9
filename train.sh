#!/bin/bash

pip install -r requirements.txt -q

wget -P /content/yolov9/weights -q https://github.com/WongKinYiu/yolov9/releases/download/v0.1/yolov9-c.pt

python train_dual.py \
--workers 32 \
--batch-size 16 \
--epochs 50 \
--data /content/data.yaml \
--weights /content/yolov9/weights/yolov9-c.pt \
--cfg /content/yolov9/models/detect/yolov9-c.yaml \
--hyp /content/yolov9/data/hyps/hyp.scratch-high.yaml \
--project /content/yolov9_training_output \
--name hello_world \
--exist-ok