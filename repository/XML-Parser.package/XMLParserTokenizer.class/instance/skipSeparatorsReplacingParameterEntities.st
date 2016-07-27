tokenizing - dtd
skipSeparatorsReplacingParameterEntities
	"this can be used to replace references within declarations"

	streamReader skipSeparators.
	context isExternalSubsetContext
		ifFalse: [^ self].
	[streamReader peek == $%]
		whileTrue: [
			self replaceParameterEntityReference.
			streamReader skipSeparators].