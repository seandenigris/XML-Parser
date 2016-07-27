private
addKeyToSequence: aString
	super at: aString ifAbsent: [orderedKeys addLast: aString]