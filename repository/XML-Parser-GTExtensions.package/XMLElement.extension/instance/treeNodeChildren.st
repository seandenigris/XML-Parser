*XML-Parser-GTExtensions
treeNodeChildren
	self hasTreeNodeChildren
		ifTrue: [^ self nodes]
		ifFalse: [^ #()]