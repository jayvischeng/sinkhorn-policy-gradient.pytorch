#!/bin/bash
N_NODES=15
N_FEATURES=2
COP="mwm2D_$N_NODES"
ACTOR_WORKERS=4
ARCH='matching'
RANDOM_SEED=$1
RUN_NUM=$2
RUN_NAME="$COP-$N_NODES-$RANDOM_SEED$RUN_NUM"
TRAIN_SIZE=500000
TEST_SIZE=1000
PARALLEL_ENVS=128
BATCH_SIZE=128
ACTOR_LR=1e-5 
CRITIC_LR=2e-4 
ACTOR_LR_DECAY_RATE=0.95
CRITIC_LR_DECAY_RATE=0.95
ACTOR_LR_DECAY_STEP=5000
CRITIC_LR_DECAY_STEP=5000
N_EPOCHS=5
K_EXCHANGE=2
EPSILON=1.0
EPSILON_DECAY_RATE=0.95
EPSILON_DECAY_STEP=$TRAIN_SIZE
BUFFER_SIZE=1000000
SINKHORN_TAU=0.075
SINKHORN_ITERS=5
TAU_DECAU=0.8
ANNEALING_ITERS=4
EMBEDDING_DIM=128
RNN_DIM=128
MAX_N_NODES=15
USE_CUDA='True'
CUDA_DEVICE=0
REPLAY_BUFFER_GPU='False'
EPOCH_START=0
SAVE_STATS='False'
SAVE_MODEL='False'
BASE_DIR='/media/pemami/DATA/sinkhorn-pg'
MAKE_ONLY=3
ID=$RANDOM_SEED
DISABLE_TENSORBOARD='False'
#ACTOR_LOAD_PATH='results/models/mwm2D/spg/matching/20395/actor-epoch-8.pt'
#CRITIC_LOAD_PATH='results/models/mwm2D/spg/matching/20395/critic-epoch-8.pt'

python train_spg.py --task $COP --arch $ARCH --train_size $TRAIN_SIZE --test_size $TEST_SIZE --batch_size $BATCH_SIZE --n_nodes $N_NODES --n_features $N_FEATURES --random_seed $RANDOM_SEED --run_name $RUN_NAME --disable_tensorboard $DISABLE_TENSORBOARD --actor_lr $ACTOR_LR --critic_lr $CRITIC_LR --n_epochs $N_EPOCHS --buffer_size $BUFFER_SIZE --epsilon $EPSILON --epsilon_decay_rate $EPSILON_DECAY_RATE --epsilon_decay_step $EPSILON_DECAY_STEP --_id $ID --sinkhorn_iters $SINKHORN_ITERS --sinkhorn_tau $SINKHORN_TAU --save_stats $SAVE_STATS --embedding_dim $EMBEDDING_DIM --rnn_dim $RNN_DIM --actor_lr_decay_rate $ACTOR_LR_DECAY_RATE --actor_lr_decay_step $ACTOR_LR_DECAY_STEP --critic_lr_decay_rate $CRITIC_LR_DECAY_RATE --critic_lr_decay_step $CRITIC_LR_DECAY_STEP --k_exchange $K_EXCHANGE --use_cuda $USE_CUDA --save_model $SAVE_MODEL --parallel_envs $PARALLEL_ENVS  --cuda_device $CUDA_DEVICE --base_dir $BASE_DIR --actor_workers $ACTOR_WORKERS --replay_buffer_gpu $REPLAY_BUFFER_GPU --make_only $MAKE_ONLY --max_n_nodes $MAX_N_NODES
