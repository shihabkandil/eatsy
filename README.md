# Eatsy Food Delivery Application - Flutter & Firebase

The Food Delivery Application is a Flutter-based mobile application that facilitates the ordering and delivery of food items. The app is built using Feature-Driven Architecture with separate BLoCs (Business Logic Components) for each feature. Firebase is used as the backend to handle authentication, database management, and storage.
![alt text](https://github.com/shihabkandil/eatsy/blob/develop/branding_main.png?raw=true)

## Features

- User authentication and profile management
- Browse restaurants and food items
- Place orders and track delivery status
- Rate and review restaurants

## Technologies Used

- Flutter: A cross-platform UI toolkit for building natively compiled applications for mobile, web, and desktop from a single codebase.
- Firebase: A platform developed by Google for creating mobile and web applications.
- Bloc Pattern: A state management pattern for Flutter applications, providing a clear separation of concerns and facilitating reactive programming.
- auto_route: A package for declarative routing in Flutter, enabling easy navigation between screens.
- Automated Testing: Unit testing, widget testing, and integration testing are included to ensure the app functions as intended across various scenarios.

## Getting Started

Follow these steps to get started with the Food Delivery Application:

1. **Clone the Repository**: Clone this repository to your local machine.

    ```bash
    git clone https://github.com/shihabkandil/eatsy.git
    ```

2. **Install Dependencies**: Navigate into the cloned directory and install the required dependencies.

    ```bash
    flutter pub get
    ```

   if localizations wasn't generated with above command consider using the one below.
   ```bash
   flutter gen-l10n
   ```

3. **Generate Code**: Run build_runner to generate necessary code, if needed.

    ```bash
    flutter pub run build_runner build
    ```

4. **Run Tests**: Run automated tests to ensure the app's functionality.

    ```bash
    flutter test
    ```

5. **Run the Application**: Run the application on an emulator or physical device.

    ```bash
    flutter run
    ```

6. **Explore and Enjoy!**: Start exploring and enjoying the Food Delivery Application.


