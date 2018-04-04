#!/bin/bash
MODEL='spg'
N_NODES=20
ACTOR_WORKERS=2
POISSON_LAMBDA=7
COP="sort_0-19"
ARCH='rnn'
RANDOM_SEED=$1
RUN_NUM=$2
RUN_NAME="SPG-$COP-$RANDOM_SEED$RUN_NUM"
ALPHA=1.0
TRAIN_SIZE=500000
TEST_SIZE=1000
USE_BATCHNORM='True'
PARALLEL_ENVS=128
BATCH_SIZE=128
N_FEATURES=1
HIDDEN_DIM=300
ACTOR_LR=1e-5 # 3e-5
CRITIC_LR=2e-4 # 7e-4
ACTOR_LR_DECAY_RATE=0.95
CRITIC_LR_DECAY_RATE=0.95
ACTOR_LR_DECAY_STEP=5000
CRITIC_LR_DECAY_STEP=5000
N_EPOCHS=15
EPSILON=1.
EPSILON_DECAY_RATE=0.95
EPSILON_DECAY_STEP=$TRAIN_SIZE
POISSON_DECAY_RATE=0.95
POISSON_DECAY_STEP=$TRAIN_SIZE
BUFFER_SIZE=1000000
SINKHORN_TAU=0.05
SINKHORN_ITERS=10
SAVE_STATS='False'
ID=$RANDOM_SEED
DISABLE_TENSORBOARD='False'
EMBEDDING_DIM=128
EPOCH_START=0
USE_CUDA='True'
CUDA_DEVICE=0
#ACTOR_LOAD_PATH='results/models/5a7328085379c0568a8f253f/actor-epoch-667.pt'
#CRITIC_LOAD_PATH='results/models/5a7328085379c0568a8f253f/critic-epoch-667.pt'
BASE_DIR='.'
DATA='icml2018'

python train_spg.py --task $COP --arch $ARCH --train_size $TRAIN_SIZE --test_size $TEST_SIZE --batch_size $BATCH_SIZE --n_nodes $N_NODES --n_features $N_FEATURES --hidden_dim $HIDDEN_DIM --random_seed $RANDOM_SEED --run_name $RUN_NAME --disable_tensorboard $DISABLE_TENSORBOARD --actor_lr $ACTOR_LR --critic_lr $CRITIC_LR --n_epochs $N_EPOCHS --poisson_decay_rate $POISSON_DECAY_RATE --poisson_decay_step $POISSON_DECAY_STEP --buffer_size $BUFFER_SIZE --epsilon $EPSILON --epsilon_decay_rate $EPSILON_DECAY_RATE --epsilon_decay_step $EPSILON_DECAY_STEP --_id $ID --sinkhorn_iters $SINKHORN_ITERS --sinkhorn_tau $SINKHORN_TAU  --save_stats $SAVE_STATS --embedding_dim $EMBEDDING_DIM  --actor_lr_decay_rate $ACTOR_LR_DECAY_RATE --actor_lr_decay_step $ACTOR_LR_DECAY_STEP --critic_lr_decay_rate $CRITIC_LR_DECAY_RATE --critic_lr_decay_step $CRITIC_LR_DECAY_STEP --epoch_start $EPOCH_START --poisson_lambda $POISSON_LAMBDA --use_cuda $USE_CUDA --parallel_envs $PARALLEL_ENVS --cuda_device $CUDA_DEVICE --actor_workers $ACTOR_WORKERS --data $DATA --base_dir $BASE_DIR

