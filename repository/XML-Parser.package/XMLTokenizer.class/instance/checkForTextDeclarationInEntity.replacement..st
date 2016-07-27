tokenizing dtd
checkForTextDeclarationInEntity: anEntity replacement: aReplacement
	(anEntity isExternal and: [aReplacement notEmpty])
		ifFalse: [^ self].

	(aReplacement beginsWith: '<?xml ')
		ifTrue: [ 
			streamReader next.
			context resetAfter: [
				context enterTextDeclaration.
				self nextPIOrXMLDecl]].