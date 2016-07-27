notification
notifyOf: aSelector with: anArgument
	observers ifNotNil: [
		observers do: [:each |
			each perform: aSelector with: anArgument]]