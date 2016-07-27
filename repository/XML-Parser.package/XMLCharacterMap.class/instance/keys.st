enumerating
keys
	^ Array streamContents: [:stream | self keysDo: [:each | stream nextPut: each]]