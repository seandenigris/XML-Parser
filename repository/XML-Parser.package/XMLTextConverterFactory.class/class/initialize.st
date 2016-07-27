class initialization
initialize
	"self initialize"

	super initialize.
	converterClassesByEncodingName := Dictionary new: self maxCachedConverterClasses.