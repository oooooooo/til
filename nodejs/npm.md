# npm

## パッケージのアップデート

npm outdated より違いが見やすく更新が簡単

```shell
npm install -g npm-check-updates
ncu
ncu -u
rm -rf node_modules && npm install
```

グローバルパッケージの場合

```shell
ncu -g
ncu -gu
```

<https://github.com/raineorshine/npm-check-updates>

## 利用していないパッケージ検出

```shell
npx depcheck
```

<https://github.com/depcheck/depcheck>
