tests
testStringCreation
	| factory document string |

	factory := self newFactory.
	document := factory newDocument.
	string := document newString: 'test'.
	self
		assert: string class == self stringClass;
		assert: string string = 'test'.