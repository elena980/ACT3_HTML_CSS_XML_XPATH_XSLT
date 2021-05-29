<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>
            <head>
                <title>Instituto Tecnológico de Edix</title>
                <link rel="stylesheet" href="css_Juan.css"/>
            </head>

            <body>
                <div>
                <h1 style="color:red"><xsl:value-of select="ite/profesores"/></h1>
             
                <xsl:for-each select="ite/profesores">

                <p>			
                    ID: <xsl:value-of select="profesor/id"/>
                    Nombre: <xsl:value-of select="profesor/nombre"/>
                </p>
            </xsl:for-each>
            </div>

                <xsl:for-each select="ite/director">

                <p>
                    Nombre: <xsl:value-of select="nombre"/>
                    Despacho: <xsl:value-of select="despacho"/>
                </p>
            </xsl:for-each>

                <xsl:for-each select="ite/jefe_estudios">

                <p>
                    Nombre: <xsl:value-of select="nombre"/>
                    Despacho: <xsl:value-of select="despacho"/>
                </p>
                
            </xsl:for-each>
                <xsl:for-each select="ite/ciclos/ciclo">
			<p>			
				ID: <xsl:value-of select="id"/>
				Nombre: <xsl:value-of select="nombre"/>
				Grado: <xsl:value-of select="grado"/>
				Decreto Título: <xsl:value-of select="decretoTitulo/@año"/>
				
			</p>
            
			<table border="1">
				<tr>
					<th>id</th>
					<th>nombre</th>
					<th>grado</th>
					<th>decretoTitulo</th>
				</tr>
                <xsl:for-each select="ite/ciclos/ciclos">
					<tr>
						<td><xsl:value-of select="@id"/></td>
						<td><xsl:value-of select="nombre"/></td>
						<td><xsl:value-of select="grado"/></td>
						<td><xsl:value-of select="decretoTitulo"/></td>
					</tr>
				</xsl:for-each> 
			</table>
            
            <form action="formularioHTML.jsp" method="post">
                <fieldset>
                    <legend>Formulario de contacto</legend>
                    <label for="nombre" title="Nombre">Nombre</label>
                    <input id="nombre" type="text" name="nombre"/>
                    <label for="apellidos" title="Apellidos">Apellidos</label>
                    <input id="apellidos" type="text" name="apellidos"/>
                    <label for="fecha_nacimiento">Fecha de nacimiento (dd/mm/aaaa): </label>
                    <input id="fecha_nacimiento" type="text" name="fecha_nacimiento"/>
                
                    <label for="usuario">Usuario: </label>
                    <input id="usuario" type="text" name="usuario"/>
    
                    <label for="email">Email: </label>
                    <input id="email" type="email" name="email"/>
    
                    <label for="password">Contraseña: </label>
                    <input id="password" type="password" name="password"/>
                
                    <label for="telefono" title="email">Teléfono</label>
                    <input id="telefono" type="text" name="telefono"/>
                    <label for="comunidad_autonoma">Comunidad Autónoma: </label>
                    <select name="comunidad_autonoma">
                    <option value="AND">Andalucía</option>
                    <option value="TUE">Aragón</option>
                    <option value="WED">Asturias</option>
                    <option value="THU">Cantabria</option>
                    <option value="FRI">Castilla-La Mancha</option>
                    <option value="AND">Castilla y León</option>
                    <option value="AND">Cataluña</option>
                    <option value="AND">Extremadura</option>
                    <option value="AND">Galicia</option>
                    <option value="AND">Islas Baleares</option>
                    <option value="AND">Canarias</option>
                    <option value="AND">La Rioja</option>
                    <option value="AND">Madrid</option>
                    <option value="AND">Murcia</option>
                    <option value="AND">Navarra</option>
                    <option value="AND">País Vasco</option>
                    <option value="AND">Valencia</option>
                        
                    </select>
                
                    <label for= "matriculacion" title="Módulo requerido">Ciclo formativo matriculado</label>
                
                    <input id="asir" type="radio" name="matriculacion" value="Asir"/>ASIR
                    <input id="dam" type="radio" name="matriculacion" value="Daw"/>DAW
                    <input id="daw" type="radio" name="matriculacion" value="Dam"/>DAM
                
                    <label for="contacto" title="contacto">Contacto vía</label>
                
                    <input id="telefono" type="radio" name="contacto" value="tlf"/> Teléfono 
                    <input id="fax" type="radio" name="contacto" value="tlf"/> Fax 
                    <input id="mail" type="radio" name="contacto" value="mail"/> E-mail 
                
                Soy mayor de 18 años.(*)<input type="checkbox" name="terminos" value="Y"/>
                
                <input type="submit" value="Enviar datos" />
                <input type="reset" value="Limpiar formulario" />
                </fieldset>
    
            </form>  

        </xsl:for-each>

            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>