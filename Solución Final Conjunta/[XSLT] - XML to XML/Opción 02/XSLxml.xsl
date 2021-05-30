<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:output method="xml" version="1.0" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
    <ite nombre="Instituto Tecnológico Edix" web="https://institutotecnologico.edix.com" empresa="Proeduca" telefono="917873991" >
       
        <xsl:for-each select="/ite/profesores/profesor">
        <profesor>
            <xsl:attribute name="id">
              <xsl:value-of select="id"/>
            </xsl:attribute>
            <xsl:attribute name="nombre">
                <xsl:value-of select="nombre"/>
            </xsl:attribute>
        </profesor>
        </xsl:for-each>
      
      

        <director>
            <xsl:attribute name="Nombre">
                <xsl:value-of select="/ite/director/nombre"/>   
            </xsl:attribute>
            <xsl:attribute name="Despacho">
                <xsl:value-of select="/ite/director/despacho"/>   
            </xsl:attribute>
        </director>  

        <jefe_estudios>
            <xsl:attribute name="Nombre">
                <xsl:value-of select="/ite/jefe_estudios/nombre"/>   
            </xsl:attribute>
            <xsl:attribute name="Despacho">
                <xsl:value-of select="/ite/jefe_estudios/despacho"/>   
            </xsl:attribute>
        </jefe_estudios>  
    
       
        <xsl:for-each select="/ite/ciclos/ciclo">
        <modulo>
            <xsl:attribute name="nombre">
              <xsl:value-of select="nombre"/>
            </xsl:attribute>
            <xsl:attribute name="grado">
              <xsl:value-of select="grado"/>
            </xsl:attribute>
            <xsl:attribute name="decretoTitulo">
                <xsl:value-of select="decretoTitulo/@anio"/>
            </xsl:attribute>
        </modulo>
        </xsl:for-each>
    
    </ite>
    </xsl:template>
</xsl:stylesheet>