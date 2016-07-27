enumerating
descendentElementsSelect: aBlock
	| selectedElements |

	selectedElements := self newNodeListForSelect.
	self descendentElementsDo: [:each |
		(aBlock value: each)
			ifTrue: [selectedElements addLast: each]].
	^ selectedElements.