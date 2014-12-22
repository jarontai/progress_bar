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

### Options

These are keys in the options map you can pass to the progress bar along with
`total` as seen in the example above.

- `total` total number of ticks to complete
- `width` the displayed width of the progress bar defaulting to total
- `complete` completion character defaulting to "="
- `incomplete` incomplete character defaulting to "-"
- `clear` option to clear the bar on completion defaulting to false

### Tokens

These are tokens you can use in the format of your progress bar.

- `:bar` the progress bar itself
- `:current` current tick number
- `:total` total ticks
- `:elapsed` time elapsed in seconds
- `:percent` completion percentage
- `:eta` estimated completion time in seconds

## Features and bugs

Please file feature requests and bugs at the [issue tracker][tracker].

[tracker]: https://github.com/jarontai/progress_bar/issues
[nodeprogress]: https://github.com/tj/node-progress
[darthome]: https://www.dartlang.org/