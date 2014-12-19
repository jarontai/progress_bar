// Copyright (c) 2014, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library progress_bar.test;

import 'package:unittest/unittest.dart';
import 'package:progress_bar/progress_bar.dart';

main() {
  group('A group of tests', () {
    Awesome awesome;

    setUp(() {
      awesome = new Awesome();
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });
}
