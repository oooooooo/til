# Keybindings

Command Palette (Ctrl+Shift+P) → Preferences: Open Keyboard Shortcuts (JSON)

## Go to end of line with Ctrl+E in terminal

```json
  {
      "key": "ctrl+e",
      "command": "-workbench.action.quickOpen",
  },
  {
      "key": "ctrl+e",
      "command": "workbench.action.quickOpen",
      "when": "!terminalFocus"
  }
```

[Go to end of line with Ctrl+E in terminal · Issue #59304 · microsoft/vscode](https://github.com/Microsoft/vscode/issues/59304)
