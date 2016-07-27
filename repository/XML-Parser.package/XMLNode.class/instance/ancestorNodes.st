accessing
ancestorNodes
	| ancestors |

	ancestors := self newNodeListForSelect.
	self ancestorNodesDo: [:each | ancestors addLast: each].
	^ ancestors.