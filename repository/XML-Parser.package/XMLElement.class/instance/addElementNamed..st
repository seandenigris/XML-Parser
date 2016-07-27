adding
addElementNamed: aName
	| elementPrefix elementClass |

	elementPrefix := aName prefixBeforeLocalName.
	elementClass :=
		self nodeFactory
			classForElement: aName
			prefix: elementPrefix
			uri: (self resolvePrefix: elementPrefix)
			localName: (aName localNameAfterPrefix: elementPrefix).

	"added first to inherit the config and namespaces before setting the name"
	^ (self addNode: elementClass new) name: aName.