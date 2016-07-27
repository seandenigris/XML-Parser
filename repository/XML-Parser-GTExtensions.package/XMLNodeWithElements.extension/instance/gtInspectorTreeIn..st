*XML-Parser-GTExtensions
gtInspectorTreeIn: composite
	<gtInspectorPresentationOrder: 40>
	^ composite tree
		title: 'Tree';
		display: [ {self} ];
		children: #elements;
		format: #treeNodeLabelText;
		when: [ self hasElements ];
		rootsExpanded