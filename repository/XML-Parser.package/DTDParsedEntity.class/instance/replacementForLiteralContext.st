replacement
replacementForLiteralContext
	| aReplacement |

	aReplacement := (String new: self replacement size) writeStream.
	self replacement do: [:each |
		each ==  $"
			ifTrue: [aReplacement nextPutAll: '&#34;']
			ifFalse: [
				each == $'
					ifTrue: [aReplacement nextPutAll: '&#39;']
					ifFalse: [aReplacement nextPut: each]]].
	^ aReplacement contents.