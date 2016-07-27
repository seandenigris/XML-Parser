tests
testAtBeginning
	| adapter |

	adapter := self newAdapter.
	self assert: adapter atBeginning.
	self inputCollection do: [:each |
		adapter nextPut: each.
		self deny: adapter atBeginning].
	adapter reset.
	self assert: adapter atBeginning.