testing
testCreation
	self assert: ((OPGenericElement newElementWithTag: 'test1') isMemberOf: OPTest1Element).
	self assert: ((OPGenericElement newElementWithTag: 'anotherTest1') isMemberOf: OPTest1Element).
	self assert: ((OPGenericElement newElementWithTag: 'some random string') isMemberOf: OPGenericElement)