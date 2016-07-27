building
firstStateOfAcceptingNFA
	| firstFragment |

	[self totalFragments > 1]
		whileTrue: [self applyConcatenation].

	firstFragment := self popFragment.
	firstFragment connectToState: XMLNFAAcceptingState new.

	^ firstFragment firstState.