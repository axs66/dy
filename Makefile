# 插件：显示编译成功，显示的信息 
PACKAGE_IDENTIFIER = com.pxx917144686.x
PACKAGE_NAME = x
PACKAGE_VERSION = 0.0.1
PACKAGE_ARCHITECTURE = iphoneos-arm64 iphoneos-arm64e
PACKAGE_REVISION = 1
PACKAGE_SECTION = Tweaks
PACKAGE_DEPENDS = firmware (>= 14.0), mobilesubstrate
PACKAGE_DESCRIPTION = x

# 插件：编译时，引用的信息
define Package/x
  Package: $(PACKAGE_IDENTIFIER)
  Name: $(PACKAGE_NAME)
  Version: $(PACKAGE_VERSION)
  Architecture: $(PACKAGE_ARCHITECTURE)
  Author: pxx917144686
  Section: $(PACKAGE_SECTION)
  Depends: $(PACKAGE_DEPENDS)
  Description: $(PACKAGE_DESCRIPTION)
endef

# 输出目录为 packages 文件夹
export THEOS_PACKAGE_DIR = $(CURDIR)/packages

# TARGET
ARCHS = arm64 arm64e
TARGET = iphone:clang:latest:15.0

# Rootless 插件配置
export THEOS_PACKAGE_SCHEME = rootless
THEOS_PACKAGE_INSTALL_PREFIX = /var/jb

# 目标进程
INSTALL_TARGET_PROCESSES = Aweme

# 引入 Theos 的通用设置
include $(THEOS)/makefiles/common.mk

# 插件名称
TWEAK_NAME = x

# 源代码文件
x_FILES = x.x

# 框架
x_FRAMEWORKS = UIKit Foundation UserNotifications
x_CFLAGS = -fobjc-arc

# 编译规则
include $(THEOS_MAKE_PATH)/tweak.mk
