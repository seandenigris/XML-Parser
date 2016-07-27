accessing
elementAtAny: aNameArray ifAbsent: aBlock
	| answer |

	aNameArray do: [:each |
		(answer := self elementAt: each)
			ifNotNil: [^ answer]].
	^ aBlock value.