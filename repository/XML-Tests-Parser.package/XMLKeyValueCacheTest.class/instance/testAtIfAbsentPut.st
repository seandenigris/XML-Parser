tests
testAtIfAbsentPut
	| cache |

	cache := self newCacheWithEntries.
	self keysAndValuesDo: [:key :value |
		cache at: key ifAbsentPut: ['newkey'].
		self
			assert: (cache at: key) = value;
			assert: cache size = self maxSize].
	self
		assert: (cache at: 'newkey' ifAbsentPut: ['newvalue']) = 'newvalue';
		assert: (cache at: 'newkey') = 'newvalue';
		assert: cache size = 1.