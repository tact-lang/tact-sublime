# tact-sublime

<!-- TODO: banner -->

🚀 Adds syntax highlighting, folding, code snippets and miscellaneous support for the [Tact programming language](https://tact-lang.org/) to Sublime Text [3* and onward](#compatibility).

⚡ Tact is a new programming language for TON blockchain that is focused on efficiency and simplicity. It is designed to be easy to learn and use, and to be a good fit for smart contracts, because it is a statically typed language with a simple syntax and a powerful type system.

## Features

This package provides:

* Syntax highlighting
* Folding
* Indentation
* Code snippets

<!--
  TODO: Specify contributing guidelines

  1. auto-convertation from JSON to PLIST using
  https://marketplace.visualstudio.com/items?itemName=pedro-w.tmlanguage

  2. auto-extend all entity.name.type.tact with storage.type.tact for Sublime Text (or don't only Catppuccin seems to get that wrong)
     (themes differ here wildly, so this has to have a note in the README of sorts and, maybe, some Python scripts to change back and forth)
-->

<!-- TODO: change the `<block_comment>` thing in .tmPreferences to better match grammar. -->

<!-- TODO: image previews
<p>
  <img alt="light screenshot" title="Breakers" src="images/screen-light.png" width="45%">
  <img alt="dark screenshot" title="Mariana" src="images/screen-dark.png" width="45%">
</p>
-->

## Installation

<!-- TODO: Add to https://github.com/wbond/package_control_channel
### Through Package Control (Recommended)

This package is available on [Package Control](https://packagecontrol.io/installation). To install:

1. Open the command palette (<kbd>Ctrl/Cmd</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>)
2. Select **Package Control: Install Package**
3. Select **Tact**
-->

### Manual installation

1. Open the command palette (<kbd>Ctrl/Cmd</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd>)
2. Select **Preferences: Browse Packages**, this should open the "Packages" directory in your file explorer
3. Clone this repo into that directory.

Don't forget to run git pull from time to time to get the latest updates of this package.

## LSP integration

When the language server supports it, [**LSP** package](https://packagecontrol.io/packages/LSP) enables improved autocomplete, go-to-definition, formatting, "hover docs", compiler errors and warnings, general diagnostics and more.

To set it up, install the package and open its settings (**Preferences: LSP Settings** in the command palette), then add this config:

```json
{
  "clients": {
    "Tact": {
      "enabled": true,
      "command": ["tact-extracted-ls", "--stdio"],
      "selector": "source.tact"
    }
  }
}
```

Config above assumes you have installed the Tact language server extracted from the [tact-vscode](https://github.com/tact-lang/tact-vscode). If not, run `npm i -g tact-extracted-ls` to install it.

To setup keyboard shortcuts, see: [Key Bindings](https://lsp.sublimetext.io/customization/#keyboard-shortcuts-key-bindings).

## Compatibility

This package's syntax highlighting capabilities target Sublime Text 3+, while the rest of the features try to target the latest Sublime Text 4+. Bugs related to those features failing on any version lower that 4 won't be focused on.

## Useful Tact links

- [Official Website](https://tact-lang.org)
- [Tact Documentation](https://docs.tact-lang.org)
- Discussion Group in [Telegram](https://t.me/tactlang)
- [X/Twitter](https://twitter.com/tact_language)

## Credits

Based on [The Open Network](https://ton.org).

Built with 🤍 by [Novus Nota](https://github.com/novusnota).

## License

[MIT](LICENSE) © [Novus Nota](https://github.com/novusnota).
