library(xslt)
library(stringr)

html <- read_html("philebus.html")
doc <- as.character(html)

doc_ed <- str_replace_all(doc, '(<span class=\"milestone\"> +?\\[\\d{2}\\w\\] +?</span>)(<span class="label">\\w{2,3}\\.</span>)',
                '\\2 \\1')
html_ed <- read_html(doc_ed)
write_html(html_ed, "philebus_ed.html")
