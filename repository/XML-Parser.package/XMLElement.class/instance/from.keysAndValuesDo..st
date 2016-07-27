private
from: aDictionaryOrArray keysAndValuesDo: aBlock
	aDictionaryOrArray isEmptyOrNil ifTrue: [^ self].

	(aDictionaryOrArray isDictionary
		ifTrue: [aDictionaryOrArray associations]
		ifFalse: [aDictionaryOrArray])
			do: [:association |
				aBlock
					value: association key
					value: association value]