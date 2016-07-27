comparing
= aCollection
	^ self == aCollection
		or: [self species == aCollection species
			and: [collection = aCollection collection]]