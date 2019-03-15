# 北方工业大学本科学位论文 LaTeX 模板框架

本分支是改编自 [latexstudio/ChinaThesis: 中文学位论文 LaTeX 模板基础框架](https://github.com/latexstudio/ChinaThesis)

主要改动如下：

- 参考文献版式改为了学校要求的 1987 + 2005 混合标准
- 移除了学校未要求的原创性声明
- 学校的论文最终打印是只需要 B5 版面的正文即可
  - 页眉等都是论文专用纸提供
  - 封面是论文专用封面提供

******

主要特性：
- 支持跨平台使用，兼容最新的 TeX Live, MacTeX 和 MikTeX 发行版，
  并向后兼容到 2016 年的版本
- 不支持已经过时的 CTeX 套装
- 数学符号遵循国内的排版习惯
- 参考文献格式符合 GB/T 7714
- 单元测试（l3build）
- 持续集成（travis-ci）



## 使用模板

模板的源代码代码位于 `chinathesis.dtx` 文件中，
编译模板的使用说明文档 `chinathesis.pdf`：
```
latexmk -xelatex chinathesis.dtx
```

编译论文 `main.pdf`：
```
latexmk -xelatex main.tex
```

清理论文编译过程中的临时文件：
```
latexmk -c main.tex
```

以上编译过程也可以用 `make` 工具：
```
make doc        # 编译生成 chinathesis.pdf
make            # 编译生成论文 main.pdf
make clean      # 删除编译过程中生成的临时文件
```
