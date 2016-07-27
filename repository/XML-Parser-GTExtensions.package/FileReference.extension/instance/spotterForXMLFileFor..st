*XML-Parser-GTExtensions
spotterForXMLFileFor: aStep
	<spotterOrder: 40>

	self isXMLFile
		ifFalse: [^ self].

	aStep listProcessor
		title: 'XML Document';
		allCandidates: [(XMLDOMParser parseFileNamed: self fullName) allElements];
		itemName: #gtDisplayString;
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true