tokenizing dtd
nextEntityDeclaration
	| isParameterEntity name  |

	self expectNextAll: 'NTITY'.
	isParameterEntity := false.
	"this is to distinguish a parameter reference from declaration"
	[streamReader skipSeparators.
	streamReader peek == $%]
		whileTrue: [
			streamReader next.
			(streamReader atEnd not and: [streamReader peek isSeparator])
				ifTrue: [
					isParameterEntity
						ifTrue: [self errorExpected: 'parameter entity reference'].
					isParameterEntity := true]
				ifFalse: [self nextParameterEntityReference]].

	name := self nextName.
	self skipSeparatorsReplacingParameterEntities.
	self atQuote
		ifTrue: [
			self
				nextInternalEntityDeclaration: name
				isParameterEntity: isParameterEntity]
		ifFalse: [
			self
				nextExternalEntityDeclaration: name
				isParameterEntity: isParameterEntity].