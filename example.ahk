MsgBox % FileGetCodePageByBom("test\fr\utf-16.be")

MsgBox % FileGetCharset("test\ja\iso-2022-jp.txt")
MsgBox % FileGetCodePage("test\ja\iso-2022-jp.txt")

FileRead binary, *c test\ja\iso-2022-jp.txt
MsgBox % VarGetCharset(binary)
MsgBox % VarGetCodePage(binary)
ExitApp

#Include Lib\uchardet.ahk