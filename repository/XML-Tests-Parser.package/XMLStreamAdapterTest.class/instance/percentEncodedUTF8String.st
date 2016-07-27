accessing
percentEncodedUTF8String
	^ String streamContents: [:stream |
		self encodedUTF8String do: [:each |
			stream nextPutAll: (self percentEncode: each)]]