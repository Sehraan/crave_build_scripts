# initialize the ROM repo
repo init --depth=1 --no-repo-verify --git-lfs -u https://github.com/ProjectInfinity-X/manifest -b 16 -g default,-mips,-darwin,-notdefault

# clone my manifest
rm -rf .repo/local_manifests
git clone https://github.com/Sehraan/local_manifests -b infi .repo/local_manifests

# sync
bash /opt/crave/resync.sh

# prep
source build/envsetup.sh
lunch infinity_spes-userdebug
m bacon
