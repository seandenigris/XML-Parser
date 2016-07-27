instance creation
for: aDecodingReadStreamAdapter
	^ (super for: aDecodingReadStreamAdapter stream)
		decodingReadStreamAdapter: aDecodingReadStreamAdapter