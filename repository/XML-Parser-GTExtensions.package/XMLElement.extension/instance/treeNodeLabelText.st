*XML-Parser-GTExtensions
treeNodeLabelText
	| writer |

	writer := XMLHighlightingWriter new.
	self hasTreeNodeChildren
		ifTrue: [
			writer startTag
				name: self name;
				setAttributes: attributes]
		ifFalse: [| tagWriter |
			(tagWriter := writer tag)
				name: self name;
				setAttributes: attributes.
			self hasChildren
				ifTrue: [tagWriter with: [self writeInnerXMLOn: writer]]].
	^ writer asHighlightedText.