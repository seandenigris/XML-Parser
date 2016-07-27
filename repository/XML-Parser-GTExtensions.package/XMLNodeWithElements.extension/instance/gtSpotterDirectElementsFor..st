*XML-Parser-GTExtensions
gtSpotterDirectElementsFor: aStep
	<spotterOrder: 40>
	aStep listProcessor
		title: 'Direct elements';
		allCandidates: [ self elements ];
		itemName: [ :element | element gtDisplayString ];
		filter: GTFilterSubstring;
		wantsToDisplayOnEmptyQuery: true