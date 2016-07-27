assertions
assertDocument: aDocument dtd: aDtd version: aVersion encoding: anEncoding required: aRequired
	self
		assert: aDocument dtd = aDtd;
		assert: aDocument version = aVersion;
		assert: aDocument encoding = anEncoding;
		assert: aDocument requiredMarkup = aRequired