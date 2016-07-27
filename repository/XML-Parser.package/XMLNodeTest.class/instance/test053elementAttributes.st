tests
test053elementAttributes
	| element attrs |

	element := XMLElement new.
	self
		assert: (element attributeAt: #absent ifAbsent: ['absent']) = 'absent';
		assertElement: element attribute: #absent is: ''.
	self
		assert: (element attributeAt: 'foo' put: 'bar') = 'bar';
		assert: element hasAttributes;
		assertElement: element attribute: #foo is: 'bar';
		assert: (element at: 'bar' put: 'foo') = 'foo';
		assertElement: element attribute: 'bar' is: 'foo'.
	self assert:
		element allAttributes asSortedCollection =
			#('bar' 'foo') asSortedCollection.
	self
		assert: (element removeAttribute: #foo) = 'bar';
		deny: (element includesAttribute: #foo).