initialization
on: aString
	super on:
		(aString
			copyFrom: (aString indexOf: $()
			to: aString size)