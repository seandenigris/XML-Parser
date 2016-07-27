tests
testSkipTo
	| adapter |

	self outputCollection do: [:each |
		adapter := self newAdapter.
		self
			assert: (adapter skipTo: each);
			assert: adapter upToEnd = (self outputCollection copyAfter: each)].

	adapter := self newAdapter.
	self
		deny: (adapter skipTo: #absent);
		assert: adapter atEnd.