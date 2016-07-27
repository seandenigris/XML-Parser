tests
testNewString
	| string |

	string := self newFactory newString: 'test'.
	self
		assert: string class == self stringClass;
		assert: string string = 'test'.