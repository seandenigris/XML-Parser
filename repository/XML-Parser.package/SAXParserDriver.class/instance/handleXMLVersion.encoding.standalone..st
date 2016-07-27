handling tokens
handleXMLVersion: aVersion encoding: anEncoding standalone: aYesOrNo
	| versionNumber standaloneBoolean |

	aVersion ifNotEmpty: [versionNumber := aVersion asNumber].
	standaloneBoolean := aYesOrNo = 'yes'.

	self dtd isStandalone: standaloneBoolean.

	self saxHandler
		xmlVersion: versionNumber
		encoding: anEncoding
		standalone: standaloneBoolean