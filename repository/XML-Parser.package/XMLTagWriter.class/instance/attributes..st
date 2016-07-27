accessing
attributes: aDictionaryOrArray
	aDictionaryOrArray associationsDo: [:each | self attributes add: each]