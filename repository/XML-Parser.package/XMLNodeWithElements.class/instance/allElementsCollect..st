enumerating
allElementsCollect: aBlock
	| collectedElements |

	collectedElements := self nodes copyEmpty.
	self allElementsDo: [:each | collectedElements addLast: (aBlock value: each)].
	^ collectedElements.