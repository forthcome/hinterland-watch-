<?xml version="1.0" encoding="UTF-8" ?> 
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >


  <xsl:output method="html"/>
  <xsl:strip-space elements="*"/>
  
  <xsl:template match="titre">
    <html>
     <head>
  <link rel="stylesheet" href="simple.css" media="all"></link>
  </head>
    <body>
      <header><xsl:value-of select="@id"/></header>
      <xsl:apply-templates/>
    </body></html>
  </xsl:template>
  
    <xsl:template match="/">
    <html>
    <head>
  <link rel="stylesheet" href="simple.css" media="all"></link>
  </head>
    <body>
      <table id="page-table"><tr><td id="page-td">
      <div id="global">
      <h2><xsl:text>Liste des thèmes abordés</xsl:text></h2>
      <p><xsl:value-of select="//recap_mots_cles/@id"/></p>
 <xsl:for-each select="//mots_cles">
 <xsl:sort select="." />
 <li><xsl:value-of select="."/></li>
 </xsl:for-each>
      <xsl:apply-templates/>
      </div><!--#global-->
      </td></tr></table>
    </body></html>
  </xsl:template>
  

      <xsl:template match="recap_secteur">
    <html>
    <head>
  <link rel="stylesheet" href="simple.css" media="all"></link>
  </head>
    <body>
      <table id="page-table"><tr><td id="page-td">
      <div id="global">
      <h2><xsl:text>Liste des secteurs couverts par l'actualité sectorielle</xsl:text></h2>
      <p><xsl:value-of select="@id"/></p>
     <xsl:for-each select="//secteur">
       <xsl:sort select="." />
 <li><xsl:value-of select="."/></li>
 </xsl:for-each>
      <xsl:apply-templates/>
      </div><!--#global-->
      </td></tr></table>
    </body></html>
  </xsl:template>

  <xsl:template match="generalites">
    <html>
    <head>
  <link rel="stylesheet" href="simple.css" media="all"></link>
  </head>
    <body>
      <table id="page-table"><tr><td id="page-td">
      <div id="global">
      <h2><xsl:value-of select="@id"/></h2>
      <xsl:apply-templates/>
      </div><!--#global-->
      </td></tr></table>
    </body></html>
  </xsl:template>
  
    <xsl:template match="fisc_gen">
    <html>
    <head>
  <link rel="stylesheet" href="simple.css" media="all"></link>
  </head>
    <body>
      <table id="page-table"><tr><td id="page-td">
      <div id="global">
      <h2><xsl:value-of select="@id"/></h2>
      <xsl:apply-templates/>
      </div><!--#global-->
      </td></tr></table>
    </body></html>
  </xsl:template>
  
      <xsl:template match="fisc_ent">
    <html>
    <head>
  <link rel="stylesheet" href="simple.css" media="all"></link>
  </head>
    <body>
      <table id="page-table"><tr><td id="page-td">
      <div id="global">
      <h2><xsl:value-of select="@id"/></h2>
      <xsl:apply-templates/>
      </div><!--#global-->
      </td></tr></table>
    </body></html>
  </xsl:template>
  
      <xsl:template match="fisc_part">
    <html>
    <head>
  <link rel="stylesheet" href="simple.css" media="all"></link>
  </head>
    <body>
      <table id="page-table"><tr><td id="page-td">
      <div id="global">
      <h2><xsl:value-of select="@id"/></h2>
      <xsl:apply-templates/>
      </div><!--#global-->
      </td></tr></table>
    </body></html>
  </xsl:template>
  
        <xsl:template match="actu_sect">
    <html>
    <head>
  <link rel="stylesheet" href="simple.css" media="all"></link>
  </head>
    <body>
      <table id="page-table"><tr><td id="page-td">
      <div id="global">
      <h2><xsl:value-of select="@id"/></h2>
      <xsl:apply-templates/>
      </div><!--#global-->
      </td></tr></table>
    </body></html>
  </xsl:template>
  
  <xsl:template match="social">
    <html>
    <head>
  <link rel="stylesheet" href="simple.css" media="all"></link>
  </head>
    <body>
      <table id="page-table"><tr><td id="page-td">
      <div id="global">
      <h2><xsl:value-of select="@id"/></h2>
      <xsl:apply-templates/>
      </div><!--#global-->
      </td></tr></table>
    </body></html>
  </xsl:template>
  
    <xsl:template match="item">
    <html>
    <head>
  <link rel="stylesheet" href="simple.css" media="all"></link>
  </head>
    <body>
      <p><xsl:value-of select="description"/> &#160;<a><xsl:attribute name="href"><xsl:value-of select="url"/></xsl:attribute><xsl:value-of select="url"/></a></p>
      <xsl:for-each select="mots_cles">
      <p><em><xsl:value-of select="."/></em></p>
      </xsl:for-each>
      <p><xsl:if test="not(secteur='' or not(secteur))">
      <xsl:for-each select="secteur">
      <p><strong><xsl:value-of select="."/></strong></p>
      </xsl:for-each>
      </xsl:if></p>
    </body></html>
  </xsl:template>
  
  <xsl:template match="auteur">
    <html>
     <head>
  <link rel="stylesheet" href="simple.css" media="all"></link>
  <title><xsl:value-of select="@id"/> | <xsl:value-of select="@aut"/></title>
  </head>
    <body>
      <xsl:apply-templates/>
    </body></html>
  </xsl:template>

  

</xsl:stylesheet>
