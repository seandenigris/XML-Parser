tests
testMaxSize
	| cache |

	cache := self newCacheWithEntries.
	self assert: cache size = self maxSize.
	cache maxSize: self maxSize + 1.
	self assert: cache size = self maxSize.
	cache maxSize: 0.
	self assert: cache size = 0.