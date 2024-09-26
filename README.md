# MD5

## 介紹

Swift MD5 套件

支持 String, Int, Float, Double, Date 快速轉換成 md5 字串

## SPM安裝

- Package.swift 的 dependencies 增加

```
.package(url: "https://github.com/coollazy/MD5.git", from: "1.1.0"),
```

- target 的 dependencies 增加

```
.product(name: "MD5", package: "MD5"),
```

## 範例

- String 轉成 MD5

```
"String".md5 // 把字串 String 轉換成 MD5 全小寫字串
"String".MD5 // 把字串 String 轉換成 MD5 全大寫字串
```

- Int 轉成 MD5

```
Int(100).md5 // 把數字 100 轉換成字串 "100" 再轉換成 MD5 全小寫字串
Int(100).MD5 // 把數字 100 轉換成字串 "100" 再轉換成 MD5 全大寫字串
```

- Float 轉成 MD5

```
Float(100).md5 // 把數字 100.001 轉換成字串 "100.001" 再轉換成 MD5 全小寫字串
Float(100).MD5 // 把數字 100.001 轉換成字串 "100.001" 再轉換成 MD5 全大寫字串
```

- Double 轉成 MD5

```
Double(100).md5 // 把數字 100.001 轉換成字串 "100.001" 再轉換成 MD5 全小寫字串
Double(100).MD5 // 把數字 100.001 轉換成字串 "100.001" 再轉換成 MD5 全大寫字串
```

- Date 轉成 MD5 

```
Date().md5 // 把今天日期 轉換成 timeIntervalSince1970 的字串 再轉換成 MD5 全小寫字串
Date().MD5 // 把今天日期 轉換成 timeIntervalSince1970 的字串 再轉換成 MD5 全大寫字串
```


