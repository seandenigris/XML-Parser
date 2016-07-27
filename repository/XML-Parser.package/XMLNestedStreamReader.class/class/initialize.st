class initialization
initialize
	"self initialize"

	super initialize.

	(SeparatorCharacters := BitmapCharacterSet new)
		addAll: Character separators.
	CarriageReturn := Character cr.
	LineFeed := Character lf.