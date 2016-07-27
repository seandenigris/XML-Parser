instance creation
newNodeWithElements
	^ super newNodeWithElements
		doctypeDeclaration: XMLDoctypeDeclaration new;
		yourself