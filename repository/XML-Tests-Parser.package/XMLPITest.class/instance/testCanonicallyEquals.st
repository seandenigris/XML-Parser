tests
testCanonicallyEquals
	super testCanonicallyEquals.
	self assert:
		((self nodeClass target: 'one' data: 'two')
			canonicallyEquals: (self nodeClass target: 'one' data: 'two')).
	self deny: ((self nodeClass target: 'one' data: 'two') canonicallyEquals: self nodeClass new).