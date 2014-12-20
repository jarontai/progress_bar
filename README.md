# progress_bar

Progress bar for dart command-line apps. A port of [node-progress][nodeprogress] to [Dart][darthome].

## Usage

Basic usage:

    var bar = new ProgressBar(' [:bar] :percent :etas ', {'total': 10});
    var timer = new Timer.periodic(new Duration(seconds: 1), (Timer timer) {
      bar.tick();
      if (bar.complete) {
        timer.cancel();
      }
    });

![basic](https://raw.github.com/jarontai/progress_bar/master/example/progress_bar_basic.gif)

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/jarontai/progress_bar/issues
[nodeprogress]: https://github.com/tj/node-progress
[darthome]: https://www.dartlang.org/