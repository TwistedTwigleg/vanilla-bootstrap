[![Bootstrap for Vanilla](screenshot.png)](https://github.com/kasperisager/vanilla-bootstrap)

[![Release](http://img.shields.io/github/release/kasperisager/vanilla-bootstrap.svg?style=flat)](https://github.com/kasperisager/vanilla-bootstrap/releases) [![Depencency Status](http://img.shields.io/gemnasium/kasperisager/vanilla-bootstrap.svg?style=flat)](https://gemnasium.com/kasperisager/vanilla-bootstrap)

Bootstrap for Vanilla has been rewritten from scratch on top of [Bootstrap 3](http://getbootstrap.com) in this second installation of the most popular theme for Vanilla Forums. Kickstart your Vanilla-powered community forums with a fresh and solid theme that is ready to be customized to your heart's desires.

## TwistedTwigleg additions/notes

This is a modified version of the Bootstrap Vanilla forum theme by Kasperisager.

The primary changes is the addition of a new theme: Godot_Like theme.

The Godot_Like theme is a edited version of the Darkly theme that is designed to mirror the color and style of [GodotEngine.org](https://GodotEngine.org) as closely as possible.

The theme is still very much a work in progress! Check out the test forum server on RandomMomentania for an idea of what the theme looks like. Note that the theme has additions specific to the plugins included in said server, as well as relying on a modified version of the Role Titles plugin.

### Installing into Vanilla notes

I wanted to write down some things I noticed while working on this theme:

* The theme folder **HAS** to be named **bootstrap**. No uppercase letters, despite what you might find on the internet. It seems the theme required being placed in a folder called `Bootstrap` before, but that is no longer the case and the folder has to be named `bootstrap`.
* `default.master` in the `views` folder is responible for the layout of the main page.
* To make a new theme, it is easiest to copy one of the themes in the `bower_components/bootswatch` folder and make adjustmensts from there. For a new theme, you also need to add a `.LESS` file with the same name as the folder of your theme in `bower_components/bootswatch`.

## Getting started

To get started using Bootstrap for Vanilla, either:

- [__Download the latest release__](https://github.com/kasperisager/vanilla-bootstrap/releases/latest)
- Clone the repository directly into your Vanilla `themes` directory:

```sh
$ git clone kasperisager/vanilla-bootstrap bootstrap
```

## Included themes

Vanilla Bootstrap comes bundled with all the amazing [Bootswatch](https://bootswatch.com) themes by [Thomas Park](http://thomaspark.co/):

<img title="Darkly" src="design/screenshot_darkly.png" width="32%">

## Development

The following instructions assume that you have already installed Node.js on your computer. If this is not the case, please download and install the latest stable release from the official [Node.js download page](http://nodejs.org/download/). If you are using [Homebrew](http://brew.sh/), you can also install Node.js via the command line:

```sh
$ brew install node
```

> __Notice__: It is important that you install Node in a way that does not require you to `sudo`.

Once you have Node.js up and running, you will need to install the local dependencies using [npm](http://npmjs.org):

```sh
$ npm install
```

### Tasks

#### Build - `npm run build`
Compiles all theme assets using Gulp. LESS stylesheets will be compiled to [`design/style.css`](design/style.css) and Javascripts will be concatenated and output to [`js/custom.js`](js/custom.js).

#### Watch - `npm run watch`
Watches the assets for changes and runs the appropriate Gulp tasks. Also starts a Livereload server that will push the changes to your Vanilla installation automatically.

## [Issue tracking](https://github.com/kasperisager/vanilla-bootstrap/issues)

If you come across any bugs or if you have a feature request, please file an issue using the GitHub Issue tracker. Bootstrap for Vanilla won't be supported through http://vanillaforums.org so please stick to using GitHub for inquiries about bugs and feature requests. Thanks!

[__File a new issue or feature request__](https://github.com/kasperisager/vanilla-bootstrap/issues/new)

---

Copyright &copy; 2014-2015 [Kasper Kronborg Isager](https://github.com/kasperisager). Licensed under the terms of the [MIT License](LICENSE.md)
