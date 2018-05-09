# Haxe Leaderboards Demo

WORK IN PROGRESS

Minimal demonstration of achievements and leaderboards in Haxe.

## Features
Demonstrates simple sign in, leaderboards and achievements via the following libraries:
* ~~Google Play Games - [extension-googleplaygames](https://github.com/HaxeExtension/extension-googleplaygames)~~
* Amazon GameCircle - [samcodes-gamecircle](https://github.com/Tw1ddle/samcodes-gamecircle)
* ~~iOS GameCenter - [extension-gamecenter](https://github.com/openfl/extension-gamecenter)~~
* ~~GameJolt - [FlxGameJolt](https://github.com/HaxeFlixel/flixel-addons)~~
* ~~Kongregate - [FlxKongregate](https://github.com/HaxeFlixel/flixel-addons)~~

## Usage

This demo requires HaxeFlixel and the leaderboards haxelibs, install them:

```bash
haxelib install flixel
haxelib install flixel-addons
haxelib install samcodes-googleplaygames
haxelib install samcodes-gamecircle
haxelib install extension-gamecenter
```

Select the haxelib to test by editing the defines in ```project.xml```, then build and run the app for your chosen platform via FlashDevelop. Press the buttons to sign in, sign out, view tabulated scores, submit leaderboard scores, unlock achievements etc.

## Screenshots

The demo app:

![Screenshot of demo app](https://github.com/Tw1ddle/samcodes-leaderboards-demo/blob/master/screenshots/leaderboards-demo.png?raw=true "Leaderboards Demo")