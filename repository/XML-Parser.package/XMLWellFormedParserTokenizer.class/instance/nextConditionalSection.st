tokenizing - dtd
nextConditionalSection
	"skip ["
	streamReader next.

	writeStream reset.
	self nextConditionalSectionOnWriteStream.
	streamReader pushBack: writeStream contents.