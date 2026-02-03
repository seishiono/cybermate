# CyberMate LLC Website

CyberMate合同会社の公式ウェブサイトです。

## 技術スタック

- **フレームワーク**: [Astro](https://astro.build/)
- **CMS**: [Decap CMS](https://decapcms.org/) (旧 Netlify CMS)
- **ホスティング**: GitHub Pages
- **フォーム**: Formspree

## セットアップ

### 1. リポジトリのクローン

```bash
git clone https://github.com/YOUR_USERNAME/cybermate-site.git
cd cybermate-site
```

### 2. 依存関係のインストール

```bash
npm install
```

### 3. 開発サーバーの起動

```bash
npm run dev
```

http://localhost:4321 でサイトが表示されます。

### 4. ビルド

```bash
npm run build
```

`dist/` フォルダに静的ファイルが生成されます。

## ブログ記事の追加方法

### 方法1: CMS管理画面から（推奨）

1. https://cybermate.cloud/admin/ にアクセス
2. GitHubアカウントでログイン
3. 「ブログ記事」→「新規作成」
4. 記事を作成して「公開」

### 方法2: 直接ファイルを作成

`src/pages/blog/` に以下の形式でMarkdownファイルを作成：

```markdown
---
layout: ../../layouts/BlogPost.astro
title: '記事タイトル'
date: '2024-12-01'
description: '記事の説明'
author: 'CyberMate LLC'
---

本文をここに記述...
```

## ディレクトリ構成

```
cybermate-site/
├── .github/
│   └── workflows/
│       └── deploy.yml      # GitHub Actions設定
├── public/
│   ├── admin/
│   │   ├── config.yml      # Decap CMS設定
│   │   └── index.html      # CMS管理画面
│   └── images/             # 画像ファイル
├── src/
│   ├── components/         # コンポーネント
│   ├── layouts/            # レイアウト
│   ├── pages/
│   │   ├── blog/           # ブログ記事（Markdown）
│   │   └── index.astro     # トップページ
│   └── styles/             # CSS
├── astro.config.mjs
└── package.json
```

## 初期設定チェックリスト

デプロイ前に以下を設定してください：

- [ ] `public/admin/config.yml` の `repo` を実際のリポジトリ名に変更
- [ ] お問い合わせフォームのFormspree IDを設定（`src/pages/index.astro`）
- [ ] `public/images/` に画像ファイルを配置
- [ ] GitHubリポジトリの Settings → Pages で GitHub Actions を選択
- [ ] カスタムドメイン（cybermate.cloud）のDNS設定

## カスタムドメイン設定

1. GitHubリポジトリの Settings → Pages → Custom domain に `cybermate.cloud` を入力
2. DNSレコードを設定：
   - タイプ: CNAME
   - 名前: www
   - 値: YOUR_USERNAME.github.io
   
   または Apex ドメインの場合：
   - タイプ: A
   - 名前: @
   - 値: 185.199.108.153 (GitHubのIP)

3. `public/CNAME` ファイルを作成：
   ```
   cybermate.cloud
   ```

## ライセンス

© 2023- CyberMate LLC
