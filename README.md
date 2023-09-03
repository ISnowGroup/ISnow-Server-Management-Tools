# ISnow-Server-Management-Tools
ISnow Server Management Toolsはサーバー管理用のスクリプトセットです。
## 動作環境
Ubuntu 18.04 LTS, 20.04 LTS, 22.04 LTS  
**RockeyLinuxやRHEL, ArchLinuxなどでは動作しない可能性もあります。  
またbashの機能も利用していますので、bashがインストールされていないDebianでも動作しない可能性があります。(Debianの基本のシェルは`dash`)  
その他、DebianやUbuntuの派生ディストリビューションでも、systemdを使用しないディストリビューションでは動作しません。**  
WindowsやMS-DOSまたはそれに類するOSでは(シェル的にもコマンド的にも)機能しません。WSLや通常のWSL2では動作しません。  
ただし、systemdを有効にしたWSL2 (Ubuntu)では動作する可能性があります。  
ファイルパスやコマンドはUbuntuでの配置を基準にしているため、ファイルパスが存在しなかったり、コマンドが実行出来ない場合もあります。  
Apache2関連のコマンドはsystemctlで行っていますが`httpd`ではなく`apache2`として処理していますのでapache2でコマンド実行出来るかご確認ください。  
`restart_maild`コマンドは色やスタイル,テーブルを多用しています。一部のターミナルエミュレータでは表示問題が起こる可能性もあります。
## 注意事項
- `restart_*`で情報確認をした際に、キャレット記法で表現されるキーを押すと、キャレットだけ外れて、プロンプトに残ります。
  - ex 1: `続行するには何かキーを押してください ...` で `↓` を押すと `^[B` が送出され、プロンプトに `[B` だけが残ります。
## コマンドの構文
### restart_apache / restart_nginx
```sh
# Apache2
restart_apache options
# NGINX
restart_nginx options
```
options
* `-h` ヘルプを表示します。引数なしも同様です。
* `-l` 再読み込み(`systemctl reload`)します。
* `-k` 停止します。
* `-r` 再起動(`systemctl restart`)します。
* `-s` 起動します。
* `-e` 自動起動を有効化します。
* `-d` 自動起動を無効化します。
* `-i` 状態を確認します。正常に機能しない可能性があります。

### restart_maild
```sh
restart_maild options [target]
restart_maild -i target
```
options
* `-h` ヘルプを表示します。引数なしも同様です。
* `-l` 再読み込み(`systemctl reload`)します。
* `-k` 停止します。
* `-r` 再起動(`systemctl restart`)します。
* `-s` 起動します。
* `-e` 自動起動を有効化します。
* `-d` 自動起動を無効化します。
* `-i` 状態を確認します。正常に機能しない可能性があります。

target
* `-p` Postfixに対して処理を行います。
* `-v` Dovecotに対して処理を行います。

### reload_nginx ,reload_apache2 ,r_ngi ,r_ap2
実行するだけで処理が完結します。<br />
特殊な操作は不要です。
