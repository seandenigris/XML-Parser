tokenizing - dtd
skipSeparatorsReplacingParameterEntities
	"this can be used to replace references within declarations"

	streamReader skipSeparators.
	[streamReader atEnd not
		and: [context isInExternalSubset
			and: [streamReader peek == $%]]]
		whileTrue: [
			self replaceParameterEntityReference.
			streamReader skipSeparators].