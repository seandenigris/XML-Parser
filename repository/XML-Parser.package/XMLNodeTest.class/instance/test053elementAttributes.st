tests
test053elementAttributes
	| element attrs |

	element := XMLElement new.
	self
		assert: (element attributeAt: 'foo') isEmpty;
		assert: (element attributeAt: 'foo' ifAbsent: ['absent']) = 'absent';
		deny: (element includesAttribute: 'foo').

	self
		assert: (element attributeAt: 'foo' put: 'test') = 'test';
		assert: element hasAttributes;
		assertElement: element attribute: 'foo' is: 'test';
		assert: (element attributeAt: 'bar' ifAbsentPut: ['test2']) = 'test2';
		assertElement: element attribute: 'bar' is: 'test2';
		assert: element attributeNames asArray =  #('foo' 'bar').

	self
		assert: element attributeAssociations asArray =
			(Array with: 'foo'->'test' with: 'bar'->'test2').
	self
		assertElement: element
		attributes:
			(XMLOrderPreservingDictionary
				with: 'foo'->'test'
				with: 'bar'->'test2').

	self
		assert: (element removeAttribute: 'foo') = 'test';
		assert: (element removeAttribute: 'bar') = 'test2';
		deny: element hasAttributes.