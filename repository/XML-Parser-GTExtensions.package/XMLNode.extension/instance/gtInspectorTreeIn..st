*XML-Parser-GTExtensions
gtInspectorTreeIn: composite
	<gtInspectorPresentationOrder: 8>
	^ composite tree
		title: 'Tree';
		display: [ {self} ];
		children: #treeNodeChildren;
		format: #treeNodeLabelText;
		when: [self hasTreeNodeChildren];
		rootsExpanded