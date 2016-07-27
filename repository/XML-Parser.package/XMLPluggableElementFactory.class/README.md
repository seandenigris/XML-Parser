This class is a pluggable factory that can map elements to different XMLElement subclasses based on the name and namespace information of those elements. You have to create an instance, configure it to handle certain named elements with certain classes, and then inject your instance into a DOM parser using #nodeFactory: before parsing. Here is an example of its use:

	doc := (XMLDOMParser on: aStringOrStream)
		nodeFactory:
			(XMLPluggableElementFactory new
				handleElement: 'user' withClass: MyUserElement;
				handleElement: 'report' withClass: MyReportElement);
		parseDocument.