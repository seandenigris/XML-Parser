notification
notifyOf: aSelector with: aFirstArgument with: aSecondArgument with: aThirdArgument
	observers isArray
		ifTrue: [
			observers do: [:each |
				each
					perform: aSelector
					with: aFirstArgument
					with: aSecondArgument
					with: aThirdArgument]]
		ifFalse: [
			observers ifNotNil: [
				observers
					perform: aSelector
					with: aFirstArgument
					with: aSecondArgument
					with: aThirdArgument]]