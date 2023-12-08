; https://www.freedesktop.org/wiki/Software/uchardet/
; https://learn.microsoft.com/en-us/windows/win32/intl/code-page-identifiers

loop Files, test\*, FR
{
	SplitPath A_LoopFileLongPath, , , , OutNameNoExt
	charset := FileGetCharset(A_LoopFileLongPath)
	if (OutNameNoExt != charset)
		MsgBox,
		(LTrim
		%A_LoopFileLongPath%
		
		Actual Charset: `t%OutNameNoExt%
		Detected Charset: `t%charset%
		)
}

loop Files, test\*, FR
{
	SplitPath A_LoopFileLongPath, , , , OutNameNoExt
	charset := FileGetCharset(A_LoopFileLongPath)
	if (OutNameNoExt = charset)
	{
		codepage := FileGetCodePage(A_LoopFileLongPath)
		FileRead OutputVar, *p%codepage% %A_LoopFileLongPath%
		MsgBox,
		(LTrim
		%A_LoopFileLongPath%
		
		Actual Charset: `t%OutNameNoExt%
		Detected Charset: `t%charset%
		FileEncoding: `tCP%codepage%
		
		%OutputVar%
		)
	}
}

#Include Lib\uchardet.ahk