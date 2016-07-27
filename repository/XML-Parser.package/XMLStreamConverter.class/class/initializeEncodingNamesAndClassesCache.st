class initialization
initializeEncodingNamesAndClassesCache
	"a class var because it should be shared by all subclasses"
	EncodingNamesAndClassesCache := XMLKeyValueCache maxSize: 128