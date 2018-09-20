# 中文学位论文 LaTeX 模板框架

## 编译文档

- 编译模板的使用说明文档 `chinathesis.pdf`：
   ```
   latexmk chinathesis.dtx
   ```
- 编译论文 `main.pdf`：
   ```
   latexmk
   ```
- 如需清理论文编译过程中的临时文件，可以：
   ```
   latexmk -c
   ```

- 以上编译过程也可以用 `make` 工具：
   ```
   make doc        # 编译生成 chinathesis.pdf
   make            # 编译生成论文 main.pdf
   make clean      # 删除编译过程中生成的临时文件
   ```
