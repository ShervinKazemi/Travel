# Travel App

A beautiful cross-platform travel app built with Flutter.

## Screenshots

| Home Page | Detail Page |
|-----------|------------|
| ![Home](assets/screenshots/home.png) | ![Detail](assets/screenshots/detail.png) |

## Features
- View detailed information for each destination
- Modern UI with glassmorphism and hero animations
- Responsive design for mobile and desktop

## Getting Started

### Prerequisites
- [Flutter SDK](https://flutter.dev/docs/get-started/install)
- Dart 3.7.2 or higher

### Installation
1. Clone the repository:
   ```sh
   git clone https://github.com/ShervinKazemi/Travel.git
   ```
2. Navigate to the project directory:
   ```sh
   cd travel
   ```
3. Get dependencies:
   ```sh
   flutter pub get
   ```
4. Run the app:
   ```sh
   flutter run
   ```

## Project Structure
```
lib/
  app.dart                # Main app widget
  main.dart               # Entry point
  model/                  # Data models and repositories
  presentation/           # UI widgets and pages
  util/                   # Utilities and constants
assets/
  icon/                   # App icons
  image/                  # Destination images
```

## Assets
- All images are stored in `assets/image/`
- All icon are stored in `assets/icon/`

## Packages Used
- [provider](https://pub.dev/packages/provider)
- [gap](https://pub.dev/packages/gap)
- [google_fonts](https://pub.dev/packages/google_fonts)
- [flutter_native_splash](https://pub.dev/packages/flutter_native_splash)
- [cupertino_icons](https://pub.dev/packages/cupertino_icons)
