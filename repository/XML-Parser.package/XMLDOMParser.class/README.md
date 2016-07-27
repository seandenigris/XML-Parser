This class is an XML parser that parses documents into a DOM tree of nodes. Browse the XML-Parser-DOM category for info on the nodes.

By default, CDATA sections are treated as regular string nodes and comments are ignored entirely. To suppress this behavior, enable #preservesCDataNodes: and #preservesCommentNodes: before parsing. You can also use #preservesIgnorableWhitespace: to preserve ignorable whitespace as string nodes.

You can control what node classes the DOM parser uses to create nodes by injecting a custom node factory with #nodeFactory: prior to parsing. See XMLNodeFactory.

See the superclass for more info.