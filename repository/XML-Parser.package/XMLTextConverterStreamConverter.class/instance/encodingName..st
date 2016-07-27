accessing
encodingName: anEncodingName
	super encodingName: anEncodingName.
	self textConverter:
		(self class textConverterClassForEncoding: anEncodingName) new.