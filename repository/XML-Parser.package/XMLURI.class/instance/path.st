accessing
path
	self hasPath
		ifTrue: [| writeStream |
			writeStream := (String new: self rawPathSegments size * 10) writeStream.
			self rawPathSegments
				do: [:each | writeStream nextPutAll: (self percentDecoded: each)]
				separatedBy: [writeStream nextPut: $/].
			^ writeStream contents]
		ifFalse: [^ '']