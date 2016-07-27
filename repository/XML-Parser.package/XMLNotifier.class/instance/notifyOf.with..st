notification
notifyOf: aSelector with: anArgument
	observers isArray
		ifTrue: [
			observers do: [:each |
				each perform: aSelector with: anArgument]]
		ifFalse: [
			observers ifNotNil: [
				observers perform: aSelector with: anArgument]]