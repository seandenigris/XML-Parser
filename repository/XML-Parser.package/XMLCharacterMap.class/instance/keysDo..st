enumerating
keysDo: aBlock
	characterCodeTable codeIndexesDo: [:each | aBlock value: (Character value: each)]