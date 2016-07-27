instance creation
newForEncoding: anEncoding
	^ self new textConverter: (self textConverterForEncoding: anEncoding) new