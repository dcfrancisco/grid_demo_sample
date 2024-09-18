# Flutter Grid Demo Sample

This repository contains a Flutter project that demonstrates the implementation of a grid view layout. The application displays a grid of numbered containers with different background colors.

## Features

- **Grid Layout**: Showcases a grid layout using the `GridView.count` widget.
- **Dynamic Content**: Generates a list of numbers and assigns different background colors to the grid items.
- **Custom Styling**: Each grid item is styled with rounded corners and centered text.

## Getting Started

### Prerequisites

- Flutter SDK: [Install Flutter](https://flutter.dev/docs/get-started/install)

### Installation

1. Clone the repository:
   ```sh
   git clone https://github.com/dcfrancisco/grid_demo_sample.git
   ```
2. Navigate to the project directory:
   ```sh
   cd grid_demo_sample
   ```
3. Fetch the dependencies:
   ```sh
   flutter pub get
   ```

### Running the Project

1. Ensure a device or simulator is running.
2. Run the app:
   ```sh
   flutter run
   ```

## Project Structure

- `main.dart`: The main entry point of the application. It contains the `MyApp` widget which sets up the grid view.

## Code Overview

The main file, `main.dart`, sets up a simple grid view using `GridView.count`. Each grid item is a container with a background color and a centered number.

### Example Code

```dart
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    List<int> data = List.generate(20, (index) => index + 1);
    List<Color> colors = [Colors.red, Colors.green, Colors.blue, Colors.yellow];

    List<Widget> generateItems() {
      return data.map((number) {
        return Container(
          width: 170,
          height: 170,
          decoration: BoxDecoration(
            color: colors[number % 4],
            borderRadius: BorderRadius.circular(30),
          ),
          child: Center(
            child: Text(
              '$number',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 90,
                fontWeight: FontWeight.w600,
                fontFamily: 'Rounded',
              ),
            ),
          ),
        );
      }).toList();
    }

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Grid View Sample'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            children: generateItems(),
          ),
        ),
      ),
    );
  }
}
```

## Contributing

Contributions are welcome! If you have any suggestions or improvements, please create an issue or submit a pull request.

1. Fork the repository.
2. Create a new branch:
   ```sh
   git checkout -b feature/your-feature-name
   ```
3. Make your changes and commit them:
   ```sh
   git commit -m 'Add some feature'
   ```
4. Push to the branch:
   ```sh
   git push origin feature/your-feature-name
   ```
5. Open a pull request.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for more details.