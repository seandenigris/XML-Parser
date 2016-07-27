tests
testUpTo
	| adapter |

	self outputCollection do: [:each |
		adapter := self newAdapter.
		self assert:
			(adapter upTo: each) =
				(self outputCollection copyUpTo: each)].

	adapter := self newAdapter.
	self assert: (adapter upTo: #absent) = self outputCollection.