accessing
descendantElements
	| descendentElements |

	descendentElements := self newListForSelect.
	self descendantElementsDo: [:each | descendentElements addLast: each].
	^ descendentElements.