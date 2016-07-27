private
addNewMarkupWriter: aMarkupWriterClass
	| markupWriter |

	markupWriter := aMarkupWriterClass writer: self.

	self activeMarkupWriter
		ifNotNil: [self activeMarkupWriter nextMarkupWriter: markupWriter].

	^ activeMarkupWriter := markupWriter.