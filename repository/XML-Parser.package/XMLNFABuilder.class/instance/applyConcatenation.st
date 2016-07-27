building
applyConcatenation
	| firstFragment secondFragment |

	secondFragment := self popFragment.
	firstFragment := self popFragment.

	firstFragment
		connectToFragment: secondFragment;
		terminalStates: secondFragment terminalStates.

	self pushFragment: firstFragment.