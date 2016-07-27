assertions
should: aBlock removeNodes: aNodeCollection from: aParent
	| removed |

	self assert: (aNodeCollection allSatisfy: [:each | aParent includesNode: each]).
	(removed := aBlock value) isCollection
		ifFalse: [removed := Array with: removed].

	self
		assert: removed asArray = aNodeCollection asArray;
		deny: (removed anySatisfy: [:each | aParent includesNode: each])