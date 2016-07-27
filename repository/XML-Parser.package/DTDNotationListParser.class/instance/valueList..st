accessing
valueList: aString
	super valueList:
		(aString
			copyFrom: (aString indexOf: $()
			to: aString size)