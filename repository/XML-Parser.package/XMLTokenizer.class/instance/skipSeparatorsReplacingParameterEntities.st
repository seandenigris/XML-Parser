tokenizing dtd
skipSeparatorsReplacingParameterEntities
	"this can be used to replace references within declarations"
	[streamReader atEnd not and: [streamReader peek isSeparator]]
		whileTrue: [
			streamReader skipSeparators.
			(context isInExternalSubset and: [streamReader peek == $%])
				ifTrue: [self replaceParameterEntityReference]]