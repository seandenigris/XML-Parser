notification
notifyOf: aSelector with: aFirstArgument with: aSecondArgument
	observers isArray
		ifTrue: [ 
			observers do: [:each |
				each
					perform: aSelector
					with: aFirstArgument
					with: aSecondArgument]]
		ifFalse: [
			observers ifNotNil: [
				observers
					perform: aSelector
					with: aFirstArgument
					with: aSecondArgument]]