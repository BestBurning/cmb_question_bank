import 'dart:io';

import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';


class Global {

  static PackageInfo packageInfo;
  //初始化全局信息，会在APP启动时执行
  static Future init() async {
    print("===== init start ======");
    packageInfo = await PackageInfo.fromPlatform();

    print("""
    packageInfo -> 
          App name > ${packageInfo.appName}
          Package name > ${packageInfo.packageName}
          App version > ${packageInfo.version}
          Build number > ${packageInfo.buildNumber}
          """);
    print("===== init end ======");
  }

}
