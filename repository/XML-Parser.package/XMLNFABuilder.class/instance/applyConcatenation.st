building
applyConcatenation
	| firstFragment secondFragment |

	secondFragment := self popFragment.
	firstFragment := self popFragment.

	secondFragment hasTerminalFirstState
		ifTrue: [
			firstFragment unconnectedTerminalState
				copyAndRedirectIncomingTransitionsTo:
					secondFragment unconnectedTerminalState].
	firstFragment unconnectedTerminalState
		redirectIncomingTransitionsTo: secondFragment firstState.
	firstFragment unconnectedTerminalState:
		secondFragment unconnectedTerminalState.

	self pushFragment: firstFragment.