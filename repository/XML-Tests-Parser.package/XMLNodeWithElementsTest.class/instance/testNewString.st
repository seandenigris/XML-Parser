tests
testNewString
	| string |

	string := self nodeClass new newString: 'test'.
	self
		assert: string isStringNode;
		assert: string string = 'test'.