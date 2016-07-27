enumerating
allElementsCollect: aBlock
	| collectedElements |

	collectedElements := self elements copyEmpty.
	self allElementsDo: [:each | collectedElements add: (aBlock value: each)].
	^ collectedElements.