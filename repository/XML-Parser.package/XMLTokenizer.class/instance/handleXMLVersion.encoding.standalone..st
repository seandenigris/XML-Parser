handling tokens
handleXMLVersion: aVersion encoding: anEncoding standalone: aYesOrNo
	| versionNumber standaloneBoolean |

	aVersion
		ifEmpty: [versionNumber := nil]
		ifNotEmpty: [versionNumber := aVersion asNumber].

	(aYesOrNo = 'yes' or: [aYesOrNo = 'no'])
		ifTrue: [standaloneBoolean := aYesOrNo = 'yes']
		ifFalse: [standaloneBoolean := nil].

	self saxHandler
		xmlVersion: versionNumber
		encoding: anEncoding
		standalone: standaloneBoolean