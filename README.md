# **Done** app ✔️

[Frontend](https://github.com/EQSP-Task-Manager/frontend): Android app implemented with Dart + Flutter

[Backend](https://github.com/EQSP-Task-Manager/backend): REST API implemented with python + aiohttp

## Team 👥

  - Maxim Pryanikov (backend)
  - Rizvan Iskaliev (backend)
  - Parth Kalkar (frontend)
  - Emil Khabibullin (frontend)
  
 ## About **Done** 📌
 
  - **Done** can help you manage your to-do's
    1. Create to-do's: add tags, colors, deadlines, and descriptions
    2. Edit to-do's
    3. Delete to-do's
    4. Last, but not least, finish your to-do's
  - Syncronize your to-do's among your devices
 
## How to run 🛠

 * Install [flutter](https://docs.flutter.dev/get-started/install)
 * Clone the repo
 * In the root of the repo run `flutter pub get`
 * Run `flutter run --flavor prod --target lib/main_prod.dart --release`
 * Enjoy!
 
## Screenshots 🖥

<p float="left">
<img width="230" src="https://user-images.githubusercontent.com/69918609/209458340-8906e9c8-e912-45f8-bc76-112061b89e16.jpg"/>
<img width="230" src="https://user-images.githubusercontent.com/69918609/209458353-7fc6974e-f19a-4f5d-bdb3-df4b36732a0a.jpg"/>
<img width="230" src="https://user-images.githubusercontent.com/69918609/209458358-39101562-e827-4f78-9ddc-096516135818.jpg"/>
</p>

<p float="left">
<img width="230" src="https://user-images.githubusercontent.com/69918609/209458364-a845e93d-d57a-40fe-a508-05bd3d8d1a2a.jpg"/>
<img width="230" src="https://user-images.githubusercontent.com/69918609/209458370-7f33723c-2040-43bd-a421-bc3d7eae4c84.jpg"/>
<img width="230" src="https://user-images.githubusercontent.com/69918609/209458373-7b2aff94-8070-4b2c-989c-c8e112ace6f3.jpg"/>
</p>

<p float="left">
<img width="230" src="https://user-images.githubusercontent.com/69918609/209458378-73b933cf-a646-41a3-8a73-7789cdbe732b.jpg"/>
</p>

## App Features 🕹
 
 * Data are stored both remotely and locally, which allows to synchronize data among devices and still use the application without internet connection
 * Night mode is supported
 * Authorization is supported
 * User actions are accompanied by different animations
 * Design is adaptive. Will look good both on small and big screens
 * Deeplinks are supported:
    - [http://todos.ru](http://todos.ru) to run the app
    - [http://todos.ru/add](http://todos.ru/add) to add a task
    - [http://todos.ru/edit/{id}](http://todos.ru/edit/{id}) to open a task
 
## Project Features 🛠

 * The project follows clean architecture philosophy and implements BLoC pattern 
 * In-project services (repositpries, apis, and etc.) are injected
 * Linter check is enabled
 * Different layers of the project are incapsulated and live independently of each other (UI, Logic, Data, Navigation)
 * Independent unit tests are present
 * Two flavors are supported
    * To run dev flavor: `flutter run -t lib/main_dev.dart --flavor=dev`
    * To run prod flavor: `flutter run -t lib/main_prod.dart --flavor=prod`
    * For dev falvor, there's a mark on the top right corner of the screen
    <p float="left">
    <img width="230" src="https://user-images.githubusercontent.com/69918609/187085485-61cf1b9e-b89b-4874-b4a6-da4eee39a1be.png"/>
    </p>
  * There's a workflow on GitHub that analyzes, builds, tests, and distributes the project:
    * The app is sent to Firebase, and it's also released on GitHub
  * Firebase receieves events from the app and shows the analytics. Triggered when we change the screen, add task, edit or delete it
    ![image](https://user-images.githubusercontent.com/69918609/187085569-998104bb-9ce0-458e-a0cb-2f1ab51afddc.png)
    ![image](https://user-images.githubusercontent.com/69918609/187085639-b5d2523a-0fef-4f2f-be81-6769ceead1cb.png)
  * With the use of Firebase Remote Config, some features of the app (Colors) can be changed without a need to update the app
  * Firebase Crashlytics notifies if any kind of errors happen on the app
  
 ## Flutter Best Practices Applied 📌
 
  * Using Widget instances rather than functions returning Widgets
  * Having build function pure and simple
  * Using state-management rather than setState((){}) function
  * Having a well-defined acrhitecture
  * Following dart style guides
  * Using const keyword whenever possible
  * Using relative imports instead of absolute imports
