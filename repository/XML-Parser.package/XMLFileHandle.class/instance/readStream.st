reading
readStream
	"returns a file read stream with decoding"

	| decodingReadStreamAdapter |
	
	decodingReadStreamAdapter :=
		XMLDecodingReadStreamAdapter on: self rawReadStream.
	(XMLFileStreamEncodingDetector on: decodingReadStreamAdapter)
			detectCurrentEncoding.
	^ decodingReadStreamAdapter.