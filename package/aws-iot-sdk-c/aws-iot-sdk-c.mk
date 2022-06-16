################################################################################
#
# aws-iot-sdk-c
#
################################################################################

AWS_IOT_SDK_C_VERSION = 202108.00
AWS_IOT_SDK_C_SITE = https://github.com/aws/aws-iot-device-sdk-embedded-C
AWS_IOT_SDK_C_SITE_METHOD = git
AWS_IOT_SDK_C_GIT_SUBMODULES = YES
AWS_IOT_SDK_C_LICENSE = MIT
AWS_IOT_SDK_C_LICENSE_FILES = LICENSE
AWS_IOT_SDK_C_INSTALL_STAGING = YES
AWS_IOT_SDK_C_INSTALL_TARGET = NO
#AWS_IOT_SDK_C_DEPENDENCIES = openssl
#AWS_IOT_SDK_C_CONF_OPTS = -DAWS_IOT_ENDPOINT=a1v9khdje2rkn9-ats.iot.us-east-1.amazonaws.com -DCLIENT_CERT_PATH=/home/yellow/work/aws-iot/e749408131b357ef9e051f31ffe661540480ff7269fe88f62bc86bc1e4020787-certificate.pem.crt -DCLIENT_PRIVATE_KEY_PATH=/home/yellow/work/aws-iot/e749408131b357ef9e051f31ffe661540480ff7269fe88f62bc86bc1e4020787-private.pem.key
AWS_IOT_SDK_C_CONF_OPTS = -DBUILD_DEMOS:BOOL=OFF -DBUILD_TESTS:BOOL=OFF -DCSDK_HEADER_INSTALL_PATH="/usr/include" -DCSDK_LIB_INSTALL_PATH="/usr/lib"
AWS_IOT_SDK_C_SUPPORTS_IN_SOURCE_BUILD = NO

$(eval $(cmake-package))
