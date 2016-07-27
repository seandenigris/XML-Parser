enumerating
descendantElementsSelect: aBlock
	| selectedElements |

	selectedElements := self newListForSelect.
	self descendantElementsDo: [:each |
		(aBlock value: each)
			ifTrue: [selectedElements addLast: each]].
	^ selectedElements.