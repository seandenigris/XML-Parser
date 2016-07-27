accessing
descendentElements
	| descendentElements |

	descendentElements := self newNodeListForSelect.
	self descendentElementsDo: [:each | descendentElements addLast: each].
	^ descendentElements.