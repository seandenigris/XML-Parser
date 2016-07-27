printing
writeXMLOn: aWriter
	| tagWriter |

	tagWriter := aWriter tag: self name.

	self hasNamespaces
		ifTrue: [self writeNamespaceDeclarationsOn: tagWriter].
	self hasAttributes 
		ifTrue: [self writeAttributesOn: tagWriter].

	tagWriter with: [
		self hasChildren
			ifTrue: [self writeInnerXMLOn: aWriter]].