*XML-Parser-GTExtensions
writeTreeNodeLabelXMLOn: aWriter
	aWriter lineBreak: ''. "suppress blank line after doctype"
	aWriter doctype
		root: self root;
		publicID: self publicID;
		systemID: self systemID.