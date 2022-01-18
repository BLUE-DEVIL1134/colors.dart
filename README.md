# colorx.dart

Please open Issues to provide feedback, and check the `dev` branch for the latest bleeding-edge updates.

- [Installation](#installation)
- [Usage](#usage)
- [All Available Methods](#all-available-methods)
- [Important](#important)
- [Donate](#donate)

## Installation

```powershell
dart pub get colorx
```

OR

```powershell
flutter pub get colorx
```

<details>
<summary><h2>All Available Methods</h2></summary>

### text colors

- black
- red
- green
- yellow
- blue
- magenta
- cyan
- white
- gray
- grey

### bright text colors

- brightRed
- brightGreen
- brightYellow
- brightBlue
- brightMagenta
- brightCyan
- brightWhite

### background colors

- bgBlack
- bgRed
- bgGreen
- bgYellow
- bgBlue
- bgMagenta
- bgCyan
- bgWhite
- bgGray
- bgGrey

### bright background colors

- bgBrightRed
- bgBrightGreen
- bgBrightYellow
- bgBrightBlue
- bgBrightMagenta
- bgBrightCyan
- bgBrightWhite

### styles

- reset
- bold
- dim
- italic
- underline
- inverse
- hidden
- strikethrough

### extras

- rainbow()
- zebra()
- indianFlag()

</details>

## Usage

```dart
import 'package:colorx/colorx.dart';

void main(List<String> args) {
    print(Colors('Red, Bold and with Blue background').red.bold.bgBlue);
    print('Red, Bold and with Blue background'.red.bold.bgBlue);
    print('This is a raindow text'.rainbow());
    print('This is the INDIAN Flag'.indianFlag());
}
```

## Important

This is a dart implementation of [colors.js](https://github.com/Marak/colors.js). After recent events about [Marka](https://github.com/Marak/), I would like you all to donate to me if you want me to keep maintaing this library. Open Source is a place for all and if you want to keep using libraries like this for free, seriously consider donating to open source developer.

## Donate

- **UPI** - `akashpattnaik.github@ybl`
- **Bitcoin** - `1CtRtERW75oBNk6qmXSfYgQVqxt6NFwvLM` (Blockchain - `Bitcoin`)
- **Bitcoin** - `0x67243756d4144d6d3e132baa0660e0bc0cddf59b` (Blockchain - `BEP.20`)
- **Ethereum** - `0x67243756d4144d6d3e132baa0660e0bc0cddf59b` (Blockchain - `Ethereum`)
- **TetherUS** - `0x67243756d4144d6d3e132baa0660e0bc0cddf59b` (Blockchain - `BEP.20`)
