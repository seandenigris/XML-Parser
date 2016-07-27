*XML-Parser-GTExtensions
gtInspectorTreeIn: composite
	<gtInspectorPresentationOrder: 40>
	^ composite tree 
		title: 'Tree';
		display: [ { self } ];
		children: #elements;
		format: #gtDisplayString;
		when: [self hasElements];
		rootsExpanded