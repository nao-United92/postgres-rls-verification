<h1 align="center"> PostgreSQL RLS Verification </h1>

English | [日本語](https://github.com/nao-United92/postgres-rls-verifycation/blob/main/README.ja.md)</h2>

<!-- TABLE OF CONTENTS -->
<h2 id="table-of-contents"> :book: TABLE OF CONTENTS</h2>

<details open="open">
  <summary>TABLE OF CONTENTS</summary>
  <ol>
    <li><a href="#overview"> ➤ Overview</a></li>
    <li><a href="#project-files-description"> ➤ Project Files Description</a></li>
    <li><a href="#getting-started"> ➤ Getting Started</a></li>
    <li><a href="#row-level-security-verification-procedure"> ➤ Row Level Security Verification Procedure</a></li>
    <li><a href="#references"> ➤ References</a></li>
  </ol>
</details>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<!-- Overview -->
<h2 id="overview"> :cloud: Overview</h2>

<p align="justify">
  This is a repository for <b>Row Level Security Verification</b>.<br>
</p>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<!-- PROJECT FILES DESCRIPTION -->
<h2 id="project-files-description"> :floppy_disk: Project Files Description</h2>

<h3>Dockerfile</h3>
<ul>
  Specify Docker image, Locale Japanese settings
</ul>

<h3>compose.yaml</h3>
<ul>
  Container definitions for DB server (db) are described.
</ul>

<h3>rls_verification.sql</h3>
<ul>
  Row Level Security validation query
</ul>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<!-- Getting Started -->
<h2 id="getting-started"> :arrow_forward: Getting Started</h2>

<p><b>1. When starting for the first time</b> - Execute image construction, container construction and startup all at once</p>
<pre><code>$ docker compose up --build -d</code></pre>

<p><b>2. When starting after the second time</b> - Execute container construction and start</p>
<pre><code>$ docker compose up -d</code></pre>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<!-- Row Level Security Verification Procedure -->
<h2 id="row-level-security-verification-procedure"> :memo: Row Level Security Verification Procedure</h2>
<a href="https://qiita.com/nao-United92/items/8d939cda0e1ccf73b6da">PostgreSQL Row Level Security Verification</a><br>

![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)

<!-- References -->
<h2 id="references"> :scroll: References</h2>
<a href="https://products.sint.co.jp/siob/blog/postgresql">What is PostgreSQL? Introducing the features and functions of the latest version!</a><br>
<a href="https://times.hrbrain.co.jp/entry/postgresql-row-level-security">Safely handle multi-tenant data using PostgreSQL Row Level Security</a><br>
<a href="https://masanyon.com/postgresql-db-cli-command-sql-list/#i-3">Basic operation method and command summary of PostgreSQL</a><br>
<a href="https://qiita.com/6in/items/f23ead1314b9e6d2f2b7">Implicit type conversion notes in PostgreSQL (string <-> number)</a><br>
<a href="https://www.postgresql.jp/document/8.1/html/functions-admin.html">9.20. System management functions</a>
<br><br>

<a href="https://github.com/nao-United92" target="_blank"><img alt="Github" src="https://img.shields.io/badge/GitHub-%2312100E.svg?&style=for-the-badge&logo=Github&logoColor=white" /></a>
<a href="https://qiita.com/nao-United92" target="_blank"><img alt="Medium" src="https://img.shields.io/badge/qiita-55C500.svg?&style=for-the-badge&logo=qiita&logoColor=white" /></a>
