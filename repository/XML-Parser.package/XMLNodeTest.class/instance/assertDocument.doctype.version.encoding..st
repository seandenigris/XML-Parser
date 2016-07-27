assertions
assertDocument: aDocument doctype: aDoctype version: aVersion encoding: anEncoding
	self
		assert: aDocument doctypeDeclaration = aDoctype;
		assert: aDocument version = aVersion;
		assert: aDocument encoding = anEncoding