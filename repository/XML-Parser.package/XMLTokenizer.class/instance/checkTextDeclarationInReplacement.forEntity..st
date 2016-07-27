entity replacement
checkTextDeclarationInReplacement: aReplacement forEntity: anEntity
	(aReplacement beginsWith: '<?xml ')
		ifTrue: [ 
			streamReader next.
			context resetAfter: [
				context enterTextDeclaration.
				self nextPIOrXMLDecl]].