tests
testQualifiedNamePrefix
	self
		assert: 'name' qualifiedNamePrefix = '';
		assert: ':name' qualifiedNamePrefix = '';
		assert: 'prefix:name' qualifiedNamePrefix = 'prefix';
		assert: '::name' qualifiedNamePrefix = ':';
		assert: 'invalid:prefix:name' qualifiedNamePrefix = 'invalid:prefix';
		assert: ':::name' qualifiedNamePrefix = '::';
		assert: ':invalid:prefix:name' qualifiedNamePrefix = ':invalid:prefix'.