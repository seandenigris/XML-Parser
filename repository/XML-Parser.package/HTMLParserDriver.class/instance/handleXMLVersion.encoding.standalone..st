handling tokens
handleXMLVersion: aVersion encoding: anEncoding standalone: aYesOrNo
	self saxHandler
		xmlVersion: (aVersion ifEmpty: '1.0')
		encoding: (anEncoding ifEmpty: 'UTF-8')
		standalone: false