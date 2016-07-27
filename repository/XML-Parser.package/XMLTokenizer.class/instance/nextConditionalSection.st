tokenizing - dtd
nextConditionalSection
	"skip ["
	streamReader next.

	streamWriter writeWith: [:writeStream |
		self nextConditionalSectionOn: writeStream.
		streamReader pushBack: writeStream contents].