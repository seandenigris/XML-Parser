printing
writeXMLWith: aWriter
	| tagWriter |

	(tagWriter := aWriter tag)
		name: self name.

	self hasNamespaces
		ifTrue: [self printNamespaceDeclarationsOn: tagWriter].

	tagWriter
		attributes: self attributes;
		with: [self writeInnerXMLWith: aWriter].