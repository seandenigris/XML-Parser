handling tokens
handleXMLVersion: aVersion encoding: anEncoding standalone: aYesOrNo
	| versionNumber standaloneBoolean |

	aVersion
		ifNotEmpty: [versionNumber := aVersion asNumber].

	(#('yes' 'no') includes: aYesOrNo)
		ifTrue: [standaloneBoolean := aYesOrNo = 'yes'].

	self saxHandler
		xmlVersion: versionNumber
		encoding: anEncoding
		standalone: standaloneBoolean