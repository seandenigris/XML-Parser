copying
copyWithQuery: aDictionary
	^ self copy query: (OrderPreservingStringDictionary newFrom: aDictionary)