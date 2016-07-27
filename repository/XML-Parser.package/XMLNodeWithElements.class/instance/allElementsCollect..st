enumerating
allElementsCollect: aBlock
	| collectedElements |

	collectedElements := self newNodeListForCollect.
	self allElementsDo: [:each | collectedElements addLast: (aBlock value: each)].
	^ collectedElements.