# Go to home directory
cd ~

# You can change what anaconda version you want at 
# https://repo.continuum.io/archive/
wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh -b -p ~/anaconda
rm Anaconda3-5.0.1-Linux-x86_64.sh
echo 'export PATH="~/anaconda/bin:$PATH"' >> ~/.bashrc 

# Refresh 
source .bashrc
conda update conda
conda update --all

# Git the TensorFlow latest respository
git clone https://github.com/tensorflow/tensorflow /tmp/tensorgit
cd /tmp/tensorgit/tensorflow
