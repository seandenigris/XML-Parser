enumerating
allElementsSelect: aBlock
	| selectedElements |

	selectedElements := self nodes copyEmpty.
	self allElementsDo: [:each |
		(aBlock value: each)
			ifTrue: [selectedElements add: each]].
	^ selectedElements.