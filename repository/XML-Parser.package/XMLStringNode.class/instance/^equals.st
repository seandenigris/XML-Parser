comparing
= anObject

	^ (anObject respondsTo: #string)
		and: [self string = anObject string]