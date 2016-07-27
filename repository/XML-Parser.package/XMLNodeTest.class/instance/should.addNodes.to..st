assertions
should: aBlock addNodes: aNodeCollection to: aParent
	| added |

	self deny: (aNodeCollection anySatisfy: [:each | aParent includesNode: each]).
	(added := aBlock value) isCollection
		ifFalse: [added := Array with: added].
	self
		assert: added asArray = aNodeCollection asArray;
		assert: (added allSatisfy: [:each |
			(aParent includesNode: each) and: [each parent = aParent]])