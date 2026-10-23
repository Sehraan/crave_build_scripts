# initialize the ROM repo
repo init --depth=1 --no-repo-verify --git-lfs -u https://github.com/ProjectInfinity-X/manifest -b 17 -g default,-mips,-darwin,-notdefault

# clone my manifest
rm -rf .repo/local_manifests
git clone https://github.com/Sehraan/local_manifests -b 17-gapps .repo/local_manifests

# sync
bash /opt/crave/resync.sh

# signing the build
croot && git clone https://github.com/ProjectInfinity-X/vendor_infinity-priv_keys-template vendor/infinity-priv/keys
cd vendor/infinity-priv/keys
./keys.sh

# prep
source build/envsetup.sh
lunch infinity_spes-userdebug
m bacon
