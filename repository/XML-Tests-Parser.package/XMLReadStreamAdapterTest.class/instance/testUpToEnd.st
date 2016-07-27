tests
testUpToEnd
	| adapter |

	adapter := self newStreamAdapter.
	self
		assert: adapter upToEnd = self outputCollection;
		assert: adapter upToEnd isEmpty.