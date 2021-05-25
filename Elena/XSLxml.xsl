<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
    <ite nombre="Instituto Tecnológico Edix" web="https://institutotecnologico.edix.com" empresa="Proeduca" telefono="917873991" >
       
        <xsl:for-each select="profesores/profesor">
            <xsl:attribute name="id">
              <xsl:value-of select="id"/>
            </xsl:attribute>
            <xsl:attribute name="nombre">
                <xsl:value-of select="nombre"/>
            </xsl:attribute>
        </xsl:for-each>
      
        <director nombre="Chon" despacho="Numero 31, 3ª Planta, Edificio A"/>
    
        <jefe_estudios nombre="Dani" despacho="Numero 27, 2ª Planta, Edificio B"/>

        <xsl:for-each select="ciclos/ciclo">
            <xsl:attribute name="id">
              <xsl:value-of select="id"/>
            </xsl:attribute>
            <xsl:attribute name="decretoTituloAño">
                <xsl:value-of select="decretoTitulo/@año"/>
            </xsl:attribute>
        </xsl:for-each>
    
    </ite>
    </xsl:template>
</xsl:stylesheet>