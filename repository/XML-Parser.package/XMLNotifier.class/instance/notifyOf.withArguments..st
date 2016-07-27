notification
notifyOf: aSelector withArguments: anArray
	observers ifNotNil: [
		observers do: [:each |
			each perform: aSelector withArguments: anArray]]