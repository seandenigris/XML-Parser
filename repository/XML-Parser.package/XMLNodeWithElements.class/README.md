This class represents a node with child nodes. You will likely use its API through either XMLDocument or XMLElement.

To retrieve child elements by name, you can send any of the #element- messages under "accessing." To search a node and its descendants using depth-first traversal, you can send any of the #firstTag: or #tagsNamed: messages under "searching."