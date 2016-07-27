This class represents a node that can contain child nodes. You probably will only use its API through one its subclasses, specifically the document, element and doctype declaration node classes.

This class provides message to access, add and remove child nodes under the "accessing" category. The nodes themselves are stored in some type of XMLObservableList, the exact type of which varies depending on the subclass and can be accessed directly using #nodes. You can modify the #nodes list directly if you like, but adding nodes to it or removing nodes from it will have the effect of adding them to removing them from the parent node. If this is not what you want, then make sure you copy the return value of #nodes before manipulating it.

The "enumerating" category provides two different modes of enumeration: the #nodes* enumerating messages enumerate child nodes of the receiver only, while the #allNode* forms recursively enumerate all descendent nodes, including the receiver itself, using depth-first traversal.

The inner XML of a node with children can be accessed as a string using #innerXML and set using #innerXML:.