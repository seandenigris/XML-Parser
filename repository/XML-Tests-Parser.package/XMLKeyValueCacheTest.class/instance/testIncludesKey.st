tests
testIncludesKey
	| cache |

	cache := self newCacheWithEntries.
	self keysAndValuesDo: [:key :value | self assert: (cache includesKey: key)].
	self deny: (cache includesKey: 'newkey').