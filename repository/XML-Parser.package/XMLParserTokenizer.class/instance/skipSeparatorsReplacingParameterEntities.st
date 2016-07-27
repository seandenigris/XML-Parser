tokenizing - dtd
skipSeparatorsReplacingParameterEntities
	"this can be used to replace references within declarations"

	streamReader skipSeparators.
	context isInExternalSubset
		ifFalse: [^ self].
	[streamReader peek == $%]
		whileTrue: [
			self replaceParameterEntityReference.
			streamReader skipSeparators].