# This script is maintained under GNU Public License 

# Go to home directory
cd ~

# Install using binary installer
sudo apt-get install pkg-config zip g++ zlib1g-dev unzip -y
wget https://github.com/bazelbuild/bazel/releases/download/0.8.0/bazel-0.8.0-installer-linux-x86_64.sh
chmod +x bazel-0.8.0-installer-linux-x86_64.sh
./bazel-0.8.0-installer-linux-x86_64.sh --user
rm bazel-0.8.0-installer-linux-x86_64.sh
echo 'export PATH="$PATH:$HOME/bin"' >> ~/.bashrc 
# Refresh 
source .bashrc

# Once installed, you can upgrade to a newer version of Bazel with:
sudo apt-get upgrade bazel -y

# Install Anaconda3
# You can change what anaconda version you want at 
# https://repo.continuum.io/archive/
wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh
bash Anaconda3-5.0.1-Linux-x86_64.sh -b -p ~/anaconda
rm Anaconda3-5.0.1-Linux-x86_64.sh
echo 'export PATH="~/anaconda/bin:$PATH"' >> ~/.bashrc 

# Install TensorFlow Python dependencies
sudo apt-get install python3-numpy python3-dev python3-pip python3-wheel -y
sudo apt-get install libcupti-dev -y

# Refresh 
source .bashrc
conda update conda --yes
conda update --all --yes

# Git the TensorFlow latest respository
git clone https://github.com/tensorflow/tensorflow /tmp/tensorgit
cd /tmp/tensorgit

# configure the build
./configure

# Build TensorFlow
bazel build --config=opt //tensorflow/tools/pip_package:build_pip_package


