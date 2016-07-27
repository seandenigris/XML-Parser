tests
testUpToEnd
	| adapter |

	adapter := self newAdapter.
	self
		assert: adapter upToEnd = self outputCollection;
		assert: adapter upToEnd isEmpty.