*XML-Parser-GTExtensions
treeLabelText
	| writer |

	writer := XMLHighlightingWriter new.
	(self hasChildren
		ifTrue: [writer startTag]
		ifFalse: [writer tag])
		name: self name;
		setAttributes: attributes;
		write.
	^ writer asHighlightedText.