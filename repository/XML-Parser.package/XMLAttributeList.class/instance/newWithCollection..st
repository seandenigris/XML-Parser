private
newWithCollection: aCollection
	^ self class basicNew
		setCollection: aCollection;
		resetDictionaryFromCollection