accessing
values
	^ Array streamContents: [:stream | self valuesDo: [:each | stream nextPut: each]]