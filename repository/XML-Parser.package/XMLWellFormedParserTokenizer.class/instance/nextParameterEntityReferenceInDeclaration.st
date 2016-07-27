tokenizing - dtd
nextParameterEntityReferenceInDeclaration
	| name |

	name := self nextName.
	self isInExternalSubsetOrExternallyDefinedEntity
		ifFalse: [self errorInternalDeclarationParameterEntityReference: name].
	self expectNext: $;.
	(driver handleParameterEntityReference: name)
		ifNotNil: [:entity | entity constructReplacementOn: self].