module.exports = {
  trust: true,
  macros: {
      //1 常数
      "\\e": "\\mathrm{e}",//自然对数
      "\\i": "\\mathrm{i}",//虚数单位
      //2 代表符
      "\\Q": "\\mathbb{Q}",//有理数集合
      "\\C": "\\Complex",//复数集合
      "\\empty": "\\varnothing",//空集//替换//原\empty为\emptyset
      "\\circle": "\\odot",//圆
      "\\circled": "\\textcircled{\\footnotesize\\text{#1}}",//圆圈
      //3 运算符
      "\\d": "\\mathop{}\\!\\mathrm{d}",//微分符号
      "\\pd": "\\mathop{}\\!\\partial",//偏微分符号
      "\\as": "\\bigg\\vert",//代入符号
      "\\c": "\\operatorname{C}",//组合符号
      "\\r": "\\operatorname{r}",//秩
      "\\Re": "\\operatorname{Re}\\left(#1\\right)",//实数部分//替换//原\Re为\real
      "\\Im": "\\operatorname{Im}\\left(#1\\right)",//虚数部分//替换//原\Im为\image
      "\\le": "\\leqslant",//小于等于//替换//原\le为\leq
      "\\ge": "\\geqslant",//大于等于//替换//原\ge为\geq
      "\\nle": "\\nleqslant",//不小于等于
      "\\nge": "\\ngeqslant",//不大于等于
      "\\nl": "\\nless",//不小于
      "\\ng": "\\ngtr",//不大于
      //4 关系符
      "\\par": "\\mathrel{/\\kern-5mu/}",//平行
      "\\npar": "\\mathrel{/\\kern-13mu\\smallsetminus\\kern-13mu/}",//不平行
      "\\nimplies": "\\mathrel{\\kern13mu\\not\\kern-13mu\\implies}",//无法推出
      "\\nimpliedby": "\\mathrel{\\kern13mu\\not\\kern-13mu\\impliedby}",//无法被推出
      "\\niff": "\\mathrel{\\kern13mu\\not\\kern-13mu\\iff}",//不等价
      //5 函数
      "\\arsinh": "\\operatorname{arsinh}",//反双曲正弦函数
      "\\arcosh": "\\operatorname{arcosh}",//反双曲余弦函数
      "\\artanh": "\\operatorname{artanh}",//反双曲正切函数
      "\\arcoth": "\\operatorname{arcoth}",//反双曲余切函数
      //6 特殊
      // "\\pe": "\\kern-0.023em\\boxed{\\uparrow\\downarrow}\\kern-0.023em",//电子对
      // "\\npe": "\\kern-0.023em\\boxed{\\uparrow\\uparrow}\\kern-0.023em",//错误电子对
      // "\\nnpe": "\\kern-0.023em\\boxed{\\downarrow\\downarrow}\\kern-0.023em",//错误电子对
      // "\\se": "\\kern-0.023em\\boxed{\\kern0.25em\\uparrow\\kern0.25em}\\kern-0.023em",//单电子
      // "\\nse": "\\kern-0.023em\\boxed{\\kern0.25em\\downarrow\\kern0.25em}\\kern-0.023em",//单电子
      // "\\oe": "\\kern-0.023em\\boxed{\\kern0.25em\\phantom\\uparrow\\kern0.25em}\\kern-0.023em",//空电子
      "\\ssd": "{\\mathrm{\\degree\\kern-0.2em C}}",//摄氏度
      "\\hsd": "{\\mathrm{\\degree\\kern-0.2em F}}",//华氏度
  },
}
////注意事项
//1 定义前先查表



////正则表达式替换（KaTeX Macros.js ---> LaTeX Newcommand.tex）

//1 替换\\为\
//\\\\
//\

//2 去除开头空格
//^\s+
//

//3 更改注释形式并换行
//,//(.+)
//\n%$1

//4 全面更改注释形式
////
//%

//5 全面调整嵌套注释
//(?<=.)%
//\n%

//6 为宏分区
//(%\d\d|%[2-9])
//\n$1

//7 更改宏命令定义形式及宏形式
//^"(.+?)"
//\\newcommand{$1}

//8 更改宏命令定义形式及宏命令形式
//:\s?"(.+)"
//{$1}

//9 为重定义的宏进行修改
//(newcommand\{\\)(i|empty|circle|d|C|c|Re|Im|le|ge|ng|and|or|vec|bar|degree)(\})
//re$1$2$3

//10 注释BUG并标记
//(\\renewcommand\{\\)(or)(\}.+)
//%$1$2$3\n%BUG

//11 调换注释与宏位置
//^(\\.+)\n(%.+\n%.+\n%.+|%.+)
//$2\n$1



////正则表达式排查BUG（不一定有效）

//1 检查是否有多余的大括号
//\}{3,}$

////正则表达式替换（KaTeX Macros.js ---> macro.md）
//1 去除空格
//^\s+
//

//2 清除注释
////.+
//

//3 清除逗号
//,$
//

//4 \\ -> \
//\\\\
//\

//5 def
//^"
//\\def

//6 具体头部
//":\s"
//{

//7 命令尾部
//"$
//}

//8 去除换行
//\n
//
