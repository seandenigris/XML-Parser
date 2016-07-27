accessing
elementAtAny: aStringArray ifAbsent: aBlock
	| answer |

	aStringArray do: [:each | (answer := self elementAt: each) ifNotNil: [^ answer]].
	^ aBlock value.