*XML-Parser-GTExtensions
writeTreeNodeLabelXMLOn: aWriter
	self hasTreeNodeChildren
		ifTrue: [
			aWriter startTag
				name: self name;
				setAttributes: attributes]
		ifFalse: [| tagWriter |
			(tagWriter := aWriter tag)
				name: self name;
				setAttributes: attributes.
			self hasChildren
				ifTrue: [tagWriter with: [self writeInnerXMLOn: aWriter]]].