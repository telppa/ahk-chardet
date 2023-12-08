# ahk-chardet
 AutoHotkey character encoding detector. AutoHotkey 字符编码检测器。
# Introduction  
 ahk-chardet is an encoding detector library base on [uchardet v0.0.8](https://gitlab.freedesktop.org/uchardet/uchardet/-/releases/v0.0.8), which takes a sequence of bytes in an unknown character encoding without any additional information, and attempts to determine the encoding of the text. Returned encoding names are iconv-compatible.  
 
 ahk-chardet 是一个基于 [uchardet v0.0.8](https://gitlab.freedesktop.org/uchardet/uchardet/-/releases/v0.0.8) 的编码探测库，可以根据变量或文件内容探测编码（如 UTF-8、GB18030 等）。
# Usage

```AutoHotkey
MsgBox % FileGetCodePageByBom("test\fr\utf-16.be")  ; 1201

MsgBox % FileGetCharset("test\ja\iso-2022-jp.txt")  ; ISO-2022-JP
MsgBox % FileGetCodePage("test\ja\iso-2022-jp.txt") ; 50220

FileRead binary, *c test\ja\iso-2022-jp.txt
MsgBox % VarGetCharset(binary)                      ; ISO-2022-JP
MsgBox % VarGetCodePage(binary)                     ; 50220
ExitApp

#Include Lib\uchardet.ahk
```
