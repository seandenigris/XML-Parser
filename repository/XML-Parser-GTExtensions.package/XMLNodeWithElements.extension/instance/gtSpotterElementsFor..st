*XML-Parser-GTExtensions
gtSpotterElementsFor: aStep
	<spotterOrder: 40>
	aStep listProcessor
		title: 'All elements';
		allCandidates: [ self allElements ];
		itemName: [ :element | element gtDisplayString ];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true