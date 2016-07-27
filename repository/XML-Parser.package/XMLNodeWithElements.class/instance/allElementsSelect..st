enumerating
allElementsSelect: aBlock
	| selectedElements |

	selectedElements := self elements copyEmpty.
	self allElementsDo: [:each |
		(aBlock value: each)
			ifTrue: [selectedElements add: each]].
	^ selectedElements.