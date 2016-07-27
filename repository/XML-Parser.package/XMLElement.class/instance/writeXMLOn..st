printing
writeXMLOn: aWriter
	| tagWriter |

	tagWriter := aWriter tag: self name.
	self hasNamespaces
		ifTrue: [tagWriter setXMLNSDeclarations: self namespaceScope prefixMappings].
	self hasAttributes
		ifTrue: [tagWriter setAttributes: self attributeNodes].

	tagWriter with: [
		self hasChildren
			ifTrue: [self writeInnerXMLOn: aWriter]].