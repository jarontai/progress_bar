// Copyright (c) 2014, <Jaron Tai>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library progress_bar.test;

import 'package:test/test.dart';
import 'package:progress_bar/progress_bar.dart';

main() {
  group('ProgressBar test - ', () {
    ProgressBar bar;

    setUp(() {
      bar = new ProgressBar(':bar', total: 10);
    });

    test('Intialize Test', () {
      expect(bar.curr, 0);
      expect(bar.complete, false);
      expect(bar.total, 10);
      expect(bar.width, 10);
      expect(bar.clear, false);
      expect(bar.completeChar, '=');
      expect(bar.incompleteChar, '-');
    });
  });

}
