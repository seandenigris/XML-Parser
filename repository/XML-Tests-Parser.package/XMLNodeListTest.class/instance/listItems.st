accessing
listItems
	nodes ifNil: [
		nodes := OrderedCollection new.
		super listItems withIndexDo: [:each :i |
			i even
				ifTrue: [nodes addLast: (XMLElement named: each)]
				ifFalse: [nodes addLast: each asXMLString]].
		nodes := nodes asArray].
	^ nodes copy.