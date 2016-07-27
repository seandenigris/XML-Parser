printing
writeXMLOn: aWriter
	| tagWriter |

	tagWriter := aWriter tag: self name.
	self hasNamespaces
		ifTrue: [tagWriter setXmlnsDeclarations: self namespaceScope prefixMappings].
	self hasAttributes
		ifTrue: [tagWriter setAttributes: self attributeNodes asDictionary].

	tagWriter with: [
		self hasChildren
			ifTrue: [self writeInnerXMLOn: aWriter]].