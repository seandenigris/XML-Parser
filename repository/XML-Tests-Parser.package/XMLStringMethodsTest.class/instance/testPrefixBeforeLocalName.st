tests
testPrefixBeforeLocalName
	self
		assert: 'name' prefixBeforeLocalName = '';
		assert: ':name' prefixBeforeLocalName = '';
		assert: 'prefix:name' prefixBeforeLocalName = 'prefix';
		assert: '::name' prefixBeforeLocalName = ':';
		assert: 'invalid:prefix:name' prefixBeforeLocalName = 'invalid:prefix';
		assert: ':::name' prefixBeforeLocalName = '::';
		assert: ':invalid:prefix:name' prefixBeforeLocalName = ':invalid:prefix'.