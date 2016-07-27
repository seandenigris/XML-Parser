accessing
attributeAssociations
	^ Array
		with: 'one' -> 'two'
		with: 'three' -> 'four'
		with: 'prefix:three' -> 'five'
		with: 'prefix:six' -> 'seven'