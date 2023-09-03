#!/usr/bin/env bash
# 两个环境变量，生成API文档的目录和API文档服务器的端口
export COLOR_GREEN="\033[32m[Zero UI]\033[0m" # 绿色
echo -e "${COLOR_GREEN} Zero文档服务器正在启动...! "
echo -e "${COLOR_GREEN} 核心环境变量如下:  "
echo -e "    \033[33mDOC_OUT\033[0m = \033[31m${DOC_OUT}\033[0m"
echo -e "    \033[33mPORT\033[0m = \033[31m$1\033[0m"
echo -e "    \033[33mWEB\033[0m = \033[31m${DOC_OUT}/$2\033[0m"
live-server ${DOC_OUT}/$2 --port=$1
echo -e "${COLOR_GREEN} 您可在浏览器中打开 http://localhost:$1 查看 \"\033[33mZero Ui\033[0m\" 文档"
# serve -p ${DOC_PORT} -s ${DOC_OUT}/doc-web
# live-server ${DOC_OUT}/doc-web --port
# open ${DOC_OUT}/doc-web/index.html
