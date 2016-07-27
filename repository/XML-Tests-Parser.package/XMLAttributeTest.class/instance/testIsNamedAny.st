tests
testIsNamedAny
	| attribute |

	(attribute := self nodeClass new) name: 'one'.
	self
		assert: (attribute isNamedAny: #('two' 'one' 'three'));
		deny: (attribute isNamedAny: #('two' 'three')).
	attribute name: 'one:two'.
	self
		assert: (attribute isNamedAny: #('one' 'one:two' 'three'));
		assert: (attribute isNamedAny: #('one' 'two' 'three'));
		deny: (attribute isNamedAny: #('one' 'three')).