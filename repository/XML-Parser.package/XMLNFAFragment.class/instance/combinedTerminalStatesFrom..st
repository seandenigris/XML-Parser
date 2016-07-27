converting
combinedTerminalStatesFrom: aFragment
	^ terminalStates isArray
		ifTrue: [
			aFragment terminalStates asOrderedCollection
				addAll: terminalStates;
				yourself]
		ifFalse: [
			terminalStates
				addAll: aFragment terminalStates;
				yourself]