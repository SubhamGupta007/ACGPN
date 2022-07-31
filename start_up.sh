mkdir Data_preprocessing/test_color
mkdir Data_preprocessing/test_colormask
mkdir Data_preprocessing/test_edge
mkdir Data_preprocessing/test_img
mkdir Data_preprocessing/test_label
mkdir Data_preprocessing/test_mask
mkdir Data_preprocessing/test_pose
mkdir inputs
mkdir inputs/img
mkdir inputs/cloth


cd pose
gdown --id 1hOHMFHEjhoJuLEQY0Ndurn5hfiA9mwko
cd..


git clone https://github.com/levindabhi/Self-Correction-Human-Parsing-for-ACGPN.git
git clone https://github.com/levindabhi/U-2-Net.git


# shellcheck disable=SC2164
cd U-2-Net
mkdir saved_models
mkdir saved_models/u2net
mkdir saved_models/u2netp
gdown --id 1rbSTGKAE-MTxBYHd-51l2hMOQPT_7EPy -O saved_models/u2netp/u2netp.pth
gdown --id 1ao1ovG1Qtx4b7EoskHXmi2E9rp5CHLcZ -O saved_models/u2net/u2net.pth


mkdir checkpoints
gdown https://drive.google.com/uc?id=1UWT6esQIU_d4tUm8cjxDKMhB8joQbrFx -O checkpoints/ACGPN_checkpoints.zip
cd checkpoints
unzip ACGPN_checkpoints
cd ..

