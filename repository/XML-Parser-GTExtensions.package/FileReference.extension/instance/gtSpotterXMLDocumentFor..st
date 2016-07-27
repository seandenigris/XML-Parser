*XML-Parser-GTExtensions
gtSpotterXMLDocumentFor: aStep
	<spotterOrder: 40>
	self extension = 'xml' ifFalse: [ ^ self ].
	aStep listProcessor
		title: 'XML document';
		allCandidates: [ (XMLDOMParser parse: self) allElements ];
		itemName: #gtDisplayString;
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true