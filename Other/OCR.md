# OCR
图像识别技术

## 安装开源图像识别引擎
Tesseract

### 1. centos7
yum-config-manager --add-repo https://download.opensuse.org/repositories/home:/Alexander_Pozdnyakov/CentOS_7/
sudo rpm --import https://build.opensuse.org/projects/home:Alexander_Pozdnyakov/public_key
yum update
yum search tesseract
yum install tesseract --with-training-tools
yum install tesseract-langpack-deu
yum install tesseract-devel 

tesseract -v  
### 2. Windows  
安装包下载：https://github.com/UB-Mannheim/tesseract/wiki


### 3. 文件安装路径
训练文件目录：
/usr/share/tesseract/4/tessdata

## 使用
1. 查看当前有哪些语言环境  
tesseract --list-langs  


## 训练  
1. 运行jTessBoxEditor工具，把所有图片合成一张.tif格式的图片  
Tools -> merge TIFF -> 选择所有PNG图片 -> 设置tif 文件保存  
tif命名规范：  
[lang].[fontname].exp[num].tif  
其中lang为语言名称，fontname为字体名称，num为序号，可以随便定义  
2. 生成box文件工作  
把 *.tif文件上传到 tesseract 环境  
```
tesseract *.tif {name} batch.nochop makebox
```
生成 *.box 文件  
3. 使用jTessBoxEditor矫正.box文件的错误  
打开jTessBoxEditor点击Box Editor ->Open，打开步骤2中生成的“*.tif”，会自动关联到“*.box”文件，这两文件要求在同一目录下。  
调整完点击“save”保存修改。  
4. 产生特征字符TR *.tr  
把修正后的box文件传回centos7系统中，删除原来在系统中的box文件  
*.tif 和 *.box 需要在同一个目录下
```
tesseract *.tif {name} nobatch box.train
```

5. 产生计算字符集（unicharset）
unicharset_extractor *.box
6. 定义字体特征文件并聚集字符特征  
