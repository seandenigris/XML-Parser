testing
testSimpleXml
	| parser root |
	parser := OPOpaxHandler on: self simpleXmlSample readStream.
	parser startDocument.
	parser parseDocument.
	root := parser stack first.
	self assert: parser stack size = 1.
	self assert: (root isMemberOf: OPRootElement).
	self assert: root children size = 1.
	self assert: (root children first isMemberOf: OPTest1Element)