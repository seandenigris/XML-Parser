tests
testIsNamed
	| attribute |

	(attribute := self nodeClass new) name: 'one'.
	self
		assert: (attribute isNamed: 'one');
		deny: (attribute isNamed: 'two').
	attribute name: 'one:two'.
	self
		assert: (attribute isNamed: 'one:two');
		assert: (attribute isNamed: 'two');
		deny: (attribute isNamed: 'one').