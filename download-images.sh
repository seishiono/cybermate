#!/bin/bash

# CyberMate画像ダウンロードスクリプト
# 使用方法: cd cybermate-site && bash download-images.sh

BASE_URL="https://cybermate.cloud/wp-content/uploads"

# ディレクトリ作成
mkdir -p public/images/{team,partners,proposals}

echo "画像をダウンロード中..."

# ロゴ・メイン画像
wget -q -O public/images/logo.png "${BASE_URL}/2024/12/logo.png" && echo "✓ logo.png"
wget -q -O public/images/firstimg.png "${BASE_URL}/2024/10/firstimg.png" && echo "✓ firstimg.png"
wget -q -O public/images/sp_firstimg.png "${BASE_URL}/2024/10/sp_firstimg.png" && echo "✓ sp_firstimg.png"

# チームメンバー
wget -q -O public/images/team/seishi-ono.png "${BASE_URL}/2024/10/Seishi-Ono.png" && echo "✓ team/seishi-ono.png"
wget -q -O public/images/team/kazuki-kasama.png "${BASE_URL}/2024/10/Kazuki-Kasama.png" && echo "✓ team/kazuki-kasama.png"
wget -q -O public/images/team/yumi-misawa.png "${BASE_URL}/2024/10/Yumi-Misawa.png" && echo "✓ team/yumi-misawa.png"
wget -q -O public/images/team/mikiko-tanifuji.png "${BASE_URL}/2024/10/Mikiko-Tanifuji.png" && echo "✓ team/mikiko-tanifuji.png"
wget -q -O public/images/team/dieb-sae.png "${BASE_URL}/2024/10/Dieb-Sae.png" && echo "✓ team/dieb-sae.png"

# パートナー
wget -q -O public/images/partners/paul-walk.png "${BASE_URL}/2024/10/Paul-Walk.png" && echo "✓ partners/paul-walk.png"
wget -q -O public/images/partners/luca-foppiano.png "${BASE_URL}/2024/10/Luca-Foppiano.png" && echo "✓ partners/luca-foppiano.png"
wget -q -O public/images/partners/yuko-nagai.png "${BASE_URL}/2024/10/noname.png" && echo "✓ partners/yuko-nagai.png"

# 提案セクション
wget -q -O public/images/proposals/pic1.png "${BASE_URL}/2024/10/pic1.png" && echo "✓ proposals/pic1.png"
wget -q -O public/images/proposals/pic2.png "${BASE_URL}/2024/10/pic2.png" && echo "✓ proposals/pic2.png"
wget -q -O public/images/proposals/pic3.png "${BASE_URL}/2024/10/pic3.png" && echo "✓ proposals/pic3.png"

echo ""
echo "ダウンロード完了！"
echo "確認: ls -la public/images/"
