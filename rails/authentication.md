# Authentication

## Devise

- [devise-two-factor/devise-two-factor: Barebones two-factor authentication with Devise](https://github.com/devise-two-factor/devise-two-factor)
  - [devise-two-factor によるワンタイムパスワードを使った2要素認証とそのハマりどころ](https://zenn.dev/readyfor_blog/articles/4a63ca8dbac27c)
- [williamatodd/devise-2fa: Devise 2FA with Time Based OTP/rfc6238 tokens and encrypted secrets.](https://github.com/williamatodd/devise-2fa)
- [Passkeys support · Issue #5527 · heartcombo/devise](https://github.com/heartcombo/devise/issues/5527)

## Rails 8 Authentication
[Securing Rails Applications — Ruby on Rails Guides](https://guides.rubyonrails.org/security.html)

- [Rails 8で基本的な認証ジェネレータが導入される（翻訳）｜TechRacho by BPS株式会社](https://techracho.bpsinc.jp/hachi8833/2024_10_21/145343)
- [Add basic sessions generator by dhh · Pull Request #52328 · rails/rails](https://github.com/rails/rails/pull/52328)
  - So do not expect magic links or passkeys or 2FA. That's not going to happen with this generator. - Jul 14, 2024
- [[Rails] Rails8で導入されたAuthenticationを試してみたが導入を見送った話 | 合同会社irori](https://corporate.irori.dev/posts/rails8-authentication)
  - 基本的な？(というかDeviseのような、昔からよくある)current_userを使う方法の方が、わかりやすいし、他の人が見たときにもわかりやすいかなと思いました。 - 2024/12/01
- [Rails8の認証機能と、俺たちのアイデンティティ - kinoppyd dev](https://kinoppyd.dev/blog/rails8-authentication/)
  - DHHも言っているとおり、これはあくまで認証コードは魔法じゃ無いという事を示すだけの非常に簡素な存在です。ONCEのようにシチュエーションが決め打ちされている場合以外では、実際にプロダクションで使うのは避け、deviseやrodauthを使うのが無難でしょう。 - 2024-12-01