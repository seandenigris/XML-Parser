accessing
listElements
	nodes ifNil: [
		nodes := OrderedCollection new.
		super listElements withIndexDo: [:each :i |
			i even
				ifTrue: [nodes addLast: (XMLElement named: each)]
				ifFalse: [nodes addLast: each asXMLString]].
		nodes := nodes asArray].
	^ nodes copy.