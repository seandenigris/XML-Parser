accessing
elementAtAny: aSymbolArray ifAbsent: aBlock
	| answer |

	aSymbolArray do: [:each | (answer := self elementAt: each) ifNotNil: [^ answer]].
	^ aBlock value.