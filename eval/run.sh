#!/bin/bash

# 定义基础模型和 YAML 文件路径
MODEL="open_lm_160m"
DATASET="c4noclean"
EVAL_YAML="test_yaml/core_tasks.yaml"
BASE_CHECKPOINT_PATH="/mnt/nas/openlm/logs/lm_160m_c4noclean_5bt/checkpoints"

# 定义 epoch 列表
EPOCHS=(1 3 5 7 9)

# 定义日志根目录，并在其中为当前模型创建子文件夹
LOG_ROOT="./log"
LOG_DIR="$LOG_ROOT/$DATASET"
mkdir -p "$LOG_DIR"

# 遍历每个 epoch 并执行命令，并将输出写入对应的 log 文件
for EPOCH in "${EPOCHS[@]}"
do
  CHECKPOINT_FILE="$BASE_CHECKPOINT_PATH/epoch_$EPOCH.pt"
  LOG_FILE="$LOG_DIR/epoch_$EPOCH.log"
  
  echo "Running evaluation for epoch: $EPOCH, logging to $LOG_FILE"
  composer -n 4 eval_openlm_ckpt.py \
    --eval-yaml "$EVAL_YAML" \
    --model "$MODEL" \
    --checkpoint "$CHECKPOINT_FILE" > "$LOG_FILE" 2>&1
done

# 定义基础模型和 YAML 文件路径
MODEL="open_lm_160m"
DATASET="fineweb_edu"
EVAL_YAML="test_yaml/core_tasks.yaml"
BASE_CHECKPOINT_PATH="/mnt/nas/openlm/logs/lm_160m_fineweb_edu_5bt/checkpoints"

# 定义 epoch 列表
EPOCHS=(1 3 5 7 9)

# 定义日志根目录，并在其中为当前模型创建子文件夹
LOG_ROOT="./log"
LOG_DIR="$LOG_ROOT/$DATASET"
mkdir -p "$LOG_DIR"

# 遍历每个 epoch 并执行命令，并将输出写入对应的 log 文件
for EPOCH in "${EPOCHS[@]}"
do
  CHECKPOINT_FILE="$BASE_CHECKPOINT_PATH/epoch_$EPOCH.pt"
  LOG_FILE="$LOG_DIR/epoch_$EPOCH.log"
  
  echo "Running evaluation for epoch: $EPOCH, logging to $LOG_FILE"
  composer -n 4 eval_openlm_ckpt.py \
    --eval-yaml "$EVAL_YAML" \
    --model "$MODEL" \
    --checkpoint "$CHECKPOINT_FILE" > "$LOG_FILE" 2>&1
done

# 定义基础模型和 YAML 文件路径
MODEL="open_lm_160m"
DATASET="fineweb_5bt"
EVAL_YAML="test_yaml/core_tasks.yaml"
BASE_CHECKPOINT_PATH="/mnt/nas/openlm/logs/lm_160m_fineweb_5bt/checkpoints"

# 定义 epoch 列表
EPOCHS=(1 3 5 7 9)

# 定义日志根目录，并在其中为当前模型创建子文件夹
LOG_ROOT="./log"
LOG_DIR="$LOG_ROOT/$DATASET"
mkdir -p "$LOG_DIR"

# 遍历每个 epoch 并执行命令，并将输出写入对应的 log 文件
for EPOCH in "${EPOCHS[@]}"
do
  CHECKPOINT_FILE="$BASE_CHECKPOINT_PATH/epoch_$EPOCH.pt"
  LOG_FILE="$LOG_DIR/epoch_$EPOCH.log"
  
  echo "Running evaluation for epoch: $EPOCH, logging to $LOG_FILE"
  composer -n 4 eval_openlm_ckpt.py \
    --eval-yaml "$EVAL_YAML" \
    --model "$MODEL" \
    --checkpoint "$CHECKPOINT_FILE" > "$LOG_FILE" 2>&1
done
