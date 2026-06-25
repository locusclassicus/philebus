<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 
 <xsl:output method="html" encoding="UTF-8" indent="yes"/>
 
 <xsl:template match="text">
    <html>
      <head>
        <title>Transformed Text</title>
        <style>
          /* Style for labels in bold */
          .label {
            font-weight: bold;
          }
          /* Style for milestones on the left margin */
          .milestone {
            color: gray;
          }
          /* Styling paragraphs */
          p {
            margin-left: 50px;
          }
        </style>
      </head>
      <body>
        <xsl:apply-templates/>
      </body>
    </html>
 </xsl:template>

 <!-- Template for paragraphs -->
 <xsl:template match="p">
    <p><xsl:apply-templates/></p>
 </xsl:template>

 <!-- Template for labels with bold formatting -->
 <xsl:template match="label">
    <span class="label"><xsl:apply-templates/></span>
 </xsl:template>

 <!-- Template for milestone elements to place them on the left -->
 <xsl:template match="milestone[@unit='section']">
   <span class="milestone">[<xsl:value-of select="@n"/>]</span> 
 </xsl:template>


</xsl:stylesheet>