tokenizing dtd
nextParameterEntityReference
	| name entity replacement |

	name := self nextName.
	self expectNext: $;.

	replacement := ''.
	(entity := driver handleParameterEntityReference: name)
		ifNotNil: [
			replacement :=
				(context isInLiteralValue
					ifTrue: [entity replacementForLiteralContext]
					ifFalse: [entity replacementForDTDContext])].
	replacement
		ifEmpty: [^ self].
	streamReader
		pushStream: replacement readStream
		from: entity uri
		onClose: nil.
	self checkForTextDeclarationInEntity: entity replacement: replacement.