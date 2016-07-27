handling - declarations
startDTD: aRootElementName publicID: aPublicId systemID: aSystemId
	| doctypeDeclaration |

	doctypeDeclaration := 
		self nodeFactory doctypeDeclarationClass
			root: aRootElementName
			publicID: aPublicId
			systemID: aSystemId.
	self pushNode: doctypeDeclaration.
	self document doctypeDeclaration: doctypeDeclaration.