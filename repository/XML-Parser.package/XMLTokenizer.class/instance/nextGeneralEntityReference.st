tokenizing
nextGeneralEntityReference
	| name entity replacement |

	name := self nextName.
	self expectNext: $;.
	(PredefinedEntities includesKey: name)
		ifTrue: [
			streamReader pushBack: (PredefinedEntities at: name).
			^ self].

	replacement := ''.
	(entity := driver handleGeneralEntityReference: name)
		ifNotNil: [
			replacement :=
				(context isInLiteralValue
					ifTrue: [entity replacementForLiteralContext]
					ifFalse: [entity replacementForContentContext])].
	replacement
		ifEmpty: [^ self].

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