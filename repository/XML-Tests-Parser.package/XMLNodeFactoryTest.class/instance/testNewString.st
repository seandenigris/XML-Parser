tests
testNewString
	| factory document string |

	factory := self newFactory.
	(document := factory newDocument)
		nodeFactory: factory.
	string := document newString: 'test'.
	self
		assert: string class == self stringClass;
		assert: string string = 'test'.