building
applyAlternation
	|  alternationFragment  branchFragment |

	branchFragment := self popFragment.
	alternationFragment := self topFragment.

	branchFragment unconnectedTerminalState
		redirectIncomingTransitionsTo: alternationFragment unconnectedTerminalState.
	branchFragment firstState addTransitionsTo: alternationFragment firstState.
	alternationFragment hasTerminalFirstState:
		(alternationFragment hasTerminalFirstState
			or: [branchFragment hasTerminalFirstState]).