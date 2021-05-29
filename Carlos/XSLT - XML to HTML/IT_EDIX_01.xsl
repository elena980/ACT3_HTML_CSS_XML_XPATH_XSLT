<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Instituto Tecnológico EDIX</title>
               
                <link rel="stylesheet" href="Estilos.css"/>
            </head>

            <body>
                <header>
                    <h1><xsl:value-of select="ite/@nombre"/></h1>
                    <h4>EMPRESA: <xsl:value-of select="ite/empresa"/></h4>
                    <h4>Teléfono: <xsl:value-of select="ite/telefono"/></h4>
                </header>

                <br/>

                <div>
                    <h3 align="center">DIRECCIÓN DEL CENTRO</h3>
                        <ol>
                            <li><h4>DIRECTOR</h4>
                                <ul>
                                    <li><b>Nombre: </b><xsl:value-of select="ite/director/nombre"/></li>
                                    <li><b>Despacho: </b><xsl:value-of select="ite/director/despacho"/></li>
                                </ul>
                            </li>
                            <li><h4>JEFE DE ESTUDIOS</h4>
                                <ul>
                                    <li><b>Nombre: </b><xsl:value-of select="ite/jefe_estudios/nombre"/></li>
                                    <li><b>Despacho: </b><xsl:value-of select="ite/jefe_estudios/despacho"/></li>
                                </ul>
                            </li>
                        </ol>
                </div>

                <br/>
                
                <table id="profesores" border="1" align="center">
                    <caption><b>PROFESORES</b></caption>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                    </tr>     
                    <xsl:for-each select="ite/profesores/profesor">
                        <tr>
					        <td><xsl:value-of select="id"/></td>
					        <td><xsl:value-of select="nombre"/></td>
				        </tr>
                    </xsl:for-each>
                </table>

                <br/>

                <table id="ciclos" border="1" align="center">
                    <caption><b>CICLOS</b></caption>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Grado</th>
                        <th>Año</th>
                    </tr>
                    <xsl:for-each select="ite/ciclos/ciclo">
                        <tr>
                            <td><a href="https://www.edix.com/es/fp/"><xsl:value-of select="@id"/></a></td>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="grado"/></td>
                            <td><xsl:value-of select="decretoTitulo/@año"/></td>
                        </tr>
                    </xsl:for-each>
                </table>  
                
                <br/>
            
                <form action="#" target="" method="get" name="formDatosPersonales">

                    <label for="nombre">Nombre</label>
                    <input type="text" name="nombre" id="nombre" placeholder="Escribe tu nombre"/>
                
                    <label for="apellidos">Apellidos</label>
                    <input type="text" name="apellidos" id="apellidos" placeholder="Apellidos"/>
                
                    <label for="email">Email</label>
                    <input type="email" name="email" id="email" placeholder="Email"/>
                
                    <label for="asunto">Asunto</label>
                    <input type ="text" name="asunto" id="asunto" placeholder="Titular de la consulta"/>
                
                    <label for="mensaje">Mensaje</label>
                    <textarea name="mensaje" for="mensaje" placeholder="Describe brevemente en menos de 300 carácteres" maxlength="300"></textarea>
                    
                    <input type="submit" name="enviar" value="Enviar datos"/>
                </form>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
