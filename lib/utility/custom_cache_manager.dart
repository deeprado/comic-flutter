import 'dart:async';

import 'package:flutter_cache_manager/flutter_cache_manager.dart';

import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

class ComicCacheManager extends BaseCacheManager {
  static const key = "libCachedImageData";

  static ComicCacheManager _instance;

  factory ComicCacheManager() {
    if (_instance == null) {
      _instance = new ComicCacheManager._();
    }
    return _instance;
  }

  ComicCacheManager._() : super(key);

  Future<String> getFilePath() async {
    var directory = await getTemporaryDirectory();
    return p.join(directory.path, key);
  }
}
