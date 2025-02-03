# OFS_CsvExporter

[OpenFunscripter](https://github.com/OpenFunscripter/OFS)用のエクステンションです。

現在読み込まれているFunscriptを、UFOSA・A10サイクロンSA連動用のCSVに変換してエクスポートします。

# インストール方法

[このリンク](https://github.com/scry1-csv/CsvExporter/releases/download/v1.0.0/CsvExporter.zip)からダウンロードしたzipを解凍し、出てきたフォルダをOpenFunscripterのエクステンションフォルダに丸ごと入れてください。

エクステンションフォルダは、OpenFunscripterのメニューの「エクステンション」→「エクステンションフォルダを開く」で開くことができます。

# 使い方

OpenFunscripterのエクステンションメニューからCsvExporterのウインドウを表示し、「Export VorzeSA CSV」ボタンを押してください。

すると、現在アクティブになっているFunscriptをCSVに変換し、OpenFunscripter.exeと同じ場所に「sa.csv」という名前で保存します。

## 変換内容

Funscriptの位置50をUFOSA・A10サイクロンSA用CSVの停止状態とし、位置100が正回転の速度100、位置0が逆回転の速度100として変換されます。
