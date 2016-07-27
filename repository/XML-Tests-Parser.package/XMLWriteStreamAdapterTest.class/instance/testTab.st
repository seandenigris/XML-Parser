tests
testTab
	| adapter |

	adapter := self newAdapter.
	self
		assert: adapter tab == Character tab;
		assert: adapter contents = (self contentsFromCharacter: Character tab).