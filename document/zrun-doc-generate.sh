#!/usr/bin/env bash
export DOC_OUT=document

echo -e "${COLOR_GREEN} 拷贝资源文件……"
cp -rf ${DOC_OUT}/doc-config/asciidoc/* ${DOC_OUT}/doc-web
echo -e "${COLOR_GREEN} 正在生成 Asciidoc 文档! ( 标准/规范 )"
asciidoctor -a safe-mode=SECURE -a sectanchors=true -a sectlinks=true -a icons=font -a iconfont-remote! -a stylesdir=css -R ${DOC_OUT}/doc-source -D ${DOC_OUT}/doc-web '**/*.adoc'
echo -e "${COLOR_GREEN} 规范文档已成功生成! "
echo -e "${COLOR_GREEN} Successfully! 全站生成完成"