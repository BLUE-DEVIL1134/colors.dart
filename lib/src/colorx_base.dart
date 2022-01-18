final Map<String, List<int>> _colorCodes = {
  'reset': [0, 0],

  'bold': [1, 22],
  'dim': [2, 22],
  'italic': [3, 23],
  'underline': [4, 24],
  'inverse': [7, 27],
  'hidden': [8, 28],
  'strikethrough': [9, 29],

  'black': [30, 39],
  'red': [31, 39],
  'green': [32, 39],
  'yellow': [33, 39],
  'blue': [34, 39],
  'magenta': [35, 39],
  'cyan': [36, 39],
  'white': [37, 39],
  'gray': [90, 39],
  'grey': [90, 39],

  'brightRed': [91, 39],
  'brightGreen': [92, 39],
  'brightYellow': [93, 39],
  'brightBlue': [94, 39],
  'brightMagenta': [95, 39],
  'brightCyan': [96, 39],
  'brightWhite': [97, 39],

  'bgBlack': [40, 49],
  'bgRed': [41, 49],
  'bgGreen': [42, 49],
  'bgYellow': [43, 49],
  'bgBlue': [44, 49],
  'bgMagenta': [45, 49],
  'bgCyan': [46, 49],
  'bgWhite': [47, 49],
  'bgGray': [100, 49],
  'bgGrey': [100, 49],

  'bgBrightRed': [101, 49],
  'bgBrightGreen': [102, 49],
  'bgBrightYellow': [103, 49],
  'bgBrightBlue': [104, 49],
  'bgBrightMagenta': [105, 49],
  'bgBrightCyan': [106, 49],
  'bgBrightWhite': [107, 49],
};

String _applyColor(String text, String color) {
  final List<int>? codes = _colorCodes[color];
  return '\u001b[${codes![0]}m$text\u001b[${codes[1]}m';
}

extension Colors on String {
  String get reset => _applyColor(this, 'reset');

  String get bold => _applyColor(this, 'bold');
  String get dim => _applyColor(this, 'dim');
  String get italic => _applyColor(this, 'italic');
  String get underline => _applyColor(this, 'underline');
  String get inverse => _applyColor(this, 'inverse');
  String get hidden => _applyColor(this, 'hidden');
  String get strikethrough => _applyColor(this, 'strikethrough');

  String get black => _applyColor(this, 'black');
  String get red => _applyColor(this, 'red');
  String get green => _applyColor(this, 'green');
  String get yellow => _applyColor(this, 'yellow');
  String get blue => _applyColor(this, 'blue');
  String get magenta => _applyColor(this, 'magenta');
  String get cyan => _applyColor(this, 'cyan');
  String get white => _applyColor(this, 'white');
  String get gray => _applyColor(this, 'gray');
  String get grey => _applyColor(this, 'grey');

  String get brightRed => _applyColor(this, 'brightRed');
  String get brightGreen => _applyColor(this, 'brightGreen');
  String get brightYellow => _applyColor(this, 'brightYellow');
  String get brightBlue => _applyColor(this, 'brightBlue');
  String get brightMagenta => _applyColor(this, 'brightMagenta');
  String get brightCyan => _applyColor(this, 'brightCyan');
  String get brightWhite => _applyColor(this, 'brightWhite');

  String get bgBlack => _applyColor(this, 'bgBlack');
  String get bgRed => _applyColor(this, 'bgRed');
  String get bgGreen => _applyColor(this, 'bgGreen');
  String get bgYellow => _applyColor(this, 'bgYellow');
  String get bgBlue => _applyColor(this, 'bgBlue');
  String get bgMagenta => _applyColor(this, 'bgMagenta');
  String get bgCyan => _applyColor(this, 'bgCyan');
  String get bgWhite => _applyColor(this, 'bgWhite');
  String get bgGray => _applyColor(this, 'bgGray');
  String get bgGrey => _applyColor(this, 'bgGrey');

  String get bgBrightRed => _applyColor(this, 'bgBrightRed');
  String get bgBrightGreen => _applyColor(this, 'bgBrightGreen');
  String get bgBrightYellow => _applyColor(this, 'bgBrightYellow');
  String get bgBrightBlue => _applyColor(this, 'bgBrightBlue');
  String get bgBrightMagenta => _applyColor(this, 'bgBrightMagenta');
  String get bgBrightCyan => _applyColor(this, 'bgBrightCyan');
  String get bgBrightWhite => _applyColor(this, 'bgBrightWhite');

  String rainbow() {
    final List<String> _colors = [
      'red', // R
      // orange (O, doesn't exist)
      'yellow', // Y
      'green', // G
      'cyan', // B
      'blue', // I
      'magenta', // V
    ];
    final List<String> _rainbow = [];
    for (int i = 0; i < length; i++) {
      _rainbow.add(_applyColor(this[i], _colors[i % _colors.length]));
    }
    return _rainbow.join();
  }

  String zebra() {
    final List<String> _zebra = [];
    for (int i = 0; i < length; i++) {
      _zebra.add(i % 2 == 0 ? this[i] : this[i].inverse);
    }
    return _zebra.join();
  }

  String indianFlag() {
    final List<String> _colors = [
      'red', // R
      'white', // W
      'green', // G
    ];
    final List<String> _indianFlag = [];
    for (int i = 0; i < length; i++) {
      if (this[i] == ' ') {
        _indianFlag.add(' ');
      } else {
        _indianFlag.add(_applyColor(this[i], _colors[i % _colors.length]));
      }
    }
    return _indianFlag.join();
  }
}