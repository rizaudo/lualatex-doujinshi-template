# これ何
LuaLaTeX-jaで日本語同人誌を書くためのテンプレートリポジトリ。
トンボを付けられるので、印刷所にPDF稿までこれ一つで行けるはず(筈というのは印刷所によっては内トンボでカットしてからとか色々仕様が違うので)

自分の泥臭ワークから綺麗にして持ってきているので、何か問題が有ったらごめんなさい。Issue立ててください。

# やりかた
ビルドはmakeすればよい。個別のファイルをビルドしたい場合は`make [YOUR FILENAME].pdf`でよいはず。

## 表紙・裏表紙(表１・４)
表1,4は別途入稿が普通だと思うので、表紙や裏表紙はtexには入れず印刷所の指示にしたがってください。

## 章毎の分割
subfilesを使っているため、sections/の中にtexファイルを置いた上でそれぞれ書いていけば良い。
個々のファイルでもコンパイルは出来る(=mainのプリアンプルが共有される)。
注意として、個々のファイルのプリアンプルはmain.texには共有 *されない*。

# おことわり
これは個人で使ってる物体なので、何か破壊的な事はします。なんか問題があれば気分で対応するので、Issue投げてください。

# 謝辞
このLuaLaTeXでのトンボの付け方は ひだるま(@hid_alma1026)先輩に教えていただきました。めっちゃ助かってるので有り難い。
