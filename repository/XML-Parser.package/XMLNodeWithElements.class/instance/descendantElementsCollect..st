enumerating
descendantElementsCollect: aBlock
	| collectedObjects |

	collectedObjects := self newListForCollect.
	self descendantElementsDo: [:each |
		collectedObjects addLast: (aBlock value: each)].
	^ collectedObjects.