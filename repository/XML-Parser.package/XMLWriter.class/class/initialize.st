class initialization
initialize
	"self initialize"

	(CharacterEscapes := CharacterMap new)
		at: $& put: '&amp;';
		at: $" put: '&quot;';
		at: $< put: '&lt;';
		at: $> put: '&gt;'.

	CarriageReturn := Character cr.
	LineFeed := Character lf.

	(SpecialCharacters := CharacterSet new)
		addAll: CharacterEscapes keys;
		add: CarriageReturn;
		add: LineFeed.