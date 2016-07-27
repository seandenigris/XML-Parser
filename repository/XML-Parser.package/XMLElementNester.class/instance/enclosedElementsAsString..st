printing
enclosedElementsAsString: anElement
	^ String streamContents: [:stream |
		self
			printFrom: (self openElements lastIndexOf: anElement) + 1
			on: stream]