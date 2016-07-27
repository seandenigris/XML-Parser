accessing
elementAt: aString
	^ self elementAt: aString ifAbsent: [nil]