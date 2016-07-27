tokenizing - dtd
skipSeparatorsReplacingParameterEntities
	"this can be used to replace references within declarations"

	streamReader skipSeparators.
	context isExternalSubsetContext
		ifFalse: [^ self].
	[streamReader peek == $%]
		whileTrue: [
			streamReader next.
			self nextParameterEntityReference.
			streamReader skipSeparators].