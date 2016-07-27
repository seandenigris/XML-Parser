tests
testNewElementNamed
	| element |

	element := self newFactory newElementNamed: 'test'.
	self
		assert: element class == self elementClass;
		assert: element name = 'test'.