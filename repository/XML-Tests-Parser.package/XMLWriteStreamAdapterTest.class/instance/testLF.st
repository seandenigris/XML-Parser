tests
testLF
	| adapter |

	adapter := self newAdapter.
	self
		assert: adapter lf == Character lf;
		assert: adapter contents = (self contentsFromCharacter: Character lf).