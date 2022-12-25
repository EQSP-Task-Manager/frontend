import 'package:done/application/application.dart';
import 'package:fake_firebase_remote_config/fake_firebase_remote_config.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@Singleton(as: RemoteConfigService, env: [Environment.test])
class FakeConfigService implements RemoteConfigService {
  @override
  Color get importanceColor => Colors.red;

  final config = FakeRemoteConfig();

  @override
  Future initialize() async {
    await config.setDefaults({
      'importanceColor': '0xFFFF3B30',
    });

    config.loadMockData({
      'importanceColor': '0xFFFF3B30',
    });
    await config.fetchAndActivate();
  }

  @override
  FirebaseRemoteConfig get remoteConfig => config;
}
