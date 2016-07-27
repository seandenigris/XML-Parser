assertions
assertElement: anElement attributes: aDictionary
	self assert:
		anElement attributes =
			(anElement attributes species newFrom:
				(aDictionary associations collect: [:a | a key asSymbol -> a value]))