tests
testAtEnd
	| adapter |

	adapter := self newAdapter.
	self outputCollection size timesRepeat: [
		self deny: adapter atEnd.
		adapter next].
	self assert: adapter atEnd.