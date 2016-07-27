tests
testNextPutAll
	| adapter |

	adapter := self newAdapter.
	self
		assert: (adapter nextPutAll: self inputCollection) = self inputCollection;
		assert: adapter contents = self outputCollection.