tests
testConfiguration
	| document  |

	document := XMLDOMParser parse: self addressBookXML.
	document allElementsDo: [:each |
		self assert: each configuration == document configuration].

	document root innerXML: self addressBookXML.
	document allElementsDo: [:each |
		self assert: each configuration == document configuration].