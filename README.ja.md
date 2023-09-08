<h1 align="center"> PostgreSQL RLS 検証</h1>

[English](https://github.com/nao-United92/postgres-rls-verifycation/blob/main/README.md) | 日本語</h2>

<!-- TABLE OF CONTENTS -->
<h2 id="table-of-contents"> :book: 目次</h2>

<details open="open">
  <summary>目次</summary>
  <ol>
    <li><a href="#overview"> ➤ 概要</a></li>
    <li><a href="#project-files-description"> ➤ ファイル概要</a></li>
    <li><a href="#getting-started"> ➤ 起動方法</a></li>
    <li><a href="#row-level-security-verification-procedure"> ➤ Row Level Security 検証手順</a></li>
    <li><a href="#references"> ➤ 参考</a></li>
  </ol>
</details>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<!-- 概要 -->
<h2 id="overview"> :cloud: 概要</h2>

<p align="justify">
  <b>Row Level Security</b> の検証用リポジトリです。<br>
</p>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<!-- ファイル概要 -->
<h2 id="project-files-description"> :floppy_disk: ファイル概要</h2>

<h3>Dockerfile</h3>
<ul>
  Docker イメージの指定、ロケールの日本語設定を実施
</ul>

<h3>compose.yaml</h3>
<ul>
  DB サーバ(db)のコンテナ定義が記述されています。
</ul>

<h3>rls_verification.sql</h3>
<ul>
  Row Level Security の検証で使われるクエリが記述されています。
</ul>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<!-- 起動方法 -->
<h2 id="getting-started"> :arrow_forward: 起動方法</h2>

<p><b>1. 初めて起動する場合</b> - イメージ構築、コンテナ構築・起動を一括で実行</p>
<pre><code>$ docker compose up --build -d</code></pre>

<p><b>2. 起動2回目以降の場合</b> - コンテナ構築・起動を実行</p>
<pre><code>$ docker compose up -d</code></pre>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<!-- Row Level Security 検証手順 -->
<h2 id="row-level-security-verification-procedure"> :memo: Row Level Security 検証手順</h2>
<a href="https://qiita.com/nao-United92/items/8d939cda0e1ccf73b6da">PostgreSQL Row Level Security 検証</a><br>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<!-- 参考 -->
<h2 id="references"> :scroll: 参考</h2>
<a href="https://products.sint.co.jp/siob/blog/postgresql">PostgreSQLとは？特徴や最新バージョンの機能を紹介！</a><br>
<a href="https://times.hrbrain.co.jp/entry/postgresql-row-level-security">PostgreSQLのRow Level Securityを使ってマルチテナントデータを安全に扱う</a><br>
<a href="https://masanyon.com/postgresql-db-cli-command-sql-list/#i-3">PostgreSQLの基本的な操作方法・コマンドまとめ</a><br>
<a href="https://qiita.com/6in/items/f23ead1314b9e6d2f2b7">PostgreSQLでの暗黙の型変換メモ（文字列<->数値）</a><br>
<a href="https://www.postgresql.jp/document/8.1/html/functions-admin.html">9.20. システム管理関数</a>
<br><br>

<a href="https://github.com/nao-United92" target="_blank"><img alt="Github" src="https://img.shields.io/badge/GitHub-%2312100E.svg?&style=for-the-badge&logo=Github&logoColor=white" /></a>
<a href="https://qiita.com/nao-United92" target="_blank"><img alt="Medium" src="https://img.shields.io/badge/qiita-55C500.svg?&style=for-the-badge&logo=qiita&logoColor=white" /></a>
