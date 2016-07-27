tokenizing - dtd
nextSubsetMarkupToken
	| parameterEntity |

	self expectNext: $<.
	parameterEntity := self topPushedBackEntity.

	streamReader peek == $?
		ifTrue: [self nextPI]
		ifFalse: [
			self expectNext: $!.
			streamReader peek == $-
				ifTrue: [self nextComment]
				ifFalse: [
					streamReader peek == $[
						ifTrue: [
							self isInExternalSubsetOrExternallyDefinedEntity
								ifFalse: [self errorInternalSubsetConditionalSection].
							self nextConditionalSectionFromEntity: parameterEntity]
						ifFalse: [self nextSubsetDeclaration]]].

	self checkNestingOfParameterEntity: parameterEntity.