tests
testSpace
	| adapter |

	adapter := self newAdapter.
	self
		assert: adapter space == Character space;
		assert: adapter contents = (self contentsFromCharacter: Character space).