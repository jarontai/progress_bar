// Copyright (c) 2014, <Jaron Tai>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library progress_bar.test;

import 'package:unittest/unittest.dart';
import 'package:progress_bar/progress_bar.dart';

main() {
  group('ProgressBar test - ', () {
    ProgressBar bar;

    setUp(() {
      bar = new ProgressBar(':bar', {'total': 10});
    });

    test('Intialize Test', () {
      expect(bar.curr, 0);
      expect(bar.complete, false);
      expect(bar.options, isNotEmpty);
      expect(bar.options['total'], 10);
      expect(bar.options['width'], 10);
      expect(bar.options['clear'], false);
      expect(bar.options['complete'], '=');
      expect(bar.options['incomplete'], '-');
    });
  });

}
