tokenizing
nextGeneralEntityReference
	| name entity replacement |

	name := self nextName.
	self expectNext: $;.
	(self predefinedEntities includesKey: name)
		ifTrue: [^ self predefinedEntities at: name].

	replacement := ''.
	(entity := driver handleGeneralEntityReference: name)
		ifNotNil: [
			replacement :=
				(context isInLiteralValue
					ifTrue: [entity replacementForLiteralContext]
					ifFalse: [entity replacementForContentContext])].
	replacement
		ifEmpty: [^ nil].

	context isInContent
		ifTrue: [driver handleStartContentEntityReplacement: name].
	streamReader
		pushStream: replacement readStream
		from: entity uri
		onClose:
			(context isInContent
				ifTrue: [driver handleEndContentEntityReplacement: name]
				ifFalse: [nil]).
	self checkForTextDeclarationInEntity: entity replacement: replacement.

	^ nil.