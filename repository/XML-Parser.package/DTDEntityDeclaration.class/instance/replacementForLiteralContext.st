replacement
replacementForLiteralContext
	| aReplacement |

	aReplacement := (String new: self replacement size) writeStream.
	self replacement do: [:each |
		(LiteralEscapes includesKey: each)
			ifTrue: [aReplacement nextPutAll: (LiteralEscapes at: each)]
			ifFalse: [aReplacement nextPut: each]].
	^ aReplacement contents.