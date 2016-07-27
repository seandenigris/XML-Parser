tokenizing dtd
nextEntityDeclaration
	| isParameterEntity name  |

	self expectNextAll: 'NTITY'.

	"this is to distinguish a parameter reference from declaration"
	isParameterEntity := false.
	[streamReader skipSeparators.
	streamReader peek == $% and: [isParameterEntity not]]
		whileTrue: [
			streamReader next.
			(context isInExternalSubset
				and: [streamReader atEnd not
					and: [streamReader peek isSeparator not]])
				ifTrue: [self nextParameterEntityReference]
				ifFalse: [isParameterEntity := true]].

	self skipSeparatorsReplacingParameterEntities.
	name := self nextName.
	self skipSeparatorsReplacingParameterEntities.
	streamReader atQuote
		ifTrue: [
			self
				nextInternalEntityDeclaration: name
				isParameterEntity: isParameterEntity]
		ifFalse: [
			self
				nextExternalEntityDeclaration: name
				isParameterEntity: isParameterEntity].