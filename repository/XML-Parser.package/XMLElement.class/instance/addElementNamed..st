adding
addElementNamed: aName
	| elementPrefix elementClass |

	elementPrefix := aName xmlPrefixBeforeLocalName.
	elementClass :=
		self nodeFactory
			classForElement: aName
			prefix: elementPrefix
			uri: (self resolvePrefix: elementPrefix)
			localName: (aName xmlLocalNameAfterPrefix: elementPrefix).

	"added first to inherit the config and namespaces before setting the name"
	^ (self addNode: elementClass new) name: aName.