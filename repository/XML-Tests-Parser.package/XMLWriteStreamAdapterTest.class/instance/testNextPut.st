tests
testNextPut
	| adapter |

	adapter := self newAdapter.
	self inputCollection do: [:each |
		self assert: (adapter nextPut: each) == each].
	self assert: adapter contents = self outputCollection.