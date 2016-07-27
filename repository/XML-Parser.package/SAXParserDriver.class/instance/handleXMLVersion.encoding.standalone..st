handling tokens
handleXMLVersion: aVersion encoding: anEncoding standalone: aYesOrNo
	| versionNumber isStandalone |

	versionNumber := Float readFrom: aVersion readStream.
	isStandalone := aYesOrNo = 'yes'.

	self doctypeDefinition isStandalone: isStandalone.

	self saxHandler
		xmlVersion: versionNumber
		encoding: anEncoding
		standalone: isStandalone.