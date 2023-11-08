# Paria App Repository

Paria Assistant App

- Download and Clone the Repository
- Clean the project files and folders:

--> flutter clean

- Get pubspec Updated for all available and used packages:

--> flutter pub get

- Build runner Command:

--> dart pub run build_runner build --delete-conflicting-outputs

- for web output:

--> flutter build web --web-renderer canvaskit --release

--> (--web-renderer html/canvaskit) for different renderers

- ...

##OR
You can run builder.bat in project by
```
.\builder.bat
```


## Others
# Launcher Icon
- For any possible change in Launcher Icon
- first change the file in assets : <<assets/logos/paria_logo.png>> (Please replace the file)
- the run:

--> flutter pub run flutter_launcher_icons -f flutter_launcher_icons.yaml