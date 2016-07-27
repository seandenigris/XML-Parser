enumerating
associationsDo: aBlock
	characterCodeTable doWithIndex: [:each :i | aBlock value: (Character value: i)  -> each]