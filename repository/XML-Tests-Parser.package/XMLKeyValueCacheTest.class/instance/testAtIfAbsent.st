tests
testAtIfAbsent
	| cache |

	cache := self newCacheWithEntries.
	self keysAndValuesDo: [:key :value |
		self assert: (cache at: key ifAbsent: ['absent']) = value].
	self assert: (cache at: 'newkey' ifAbsent: ['absent']) = 'absent'.