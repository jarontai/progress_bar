// Copyright (c) 2014, <Jaron Tai>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library progress_bar.example;

import 'package:progress_bar/progress_bar.dart';
import 'dart:async';

main() {
  var bar = new ProgressBar(' [:bar] :percent :etas ', total: 10);
  var timer = new Timer.periodic(new Duration(milliseconds: 500), (Timer timer) {
    bar.tick();
    if (bar.complete) {
      timer.cancel();
    }
  });
}
