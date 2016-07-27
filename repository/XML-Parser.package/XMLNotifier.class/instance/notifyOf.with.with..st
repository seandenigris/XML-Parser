notification
notifyOf: aSelector with: aFirstArgument with: aSecondArgument
	observers ifNotNil: [
		observers do: [:each |
			each
				perform: aSelector
				with: aFirstArgument
				with: aSecondArgument]]