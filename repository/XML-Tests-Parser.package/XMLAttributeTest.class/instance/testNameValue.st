tests
testNameValue
	| attribute |

	attribute := self nodeClass name: 'one' value: 'two'.
	self
		assert: attribute name = 'one';
		assert: attribute value = 'two'