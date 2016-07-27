tests
testPrefix
	| element |

	element := self nodeClass new.
	self assert: element prefix isEmpty.

	element name: 'one'.
	self assert: element prefix isEmpty.

	element declarePrefix: 'prefix' uri: 'prefixNS'.
	element name: 'prefix:two'.
	self assert: element prefix = 'prefix'.

	element name: 'three'.
	self assert: element prefix isEmpty.