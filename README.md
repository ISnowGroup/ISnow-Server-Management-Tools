# ISnow-Server-Management-Tools
ISnow Server Management Toolsはサーバー管理用のスクリプトセットです。
## 動作環境
Ubuntu 18.04 LTS,20.04 LTS<br />
**CentOSやRHEL,ArchLinuxなどでは動作しない可能性もあります。<br />
またbashの機能も利用していますので、dash環境のDebianでも動作しない可能性があります。**<br />
WindowsやMS-DOSまたはそれに類するOSでは(シェル的にもコマンド的にも)機能しません。WSLやWSL2でも動作しません。<br />
ファイルパスやコマンドはUbuntuでの配置を基準にしているため、ファイルパスが存在しなかったり、コマンドが実行出来ない場合もあります。<br />
Apache2関連のコマンドはsystemctlで行っていますが`httpd`ではなく`apache2`として処理していますのでapache2でコマンド実行出来るかご確認ください。<br />
`restart_maild`コマンドは色やスタイル,テーブルを多用しています。一部のターミナルエミュレータでは表示問題が起こる可能性もあります。
## コマンドの構文
### restart_maild
```sh
restart_mail options [target]
restart_mail -i target
```
※iオプション(情報表示)は機能していません。<br />
options
* -h ヘルプを表示します。引数なしも同様です。
* -l 再読み込み(`systemctl reload`)します。
* -k 停止します。
* -r 再起動(`systemctl restart`)します。
* -s 起動します。
* -e 自動起動を有効化します。
* -d 自動起動を無効化します。
* -i 状態を確認します。現在動作しません。

target
* -p Postfixに対して処理を行います。
* -v Dovecotに対して処理を行います。

### reload_nginx ,reload_apache2 ,r_ngi ,r_ap2
実行するだけで処理が完結します。<br />
特殊な操作は不要です。
