printing
writeXMLOn: aWriter
	| tagWriter |

	tagWriter := aWriter tag: self name.

	self hasNamespaces
		ifTrue: [self writeNamespaceDeclarationsOn: tagWriter].
	self hasAttributes 
		ifTrue: [
			self attributeNodes do: [:each |
				tagWriter attributeAt: each name put: each value]].

	tagWriter with: [self writeInnerXMLOn: aWriter].