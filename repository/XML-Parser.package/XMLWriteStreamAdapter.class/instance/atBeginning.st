testing
atBeginning
	"overridden in the GS version to use Stream>>atBeginning because
	not all streams are 0-based on GS"

	^ stream position = 0