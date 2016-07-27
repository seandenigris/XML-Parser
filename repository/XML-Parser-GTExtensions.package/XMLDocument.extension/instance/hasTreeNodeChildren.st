*XML-Parser-GTExtensions
hasTreeNodeChildren
	^ self hasChildren
		or: [self hasDoctypeDeclaration]