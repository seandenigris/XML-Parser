running
createDummySubclassOf: aNodeClass named: aName
	(aNodeClass
		subclass: aName asSymbol
		instanceVariableNames: ''
		classVariableNames: ''
		poolDictionaries: ''
		category: self category)
		comment: 'A dummy subclass of ', aNodeClass name asString