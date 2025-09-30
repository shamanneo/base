# cmd args
export CUDA_VISIBLE_DEVICES=$1
EXPNAME=$2

seq_names=("apple" "teddy" "paper-windmill")
out_dir="./output/$EXPNAME"

for seq_name in "${seq_names[@]}"; do
    seq_dir="$out_dir/$seq_name"
    mkdir -p $seq_dir

    # train stage
    python run_training.py \
        --work-dir $seq_dir \
        data:iphone \
        --data.data-dir /workspace/data/dycheck_som/$seq_name

    # eval stage
    PYTHONPATH='.' python scripts/evaluate_iphone.py \
        --data_dir /workspace/data/dycheck_som/$seq_name \
        --result_dir $seq_dir \
        --seq_names $seq_name
    
    done