## How to Use 

**Step 1: Clone**

Download or clone this repo by using the link below:

```
https://github.com/JoaoRodriguesRD/dart_introduction.git
```

**Step 2: Install Dart**

Once you’re ready to move beyond DartPad and develop real apps, you need an SDK. You can either download the Dart SDK directly (as described below) or download the Flutter SDK, which includes the full Dart SDK.
## MacOs Install
```macos
 brew tap dart-lang/dart
 brew install dart
```

## Linux Install
First
```linux
 sudo apt-get update
 sudo apt-get install apt-transport-https
 wget -qO- https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo gpg --dearmor -o /usr/share/keyrings/dart.gpg
 echo 'deb [signed-by=/usr/share/keyrings/dart.gpg arch=amd64] https://storage.googleapis.com/download.dartlang.org/linux/debian stable main' | sudo tee /etc/apt/sources.list.d/dart_stable.list
```
Now install dart SDK
```linux
 sudo apt-get update
 sudo apt-get install dart
```
## Windows Install

```terminal
 choco install dart-sdk
```

**Step 3: Run project**

Go to `root` application and run: 

```
dart run
```

### The project


The project was based on 4 basic programming logic problems:
**1: Input and output - number of days of life**
Get Years and return total day's life.
**2: Input and output - Salary calculation**
Simple Salary Calculation with 30% discount
**3: Read from File**
Read a csv style file.
**4:math problem**
banknote counter.
