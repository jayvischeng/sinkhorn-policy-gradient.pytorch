#!/bin/bash
MODEL='spg'
N_NODES=20
POISSON_LAMBDA=2
COP="tsp_$N_NODES"
ARCH='rnn'
RANDOM_SEED=$1
ALPHA=1.0
RUN_NUM=$2
RUN_NAME="tsp-$RANDOM_SEED$RUN_NUM"
TRAIN_SIZE=500000
VAL_SIZE=1000
USE_BATCHNORM='True'
PARALLEL_ENVS=128
BATCH_SIZE=128
N_FEATURES=2
HIDDEN_DIM=300
ACTOR_LR=3e-5 # 3e-5
CRITIC_LR=7e-4 # 7e-4
ACTOR_LR_DECAY_RATE=0.95
CRITIC_LR_DECAY_RATE=0.95
ACTOR_LR_DECAY_STEP=5000
CRITIC_LR_DECAY_STEP=5000
N_EPOCHS=100
EPSILON=1.
EPSILON_DECAY_RATE=0.95
EPSILON_DECAY_STEP=500000
POISSON_DECAY_RATE=0.95
POISSON_DECAY_STEP=500000
BUFFER_SIZE=1000000
SINKHORN_TAU=0.05
SINKHORN_ITERS=10
ID=$RANDOM_SEED
SAVE_STATS='False'
SAVE_MODEL='False'
DISABLE_TENSORBOARD='False'
EMBEDDING_DIM=128
RNN_DIM=128
USE_CUDA='True'
CUDA_DEVICE=1
BASE_DIR='/data/pemami/spg/'

python train_spg.py --task $COP --arch $ARCH --train_size $TRAIN_SIZE --val_size $VAL_SIZE --batch_size $BATCH_SIZE --n_nodes $N_NODES --n_features $N_FEATURES --hidden_dim $HIDDEN_DIM --random_seed $RANDOM_SEED --run_name $RUN_NAME --disable_tensorboard $DISABLE_TENSORBOARD --actor_lr $ACTOR_LR --critic_lr $CRITIC_LR --n_epochs $N_EPOCHS --poisson_decay_rate $POISSON_DECAY_RATE --poisson_decay_step $POISSON_DECAY_STEP --buffer_size $BUFFER_SIZE --epsilon $EPSILON --epsilon_decay_rate $EPSILON_DECAY_RATE --epsilon_decay_step $EPSILON_DECAY_STEP --_id $ID --sinkhorn_iters $SINKHORN_ITERS --sinkhorn_tau $SINKHORN_TAU --save_stats $SAVE_STATS --embedding_dim $EMBEDDING_DIM --rnn_dim $RNN_DIM --actor_lr_decay_rate $ACTOR_LR_DECAY_RATE --actor_lr_decay_step $ACTOR_LR_DECAY_STEP --critic_lr_decay_rate $CRITIC_LR_DECAY_RATE --critic_lr_decay_step $CRITIC_LR_DECAY_STEP --poisson_lambda $POISSON_LAMBDA --save_model $SAVE_MODEL --parallel_envs $PARALLEL_ENVS --alpha $ALPHA --use_cuda $USE_CUDA --cuda_device $CUDA_DEVICE --base_dir $BASE_DIR

