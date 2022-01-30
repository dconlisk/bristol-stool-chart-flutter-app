# The Bristol Stool Chart mobile app written in Flutter
This is the fourth iteration of the Bristol Stool Chart mobile app (from iOS native, to Xamarin Forms, then to a basic Flutter solution, and now to a more advanced Flutter application). It's a total rewrite with a new Material design and using Google Flutter and Dart. It's a single codebase that runs on both iOS and Android phones and tablets.

This app is used by medical professionals with their patients to track their stool quality over time. Users can track their stools and then share the data with their chosen health professional in the form of an easy-to-read graph as well as a csv of the raw data. The app does not track user data and is totally anonymous - no login required.

I created this app as a way to practice using flutter while also keeping the app current and up-to-date. 

## Flutter packages used

* auto_route : this is maybe overkill for such a simple app as this, but it's the solution I use in my enterprise projects. It uses code generation to simplify the route setup in your app, and also allows 
the passing of strongly typed arguments as well as deep-linking.
* google_fonts : my designer friends tell me I should use nice fonts, so here I go.

## Technical notes

I use [fvm](https://fvm.app) to manage the flutter SDK versions installed on my machine. It allows you to set a global version of flutter for your projects to use, while also allowing you to specify local versions to use for each 
project. Note that this project contains a .fvm directory which contains the fvm_config.json file which specifies which version of flutter this project uses.
I have also created a Makefile which allows me to use shortcuts like "make generated" in my Terminal, which will run the command "@fvm flutter packages pub run build_runner build --delete-conflicting-outputs" - it's just quicker
and easier to remember.


[The Bristol Stool Chart website](https://bristolstoolchart.net)

# License

```
Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
