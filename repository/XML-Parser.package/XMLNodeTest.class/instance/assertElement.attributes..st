assertions
assertElement: anElement attributes: aDictionary
	self assert:
		anElement attributes =
			(IdentityDictionary newFrom:
				(aDictionary associations collect: [:a | a key asSymbol -> a value]))