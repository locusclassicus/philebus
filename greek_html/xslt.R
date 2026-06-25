library(xslt)
doc <- read_xml("philebus_web.xml", package = "xslt")
style <- read_xml("plato.xslt", package = "xslt")
html <- xml_xslt(doc, style)
write_html(html, "philebus.html")

