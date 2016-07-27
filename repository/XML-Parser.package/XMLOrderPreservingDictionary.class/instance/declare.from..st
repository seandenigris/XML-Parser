adding
declare: aKey from: aDictionary
	self addOrderedKeyIfAbsent: aKey.
	dictionary declare: aKey from: aDictionary.