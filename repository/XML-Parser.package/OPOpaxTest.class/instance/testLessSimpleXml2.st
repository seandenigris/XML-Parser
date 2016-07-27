testing
testLessSimpleXml2

	| rootElement xmlDocument root test1RootElement |
	root := XMLDOMParser parseDocumentFrom: self lessSimpleXmlSample readStream.

	self assert: (root isMemberOf:  XMLDocument ).
	self assert: root elements size = 1.
	
	test1RootElement := root children first.
	
	self assert: (test1RootElement isMemberOf: XMLElement).
	self assert: test1RootElement tag = 'Test1'.
	self assert: test1RootElement children size = 2.
	self assert: (test1RootElement children first isMemberOf: OPTest1Element).
	self assert: (test1RootElement children last isMemberOf: OPTest2Element).
	self assert: test1RootElement children first tag = 'Test1'.
	self assert: test1RootElement children last tag = 'Test2'.
	self assert: root allChildren size = 4