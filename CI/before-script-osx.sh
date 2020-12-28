# Make sure ccache is found
export PATH=/usr/local/opt/ccache/libexec:$PATH
mkdir build
cd build
cmake \
-DENABLE_SCRIPTING=OFF \
-DDepsPath=~/obsdeps \
-DCMAKE_BUILD_TYPE=RELEASE \
-DCMAKE_INSTALL_PREFIX=/opt/ebs \
-DQTDIR=/usr/local/Cellar/qt/5.14.1 \
-DCMAKE_OSX_DEPLOYMENT_TARGET=10.12 \
-DOPENSSL_ROOT_DIR=/usr/local/opt/openssl@1.1 \
-Dlibwebrtc_DIR=/Volumes/git/Evercast/libwebrtc-87/cmake \
-DBUILD_BROWSER=false \
-DOBS_WEBRTC_VENDOR_NAME=Evercast \
-DOBS_VERSION_OVERRIDE=$EBS_VERSION \
-DOBS_BASE_VERSION=23.2.0 \
-DWEBRTC_VERSION=87.0.0 \
-DENABLE_VLC=ON \
-DCURL_LIBRARY=/usr/local/opt/curl/lib \
-DCURL_INCLUDE_DIR=/usr/local/opt/curl/include \
-DZLIB_LIBRARY=/usr/local/opt/zlib/lib \
-DZLIB_INCLUDE_DIR=/usr/local/opt/zlib/include \
..
