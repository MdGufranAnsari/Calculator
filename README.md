# Calculator App

A beautiful and fully-functional calculator application built with **Flutter**. This app provides a smooth user experience with an intuitive interface for performing mathematical calculations.

## Features

✨ **Core Functionality**
- Basic arithmetic operations: Addition (+), Subtraction (-), Multiplication (*), Division (/)
- Percentage calculations (%)
- Decimal point support
- Clear all (AC) functionality
- Delete last input (DEL) button
- Answer (ANS) button to recall the last result

🎨 **User Interface**
- Clean and intuitive Material Design interface
- Color-coded buttons for better usability:
  - **Green**: AC (Clear All) button
  - **Red**: DEL (Delete) button
  - **Purple**: Operator buttons (+, -, *, /, %)
  - **White**: Number buttons (0-9) and decimal point
- Responsive display showing both current input and calculated result
- Supports multiple digits and long expressions

⚡ **Performance**
- Real-time calculation using `math_expressions` package
- Smooth gesture handling
- Optimized for all screen sizes

## Installation

### Prerequisites
- Flutter SDK (version 3.8.1 or higher)
- Dart SDK
- Android Studio / Xcode (for running on emulator/device)

### Setup Instructions

1. **Clone the repository**
   ```bash
   git clone https://github.com/MdGufranAnsari/Calculator.git
   cd calculator
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

## Project Structure

```
calculator/
├── lib/
│   ├── main.dart           # Application entry point
│   ├── home_page.dart      # Main calculator UI and logic
│   └── buttons.dart        # Reusable button widget
├── pubspec.yaml            # Project dependencies and configuration
├── analysis_options.yaml   # Dart analysis configuration
└── README.md               # This file
```

## Dependencies

- **flutter**: Core Flutter framework
- **cupertino_icons**: iOS style icons
- **math_expressions** (^2.4.0): For evaluating mathematical expressions

## How to Use

1. **Enter numbers**: Tap number buttons to input digits
2. **Choose operation**: Select an operator (+, -, *, /, %)
3. **Continue entering**: Input more numbers as needed
4. **Get result**: Press the "=" button to calculate
5. **Clear**: Use "AC" to clear all inputs, or "DEL" to remove the last digit
6. **View history**: Use "ANS" to recall the previous calculation result

## Example Calculations

- Simple: `5 + 3 = 8`
- Complex: `25 + 369 = 394`
- Percentages: `100 * 50% = 50`
- Decimals: `7.5 + 2.5 = 10`

## Technical Details

### Calculator Logic
- Uses the `math_expressions` package to safely parse and evaluate mathematical expressions
- Supports standard mathematical operator precedence
- Handles decimal calculations with precision

### Architecture
- **StatefulWidget**: HomePage manages the calculator state
- **State Management**: Uses `setState()` for updating the UI
- **Responsive Design**: Uses Expanded and FittedBox widgets for responsive layouts

## Supported Platforms

- ✅ Android
- ✅ iOS
- ✅ Web
- ✅ Windows
- ✅ macOS
- ✅ Linux

## Future Enhancements

- [ ] Scientific calculator functions (sin, cos, tan, log, etc.)
- [ ] Calculation history
- [ ] Dark mode support
- [ ] Keyboard support for desktop
- [ ] Sound effects for button presses
- [ ] App themes customization

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## License

This project is open source and available under the [MIT License](LICENSE).

## Author

**Md Gufran Ansari**

- GitHub: [@MdGufranAnsari](https://github.com/MdGufranAnsari)

## Support

If you have any questions or encounter any issues, please open an [Issue](https://github.com/MdGufranAnsari/Calculator/issues) on GitHub.

---

Made with ❤️ using Flutter
