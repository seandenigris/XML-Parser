lexical
comment: aComment
	self preservesCommentNodes
		ifTrue: [self topNode addNode: (self nodeFactory commentClass string: aComment)]