
library(fmsb)
###year1
math = 3  
chem = 2.5+0.5+2+4+2+1
bioinfo = 0
cs = 2+3
ds = 2
bio = 1+5
###year2
math = math
chem = chem+0.5+1+2+2+2+1+2.5+1+2
bioinfo = bioinfo
  cs = cs+3+2+3
ds = ds
bio = bio+1.5+1.5+2+2+3+2+1.5+2+3+1
###year3
math = math+2+3+5
  chem = chem+1+1.5+2
bioinfo = bioinfo+2+2+2
cs = cs+2
ds = ds+3+2
bio = bio+3+2+2.5+2
###year4
math = math+6
chem = chem
bioinfo = bioinfo+4+2+2+15
cs = cs+2
ds = ds+1
bio = bio
####Double degree
chem = chem+2+2.5+3+3+3+3+3+3+2+2.5
###MSC 1
  
math1 = 3+3

chem1 = 0
bioinfo1 = 0
cs1 = 3
ds1 = 3+6
bio1 = 0
###MSC 2
math1 = math1+6
chem1 = 0
bioinfo1 = 0
cs1 = cs1+3
ds1 = ds1+9
bio1 = 0
# 加载 fmsb 包
library(fmsb)


# 创建数据框
# 准备数据
data <- data.frame(
  Math_Stat = c(60,0,math+math1,math),
  Biology = c(60, 0, bio+bio1,bio ),
  Chem_Physics = c(60, 0, chem+chem1, chem),
  CS = c(60, 0,  cs+cs1,cs),
  DS = c(60, 0,  ds+ds1,ds),
  Bioinfo = c(60, 0, bioinfo+bioinfo1, bioinfo)
)

# 设置行名，第一行是最大值，第二行是最小值
rownames(data) <- c("Max", "Min", "Completed", "In Progress")

pdf("D:\\reda.pdf",width = 5,height = 5)
radarchart(
  data,
  axistype = 0,
  pcol = c( "skyblue","blue"),      # 设置线条颜色
  pfcol = c( rgb(0.53, 0.81, 0.98, 0.3), rgb(0, 0, 0.4, 0.3)), # 设置填充颜色
  plwd = 2,                          # 设置线条宽度
  cglcol = "grey",                   # 网格线颜色
  cglty = 1,                         # 网格线类型
  axislabcol = "black",              # 坐标轴标签颜色
  cglwd = 0.8,                       # 网格线宽度
  vlcex = 0.8                        # 标签字体大小
)
# 添加图例
legend("topright", legend = c("Completed", "In Progress"), col = c( "blue","skyblue"), pch = 20, pt.cex = 2)

dev.off()
