copying
copyReplaceFrom: aStart to: aStop with: aReplacementCollection
	"adapted from OrderedCollection"
	| newList delta startIndex stopIndex |

	delta := 0.
	startIndex := aStart.
	stopIndex := aStop.
	aStart < 1
		ifTrue: [startIndex := stopIndex := 0]
		ifFalse: [startIndex > self size
				ifTrue: [startIndex := stopIndex := self size + 1]
				ifFalse: 
					[(stopIndex < (startIndex - 1) or: [stopIndex > self size])
						ifTrue: [self errorOutOfBounds].
					delta := stopIndex - startIndex + 1]].

	newList := self species new: self size + aReplacementCollection size - delta.
	1 to: startIndex - 1 do: [:index |
		newList add: (self at: index)].
	1 to: aReplacementCollection size do: [:index |
		newList add: (aReplacementCollection at: index)].
	stopIndex + 1 to: self size do: [:index |
		newList add: (self at: index)].

	^ newList.