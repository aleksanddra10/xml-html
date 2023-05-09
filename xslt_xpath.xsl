<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

  <xsl:template match="/">
    <html>
      <head>
        <title>Zadanie5</title>
        <link rel="stylesheet" type="text/css" href="xslt_xpath.css"/>
      </head>
      <body>
  
        <h2>Podpunkt A</h2>
        <xsl:apply-templates select="dane" mode="ppA"/>

        <h2>Podpunkt B</h2>
        <xsl:apply-templates select="dane" mode="ppB"/> 
      
    
        <h2>Podpunkt C</h2>
        <xsl:apply-templates select="dane" mode="ppC"/> 
    
        <h2>Podpunkt D</h2>
        <xsl:apply-templates select="dane" mode="ppD"/> 
      
      </body>
    </html>
  </xsl:template>

  <!-- podpunkt A -->
  <xsl:template match="dane" mode="ppA">
    <table>
      <thead>
        <tr>
          <th>imie</th>
          <th>data</th>
          <th>wiek</th>
          <th>waga</th>
          <th>wzrost</th>
          <th>krew</th>
        </tr>
      </thead>
      <tbody>
        <xsl:apply-templates select="osoba"/>
      </tbody>
    </table>
  </xsl:template>

  <xsl:template match="osoba">
    <tr>
      <td><xsl:value-of select="imie"/></td>
      <td><xsl:value-of select="data"/></td>
      <td><xsl:value-of select="wiek"/></td>
      <td><xsl:value-of select="waga"/></td>
      <td><xsl:value-of select="wzrost"/></td>
      <td><xsl:value-of select="krew"/></td>
    </tr>
  </xsl:template>

  <!-- podpunkt B -->

  <xsl:template match="dane" mode="ppB">
  <table>
    <thead>
      <tr>
        <th>imie</th>
        <th>data</th>
        <th>wiek</th>
        <th>waga</th>
        <th>wzrost</th>
        <th>krew</th>
      </tr>
    </thead>
    <tbody>
      <xsl:apply-templates select="osoba">
        <xsl:sort select="wiek" data-type="number"/>
        <xsl:sort select="waga" data-type="number" order="descending"/>
      </xsl:apply-templates>
    </tbody>
  </table>
</xsl:template>

  <!-- podpunkt C -->
<xsl:template match="dane" mode="ppC">
  <table>
    <thead>
      <tr>
        <th>grupa krwi</th>
        <th>liczba</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>A</td>
        <td><xsl:value-of select="count(osoba[krew='A'])"/></td>
      </tr>
      <tr>
        <td>B</td>
        <td><xsl:value-of select="count(osoba[krew='B'])"/></td>
      </tr>
      <tr>
        <td>AB</td>
        <td><xsl:value-of select="count(osoba[krew='AB'])"/></td>
      </tr>
      <tr>
        <td>0</td>
        <td><xsl:value-of select="count(osoba[krew='0'])"/></td>
      </tr>
    </tbody>
  </table>
</xsl:template>

<!-- podpunkt D -->

<xsl:template match="dane" mode="ppD">
  <table>
    <thead>
      <tr>
        <th>imie</th>
        <th>data</th>
        <th>wiek</th>
        <th>waga</th>
        <th>wzrost</th>
        <th>krew</th>
        <th>BMI</th>
      </tr>
    </thead>
    <tbody>
      <xsl:apply-templates select="osoba" mode="zadD"/>
    </tbody>
  </table>
</xsl:template>

<xsl:template match="osoba" mode="zadD">
  <tr>
    <td><xsl:value-of select="imie"/></td>
    <td><xsl:value-of select="data"/></td>
    <td><xsl:value-of select="wiek"/></td>
    <td><xsl:value-of select="waga"/></td>
    <td><xsl:value-of select="wzrost"/></td>
    <td><xsl:value-of select="krew"/></td>
    <td>
      <xsl:variable name="wzrostMetry" select="wzrost div 100"/>
      <xsl:value-of select="format-number(waga div ($wzrostMetry * $wzrostMetry), '#.##')"/>
    </td>
  </tr>
</xsl:template>



</xsl:stylesheet>