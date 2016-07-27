testing
testOPOpaxDriverTestClass

	| parser root |
	
	parser := OPOpaxHandlerTestClass on: self simpleXmlSample readStream.
	parser startDocument.
	parser parseDocument.


	self assert: (parser cStackGet = 0).
	self assert: (parser cStackSet = 0).
	self assert: (parser cStartDocument > 0).
	self assert: (parser cEndDocument > 0).
	self assert: (parser cEndElement > 0).
	self assert: (parser cStartElement > 0).
	self assert: (parser cChar = 0).


	root := parser stack first.
	
	self assert: (parser stack size = 1).
	self assert: (root isMemberOf: OPRootElement).
	self assert: (root children size = 1).
	self assert: (root children first isMemberOf: OPTest1Element).
	