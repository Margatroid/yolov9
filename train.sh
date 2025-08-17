#!/bin/bash

python train_dual.py \
--workers 32 \
--batch-size 16 \
--epochs 50 \
--data /content/data.yaml \
--weights /content/yolov9/weights/yolov9-c.pt \
--cfg /content/yolov9/models/detect/yolov9-c.yaml \
--hyp /content/yolov9/data/hyps/hyp.scratch-low.yaml \
--project /content/yolov9_training_output \
--name hello_world \
--exist-ok