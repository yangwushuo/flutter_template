/*
 * @Author: 杨武硕
 * @Date: 2023-10-13 11:14:36
 * @LastEditors: 杨武硕
 * @LastEditTime: 2023-10-13 12:01:44
 * @FilePath: /template/lib/common/services/audio.dart
 * @Description: 音频播放服务
 * @Hint: 
 * 
 * Copyright (c) 2023 by 版权所有名, All Rights Reserved. 
 */

import 'package:just_audio/just_audio.dart';

/// @author: 杨武硕
/// @version: 1.0.0+1
/// @description: 音频播放服务
/// @hint:
class AudioService {
  static final AudioService _instance = AudioService._internal();
  factory AudioService() => _instance;
  AudioPlayer? player;

  AudioService._internal() {
    print("初始化音频");
    player = AudioPlayer();
  }

  Future<void> play() async {
    await player?.setAsset('assets/audios/dida.mp3');
    player?.play();
  }
}
