tests
testQualifiedNameLocalPart
	self
		assert: 'name' qualifiedNameLocalPart = 'name';
		assert: ':name' qualifiedNameLocalPart = ':name';
		assert: 'prefix:name' qualifiedNameLocalPart = 'name';
		assert: '::name' qualifiedNameLocalPart = 'name';
		assert: 'invalid:prefix:name' qualifiedNameLocalPart = 'name';
		assert: ':::name' qualifiedNameLocalPart = 'name';
		assert: ':invalid:prefix:name' qualifiedNameLocalPart = 'name'.