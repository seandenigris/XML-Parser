enumerating
keysAndValuesDo: aTwoArgumentBlock
	characterCodeTable doWithIndex: [:each :i | aTwoArgumentBlock value: (Character value: i) value: each]