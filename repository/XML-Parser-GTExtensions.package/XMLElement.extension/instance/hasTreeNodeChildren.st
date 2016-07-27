*XML-Parser-GTExtensions
hasTreeNodeChildren
	^ self hasChildren
		and: [self nodes size > 1
			or: [self nodes first isStringNode not]]