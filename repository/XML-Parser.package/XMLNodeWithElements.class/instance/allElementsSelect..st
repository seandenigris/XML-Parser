enumerating
allElementsSelect: aBlock
	| selectedElements |

	selectedElements := self newNodeListForSelect.
	self allElementsDo: [:each |
		(aBlock value: each)
			ifTrue: [selectedElements addLast: each]].
	^ selectedElements.