tests
testHasDefaultStreamConverter
	| adapter |

	adapter := self newAdapter.
	adapter streamConverter class == XMLUTF8StreamConverter
		ifTrue: [self assert: adapter hasDefaultStreamConverter]
		ifFalse: [self deny: adapter hasDefaultStreamConverter]