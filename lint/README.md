# lint

## Spell

```json
$ touch .cspell.json
$ cat .cspell.json
{
  "ignorePaths": [
    "node_modules/**",
    "package-local.json",
    "pnpm-lock.yaml"
  ],
  "words": [
    "foobar"
  ]
}
```

- [Configuration - CSpell](http://cspell.org/configuration/)
- [CSpell - CSpell](http://cspell.org/)
- [Code Spell Checker - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=streetsidesoftware.code-spell-checker)

## GitHub Actions

- [rhysd/actionlint: :octocat: Static checker for GitHub Actions workflow files](https://github.com/rhysd/actionlint)

## Markdown

```shell
pnpm i -g markdownlint-cli
markdownlint
```

ignore

```shell
$ cat .markdwonlintignore
LICENSE
```

- [DavidAnson/markdownlint: A Node.js style checker and lint tool for Markdown/CommonMark files.](https://github.com/DavidAnson/markdownlint)
  - [igorshubovych/markdownlint-cli: MarkdownLint Command Line Interface](https://github.com/igorshubovych/markdownlint-cli)
  - [markdownlint - Visual Studio Marketplace](https://marketplace.visualstudio.com/items?itemName=DavidAnson.vscode-markdownlint)

## Shell

- [koalaman/shellcheck: ShellCheck, a static analysis tool for shell scripts](https://github.com/koalaman/shellcheck#installing)

## SQL

- [SQLFluff](https://www.sqlfluff.com/)

