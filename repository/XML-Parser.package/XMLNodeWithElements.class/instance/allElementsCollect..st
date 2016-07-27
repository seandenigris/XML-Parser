enumerating
allElementsCollect: aBlock
	| collectedElements |

	collectedElements := self nodes copyEmpty.
	self allElementsDo: [:each | collectedElements add: (aBlock value: each)].
	^ collectedElements.