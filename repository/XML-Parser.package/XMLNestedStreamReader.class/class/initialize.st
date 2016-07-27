class initialization
initialize
	"self initialize"

	CarriageReturn := Character cr.
	LineFeed := Character lf.

	EncodingHandlerTable := Array new: 256.
	0 to: 255 do: [:each |
		EncodingHandlerTable
			at: each + 1
			put: (XMLEncodingDetector handlerForLeadByte: each)]