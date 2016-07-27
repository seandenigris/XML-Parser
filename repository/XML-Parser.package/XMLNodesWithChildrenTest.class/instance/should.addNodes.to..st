assertions
should: aBlock addNodes: aNodeCollection to: aParent
	| nodesAdded |

	self deny: (aNodeCollection anySatisfy: [:each | aParent includesNode: each]).
	(nodesAdded := aBlock value) isCollection
		ifFalse: [nodesAdded := Array with: nodesAdded].
	self
		assert: nodesAdded asArray = aNodeCollection asArray;
		assert:
			(nodesAdded allSatisfy: [:each |
				(aParent includesNode: each) and: [each parent == aParent]])