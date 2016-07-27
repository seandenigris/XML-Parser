tests
testCDataCreation
	| factory document cdata |

	factory := self newFactory.
	(document := factory newDocument)
		nodeFactory: factory.
	cdata := document newCData: 'test'.
	self
		assert: cdata class == self cdataClass;
		assert: cdata string = 'test'.