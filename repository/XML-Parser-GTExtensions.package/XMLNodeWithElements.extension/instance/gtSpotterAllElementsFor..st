*XML-Parser-GTExtensions
gtSpotterAllElementsFor: aStep
	<spotterOrder: 40>
	aStep listProcessor
		title: 'All elements';
		allCandidates: [self allElements];
		itemName: #asHighlightedSpotterText;
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true