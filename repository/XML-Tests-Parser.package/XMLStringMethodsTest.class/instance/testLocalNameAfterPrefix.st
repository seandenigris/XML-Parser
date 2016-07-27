tests
testLocalNameAfterPrefix
	self
		assert: 'name' localNameAfterPrefix = 'name';
		assert: ':name' localNameAfterPrefix = ':name';
		assert: 'prefix:name' localNameAfterPrefix = 'name';
		assert: '::name' localNameAfterPrefix = 'name';
		assert: 'invalid:prefix:name' localNameAfterPrefix = 'name';
		assert: ':::name' localNameAfterPrefix = 'name';
		assert: ':invalid:prefix:name' localNameAfterPrefix = 'name'.