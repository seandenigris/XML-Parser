printing
printXMLOn: aWriter
	| tagWriter |

	(tagWriter := aWriter tag)
		name: self name.
	self hasNamespaces
		ifTrue: [
			tagWriter
				xmlns: self defaultNamespace;
				xmlnsDeclarations: self namespaceScope prefixMappings].
	tagWriter
		attributes: self attributes;
		content: [super printXMLOn: aWriter]