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
		ifNotEmpty: [
			self
				pushBackReplacement: replacement
				forEntity: entity
				onClose: nil].