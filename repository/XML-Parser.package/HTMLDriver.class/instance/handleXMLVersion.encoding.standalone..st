handling tokens
handleXMLVersion: aVersion encoding: anEncoding standalone: aYesOrNo
	super
		handleXMLVersion: (aVersion ifEmpty: '1.0')
		encoding: (anEncoding ifEmpty: 'UTF-8')
		standalone: 'no'