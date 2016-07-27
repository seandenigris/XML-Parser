tokenizing
removeTrailingSpacesFrom: aString
	| n |

	n := 0.
	aString reverseDo: [:each |
		each isSeparator
			ifTrue: [n := n + 1]
			ifFalse: [^ aString allButLast: n]].
	^ aString.