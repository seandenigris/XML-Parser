enumerating
bytesFrom: aCharacterCode do: aBlock lastByte: aSecondBlock
	aBlock value: ((aCharacterCode bitAnd: 16rFF000000) bitShift: -24) + 1.
	aBlock value: ((aCharacterCode bitAnd: 16r00FF0000) bitShift: -16) + 1.
	aBlock value: ((aCharacterCode bitAnd: 16r0000FF00) bitShift: -8) + 1.
	aSecondBlock value: (aCharacterCode bitAnd: 16r000000FF) + 1.