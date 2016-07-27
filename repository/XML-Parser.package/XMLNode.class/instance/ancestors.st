accessing
ancestors
	| ancestors |

	ancestors := self newNodeListForSelect.
	self ancestorsDo: [:each | ancestors addLast: each].
	^ ancestors.