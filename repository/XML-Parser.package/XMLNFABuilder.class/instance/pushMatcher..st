building
pushMatcher: aMatcher
	| firstState transition terminalState |

	terminalState := XMLNFAState new.
	transition :=
		XMLNFATransition
			matcher: aMatcher
			nextState: terminalState.
	firstState := XMLNFAState transition: transition.

	self pushFragment:
		(XMLNFAFragment
			firstState: firstState
			terminalState: terminalState).