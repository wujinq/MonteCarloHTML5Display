# 2022.4.28

从旧代码里面找来了一个Hubbard DQMC的程序`hubbard-old-code.jl`，看看能不能修改得generic一些。

先测试一下能不能用：取$U=1$，输出为
```
T -1.4777923120276673 0.004471842143327594
Mott 0.20837948635182507 0.000888249213972672
```
第一列为平均值，第二位为标准差。

在`hubbard-old-code-renamed.jl`中修改一些名称，使得后续的模块化更容易进行。

初步计划：
- 将主循环移动到`main.jl`
- 构建格点的移动到`lattice.jl`
- 理想情况下，可以先写一个generic的版本用来计算$\ee^{- \Delta \tau T}$，然后写一个专属于正方晶格的版本做checkboard decomposition。