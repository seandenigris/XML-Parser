*XML-Parser-GTExtensions
treeNodeChildren
	self hasDoctypeDeclaration
		ifTrue: [^ self nodes copyWithFirst: self doctypeDeclaration]
		ifFalse: [^ self nodes]