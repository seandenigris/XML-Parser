building
applyPlus
	| plusFragment |

	plusFragment := self topFragment.
	plusFragment unconnectedTerminalState
		copyAndRedirectIncomingTransitionsTo: plusFragment firstState.