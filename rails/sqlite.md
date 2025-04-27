# SQLite

- [🛤 Rails 8はSQLiteで大幅に強化された「個人が扱えるフレームワーク」（翻訳）｜YassLab 株式会社](https://note.com/yasslab/n/n89d6850e296d)
  - 1つ目の問題は、アプリケーションにかかる同時負荷が大きくなるに連れて、リクエストがエラーになる割合が増大することでした。リクエストを同時4件受け取っただけで、レスポンスのほぼ半分がエラーになりました。このままでは明らかにproduction環境で使えませんね。
  - 2つ目の問題は、同時負荷の増加に伴うアプリケーションのテールレイテンシに関連していました。p99（パーセンタイル99）やp95（パーセンタイル95）のレイテンシが急上昇することがわかります。それに、一部のリクエストのレスポンスが返るまでに5秒以上かかるようでは、とても実際のアプリケーションでは許容できません。
    - 高負荷時のp99レイテンシも文字通り1桁改善されました。
      - [How (and why) to run SQLite in production | Fractaled Mind](https://fractaledmind.github.io/2023/12/23/rubyconftw/)
https://fractaledmind.github.io/2023/12/23/rubyconftw/
  - SQLiteのバックアップに最適なツールはLitestreamだと思います。
    - https://github.com/fractaledmind/litestream-ruby