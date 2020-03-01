# mac-auto-setup
Auto setup system for macOS.

## macOS version
macOS Sierra 10.12.6　
![check shell status](https://img.shields.io/badge/shell-pass-brightgreen.svg)

## homebrewについて
[Mac mini でパッケージ管理（Homebrew 導入）](https://qiita.com/takeru7584/items/96be2fbb703c8971efdb)


## Shell structure
|     sh     |    説明    |
| ---------- | ---------- |
|  MyDevEnv  |  homebrew及びbrewに関わるツールをインストールする  |
|  app  　　　|  GUIのappを自動でDLする（MyDevEnvを実行すると実行される）  |
|  appstore  |  appstore内で以前にDLしているappを自動でDLする（MyDevEnvを実行すると実行される）  |


## 各言語の利用について
JVM系の言語について  
  > sdkmanを利用します。

golangについて
  > goenvを利用します。

pythonについて
  > pyenvを利用します。

rubyについて
  > rubyenvを利用します。

## zshの設定参考
[Zsh初心者がzshrcを色々調べたの晒してみる](https://qiita.com/ryuichi1208/items/2eef96debebb15f5b402)  


## vimの設置について
.vimrcを用意しています。  
[脱初心者を目指すVimmerにオススメしたいVimプラグインや.vimrcの設定](https://qiita.com/jnchito/items/5141b3b01bced9f7f48f)  
[dein.vimでプラグイン管理のはじめ方](https://qiita.com/sugamondo/items/fcaf210ca86d65bcaca8)  
[]()  

## Downloads

ローカル環境の設定:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/a1008u/MyDevEnv/master/MyDevEnv.sh)"
```

bashの設定:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/a1008u/MyDevEnv/master/bash/makebash.sh)"
```

zshの設定:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/a1008u/MyDevEnv/master/zsh/makezsh.sh)"
```

vimの設定:
```
sh -c "$(curl -fsSL https://raw.githubusercontent.com/a1008u/MyDevEnv/master/vim/makevim.sh)"
```