tests
testAtPut
	| cache i |

	cache := self cacheClass maxSize: self maxSize.
	i := 0.
	self keysAndValuesDo: [:key :value |
		self
			assert: (cache at: key put: value) = value;
			assert: (cache at: key) = value.
		i := i + 1.
		self assert: cache size = i].
	self
		assert: (cache at: 'newkey' put: 'newvalue') = 'newvalue';
		assert: (cache at: 'newkey') = 'newvalue';
		assert: cache size = 1.