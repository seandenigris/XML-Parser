tests
testIsXMLDocumentFile
	self hasSupportedImplementation
		ifFalse: [^ self].

	#('atom' 'dbk' 'docm' 'docx' 'pptm' 'pptx' 'rdf' 'rss' 'svg' 'xbel'
		'xfd' 'xfdl' 'xhtml' 'xlsm' 'xlsx' 'xml' 'xsd' 'xspf' 'xul')
		do: [:each |
			self assert:
				('test.', each) asXMLFileHandle isXMLDocumentFile.
			self assert:
				('test.', each asUppercase) asXMLFileHandle isXMLDocumentFile].

	#('txt' 'html' 'jpeg' 'jpg' 'gif' 'dtd' 'ent')
		do: [:each |
			self deny:
				('test.', each) asXMLFileHandle isXMLDocumentFile].