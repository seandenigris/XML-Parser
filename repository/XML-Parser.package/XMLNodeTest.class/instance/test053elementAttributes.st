tests
test053elementAttributes
	| element attrs |

	element := XMLElement new.
	self
		assert: (element at: 'foo') isEmpty;
		assert: (element attributeAt: 'foo') isNil;
		assert: (element at: 'foo' ifAbsent: ['absent']) = 'absent';
		assert: (element attributeAt: 'foo' ifAbsent: ['absent']) = 'absent';
		deny: (element includesAttribute: 'foo').

	self
		assert: (element attributeAt: 'foo' put: 'test') = 'test';
		assert: element hasAttributes;
		assertElement: element attribute: 'foo' is: 'test';
		assert: (element attributeAt: 'bar' put: 'test2') = 'test2';
		assertElement: element attribute: 'bar' is: 'test2';
		assert: (element at: 'baz' put: 'test3') = 'test3';
		assertElement: element attribute: 'baz' is: 'test3';
		assert: element attributeNames asArray =  #('foo' 'bar' 'baz').

	self
		assert: element attributeAssociations asArray =
			(Array with: 'foo'->'test' with: 'bar'->'test2' with: 'baz'->'test3').
	self
		assertElement: element
		attributes:
			(XMLOrderPreservingDictionary
				with: 'foo'->'test'
				with: 'bar'->'test2'
				with: 'baz'->'test3').

	self
		assert: (element removeAttribute: 'foo') = 'test';
		assert: (element removeAttribute: 'bar') = 'test2';
		assert: (element removeAttribute: 'baz') = 'test3';
		deny: element hasAttributes.