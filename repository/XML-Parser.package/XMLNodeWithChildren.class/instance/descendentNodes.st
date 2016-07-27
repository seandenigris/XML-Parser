accessing
descendentNodes
	| descendentNodes |

	descendentNodes := self newNodeListForSelect.
	self descendentNodesDo: [:each | descendentNodes addLast: each].
	^ descendentNodes.