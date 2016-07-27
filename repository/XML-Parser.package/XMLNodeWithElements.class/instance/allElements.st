accessing
allElements
	| allElements |

	allElements := self newNodeListForSelect.
	self allElementsDo: [:each | allElements addLast: each].
	^ allElements.