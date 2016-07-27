tests
testHasPrefixBeforeLocalName
	self
		deny: 'name' hasPrefixBeforeLocalName;
		deny: ':name' hasPrefixBeforeLocalName;
		assert: 'prefix:name' hasPrefixBeforeLocalName;
		assert: '::name' hasPrefixBeforeLocalName;
		assert: 'invalid:prefix:name' hasPrefixBeforeLocalName;
		assert: ':::name' hasPrefixBeforeLocalName;
		assert: ':invalid:prefix:name' hasPrefixBeforeLocalName.