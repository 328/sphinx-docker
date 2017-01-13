# sphinx-docker

- Sphinxの勉強がてらにDockerで使えるようにしてみました。
- 日本語PDFの出力にも対応してます。
- Markdown記法が利用できますが、pandoc経由でrstに変換します。

# 使い方

docker-compose.ymlのvolumesを自身が利用するパスに変更してください。
```
- /Users/328/sphinx/documents:/documents
```

```
$ docker-compose build
$ docker-compose up -d
$ docker exe -it 
$ docker exec -it sphinx_sphinx_1 /bin/bash
$ sphinx-quickstart
```

`require_project_file`の中にあるファイルをプロジェクト直下に持ってきてください。
```
cp require_project_file/* ./
```

markdownとrst配置用のディレクトリを作成

```
mkdir source/markdown
mkdir source/rst

```

# ディレクトリ構成

```
documents
├ ─ ─  Makefile
├ ─ ─  _build
├ ─ ─  build
├ ─ ─  ja.json
├ ─ ─  make.bat
├ ─ ─  md2rst.sh
└ ─ ─  source
    ├ ─ ─  _static
    ├ ─ ─  _templates
    ├ ─ ─  conf.py
    ├ ─ ─  index.rst
    ├ ─ ─  markdown
    │    └ ─ ─  main.md
    └ ─ ─  rst
        └ ─ ─└ main.rst
```

# pdf 出力

```
$ make pdf
```
