# Image baseline Quarter size image resnext50_32x4d Train -> 0.301354
#python train.py --is_train --use_amp --device 1 --epochs 30 --train_batch_size 32 --wandb --model_name_or_path resnext50_32x4d --output_path ./saved_model/image_resnext50_32x4d
#python inference.py --device 1 --output_path_list ./saved_model/image_resnext50_32x4d --predict_path ./predict/image_resnext50_32x4d

# Image baseline full size image resnext50_32x4d Train -> 0.558937
#python train.py --is_train --use_amp --device 1 --epochs 30 --train_batch_size 32 --wandb --model_name_or_path resnext50_32x4d --output_path ./saved_model/image_full_size_resnext50_32x4d
#python inference.py --device 1 --output_path_list ./saved_model/image_full_size_resnext50_32x4d --predict_path ./predict/image_full_size_resnext50_32x4d

# Image baseline full size image resnext50_32x4d Train Validation Quarter size -> 0.714959
#python train.py --is_train --use_amp --device 1 --epochs 30 --train_batch_size 32 --wandb --model_name_or_path resnext50_32x4d --output_path ./saved_model/image_full_size_valid_quarter_resnext50_32x4d
#python inference.py --device 1 --output_path_list ./saved_model/image_full_size_valid_quarter_resnext50_32x4d --predict_path ./predict/image_full_size_valid_quarter_resnext50_32x4d

# Image baseline Train full size & Quarter size image resnext50_32x4d Train Validation Quarter size -> 0.748545
#python train.py --is_train --use_amp --device 1 --epochs 30 --train_batch_size 32 --wandb --model_name_or_path resnext50_32x4d --output_path ./saved_model/image_train_fq_valid_q_resnext50_32x4d --scheduler get_cosine_schedule_with_warmup --loss WeightedCrossEntropy
#python inference.py --device 1 --output_path_list ./saved_model/image_train_fq_valid_q_resnext50_32x4d --predict_path ./predict/image_train_fq_valid_q_resnext50_32x4d

# Image baseline Train full size & Quarter size image vit_base_patch16_384 Train Validation Quarter size -> 0.633569, 0.589128
#python train.py --is_train --use_amp --device 1 --epochs 30 --train_batch_size 8 --accumulation_steps 4 --wandb --model_name_or_path vit_base_patch16_384 --output_path ./saved_model/image_train_fq_valid_q_vit_base_patch16_384 --scheduler get_cosine_schedule_with_warmup --loss WeightedCrossEntropy
#python inference.py --device 1 --output_path_list ./saved_model/image_train_fq_valid_q_vit_base_patch16_384 --predict_path ./predict/image_train_fq_valid_q_vit_base_patch16_384
#python inference.py --device 1 --output_path_list ./saved_model/image_train_fq_valid_q_vit_base_patch16_384 --predict_path ./predict/image_train_fq_valid_q_vit_base_patch16_384 --tta

# Image baseline Train full size & Quarter size image vit_base_patch16_384 Train Validation Quarter size -> 0.724353, 0.696572
#python train.py --is_train --use_amp --device 1 --epochs 30 --train_batch_size 8 --accumulation_steps 4 --wandb --model_name_or_path vit_base_patch18_384 --output_path ./saved_model/image_train_fq_valid_q_lr5e-5_ReduceLR_vit_base_patch16_384 --loss WeightedCrossEntropy --lr 5e-5
#python inference.py --device 1 --output_path_list ./saved_model/image_train_fq_valid_q_lr5e-5_ReduceLR_vit_base_patch16_384 --predict_path ./predict/image_train_fq_valid_q_lr5e-5_ReduceLR_vit_base_patch16_384
#python inference.py --device 1 --output_path_list ./saved_model/image_train_fq_valid_q_lr5e-5_ReduceLR_vit_base_patch16_384 --predict_path ./predict/image_train_fq_valid_q_lr5e-5_ReduceLR_vit_base_patch16_384 --tta

# Image baseline Train full size & Quarter size image vit_large_patch16_384 Train Validation Quarter size
#python train.py --is_train --use_amp --device 1 --epochs 30 --train_batch_size 2 --accumulation_steps 16 --wandb --lr 8e-5 --model_name_or_path vit_large_patch16_384 --output_path ./saved_model/image_train_fq_valid_q_vit_large_patch16_384 --loss WeightedCrossEntropy
#python inference.py --device 1 --output_path_list ./saved_model/image_train_fq_valid_q_vit_large_patch16_384 --predict_path ./predict/image_train_fq_valid_q_vit_large_patch16_384

# Image baseline Train full size & Quarter size image Resnet50 Train Validation Quarter size -> 0.672170
#python train.py --is_train --use_amp --device 1 --epochs 30 --train_batch_size 32 --wandb --lr 1e-3 --model_name_or_path resnet50 --output_path ./saved_model/image_train_fq_valid_q_resnet50 --loss WeightedCrossEntropy
#python inference.py --device 1 --output_path_list ./saved_model/image_train_fq_valid_q_resnet50 --predict_path ./predict/image_train_fq_valid_q_resnet50 --tta

# Image baseline Train full size & Quarter size image resnext50_32x4d Train Validation Quarter size cutmix 0.5 beta 1 ->
python train.py --is_train --use_amp --device 1 --epochs 30 --train_batch_size 32 --wandb --model_name_or_path resnext50_32x4d --output_path ./saved_model/image_train_fq_valid_q_cutmix0.5_resnext50_32x4d --loss WeightedCrossEntropy --beta 1 --cutmix_prob 0.5
python inference.py --device 1 --output_path_list ./saved_model/image_train_fq_valid_q_cutmix0.5_resnext50_32x4d --predict_path ./predict/image_train_fq_valid_q_cutmix0.5_resnext50_32x4d
