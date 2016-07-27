tests
testCR
	| adapter |

	adapter := self newAdapter.
	self
		assert: adapter cr == Character cr;
		assert: adapter contents = (self contentsFromCharacter: Character cr).