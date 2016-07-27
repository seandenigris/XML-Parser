building
buildNFAFromFragments
	| firstFragment |

	[self totalFragments > 1]
		whileTrue: [self applyConcatenation].

	firstFragment := self popFragment.
	firstFragment hasTerminalFirstState
		ifTrue: [firstFragment firstState isAccepting: true].
	firstFragment unconnectedTerminalState isAccepting: true.

	^ firstFragment firstState.