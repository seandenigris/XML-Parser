tokenizing
nextPCDataDelimitedBy: aDelimiter putOn: aStream
	| nextChar referenceString entity entityValue |

	[(nextChar := streamReader peek) isNil or: [nextChar == aDelimiter]]
		whileFalse: [
			nextChar == $&
				ifTrue: [
					streamReader next.
					streamReader peek == $#
						ifTrue: [aStream nextPut: self nextCharReference]
						ifFalse: [
							referenceString := self nextLiteral.
							self expectNext: $;.
							entity := self entity: referenceString.
							entityValue := entity valueForContext: #content.
							(self class isCharEscape: entityValue)
								ifTrue: [aStream nextPut: entityValue first]
								ifFalse: [
									entityValue := entityValue asString.
									entityValue isEmpty
										ifFalse: [
											streamReader pushStream:
												(ReadStream on: entityValue asString)]]]]
				ifFalse: [aStream nextPut: streamReader next]].