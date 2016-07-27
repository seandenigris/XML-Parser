comparing
equalTo: aNodeWithElements
	^ (aNodeWithElements respondsTo: #asString)
		and: [self asString = aNodeWithElements asString]