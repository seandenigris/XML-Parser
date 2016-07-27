tests
testPeek
	| adapter |

	adapter := self newStreamAdapter.
	self outputCollection do: [:each |
		self assert: adapter peek = each.
		adapter next].
	self assert: adapter peek isNil.