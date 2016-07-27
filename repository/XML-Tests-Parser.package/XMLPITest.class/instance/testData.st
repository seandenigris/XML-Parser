tests
testData
	| pi |

	pi := self nodeClass new.
	self assert: pi data isEmpty.
	pi data: 'test'.
	self assert: pi data = 'test'.