accessing
descendantNodes
	| descendentNodes |

	descendentNodes := self newListForSelect.
	self descendantNodesDo: [:each | descendentNodes addLast: each].
	^ descendentNodes.