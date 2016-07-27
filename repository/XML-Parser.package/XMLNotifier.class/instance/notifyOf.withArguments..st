notification
notifyOf: aSelector withArguments: anArray
	observers isArray
		ifTrue: [
			observers do: [:each |
				each perform: aSelector withArguments: anArray]]
		ifFalse: [
			observers ifNotNil: [
				observers perform: aSelector withArguments: anArray]]