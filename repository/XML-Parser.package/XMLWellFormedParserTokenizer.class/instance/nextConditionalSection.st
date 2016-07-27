tokenizing - dtd
nextConditionalSection
	"skip ["
	streamReader next.

	writeStream reset.
	self nextConditionalSectionOn: writeStream.
	streamReader pushBack: writeStream contents.