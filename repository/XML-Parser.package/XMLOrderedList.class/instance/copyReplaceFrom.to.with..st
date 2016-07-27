copying
copyReplaceFrom: aStart to: aStop with: aReplacementCollection
	| newList startIndex stopIndex overlap |

	overlap := 0.
	aStart < 1
		ifTrue: [startIndex := stopIndex := 0]
		ifFalse: [
			aStart > self size
				ifTrue: [startIndex := stopIndex := self size + 1]
				ifFalse: [
					startIndex := aStart.
					stopIndex := (aStop max: aStart) min: self size.
					overlap := stopIndex - startIndex + 1]].

	newList := self species new: self size + aReplacementCollection size - overlap.
	1 to: startIndex - 1 do: [:i | newList addLast: (self at: i)].
	aReplacementCollection do: [:each | newList addLast: each].
	stopIndex + 1 to: self size do: [:i | newList addLast: (self at: i)].

	^ newList.