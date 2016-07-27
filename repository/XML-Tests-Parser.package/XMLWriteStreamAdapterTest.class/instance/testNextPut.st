tests
testNextPut
	| adapter |

	adapter := self newStreamAdapter.
	self inputCollection do: [:each |
		self assert: (adapter nextPut: each) == each].
	self assert: adapter contents = self outputCollection.