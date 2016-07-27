class initialization
initialize
	"self initialize"

	StreamDecoderCache := XMLKeyValueCache maxSize: 128.
	PreferredStreamDecoders := IdentitySet newFrom: XMLUTFStreamDecoder allSubclasses.