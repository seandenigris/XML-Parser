assertions
should: aBlock removeNodes: aNodeCollection from: aParent
	| nodesRemoved |

	self assert: (aNodeCollection allSatisfy: [:each | aParent includesNode: each]).
	(nodesRemoved := aBlock value) isCollection
		ifFalse: [nodesRemoved := Array with: nodesRemoved].

	self
		assert: nodesRemoved asArray = aNodeCollection asArray;
		deny: (nodesRemoved anySatisfy: [:each | aParent includesNode: each])