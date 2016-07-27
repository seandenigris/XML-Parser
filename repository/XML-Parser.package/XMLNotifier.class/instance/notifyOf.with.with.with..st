notification
notifyOf: aSelector with: aFirstArgument with: aSecondArgument with: aThirdArgument
	observers ifNotNil: [
		observers do: [:each |
			each
				perform: aSelector
				with: aFirstArgument
				with: aSecondArgument
				with: aThirdArgument]]