content
documentAttributes: attributeList
	self document version: (attributeList at: 'version' ifAbsent: [nil]).
	self document encoding: (attributeList at: 'encoding' ifAbsent: [nil]).
	self document encoding ifNotNil: [
		(self driver stream class == MultiByteFileStream) | (self driver stream class == MultiByteBinaryOrTextStream) ifTrue: [
			self driver stream converter: (TextConverter defaultConverterClassForEncoding: document encoding)
		]
	].
	self document requiredMarkup: (attributeList at: 'requiredMarkup' ifAbsent: [nil]).
