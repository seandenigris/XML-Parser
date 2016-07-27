accessing
ancestorElements
	| ancestorElements |

	ancestorElements := self newNodeListForSelect.
	self ancestorElementsDo: [:each | ancestorElements addLast: each].
	^ ancestorElements.