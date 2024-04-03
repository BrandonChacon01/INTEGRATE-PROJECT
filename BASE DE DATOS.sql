CREATE DATABASE integradora;
USE integradora;

-- TABLA ADMINISTRADORES

CREATE TABLE administradores (
  IdAdministradores int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Username varchar(45) NOT NULL,
  Password varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- INSERTAR ADMINISTRADORES PRINCIPALES

INSERT INTO administradores (IdAdministradores, Username, Password) VALUES
(1, 'Brandon','$2y$10$gTfj56VUAzP7VjQb2Lbqqe/lEzIg.AWaRJTdvoSEpb1EuwA.dXtGq'); -- password 12345678

-- TABLA COTIZACIONES

CREATE TABLE cotizaciones (
  idCotizaciones int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Administradores_IdAdministradores int(11) NOT NULL,
  Nombre_cliente varchar(45) NOT NULL,
  Email varchar(45) NOT NULL,
  Seleccion_producto varchar(100) NOT NULL,
  Comentarios varchar(45) DEFAULT NULL,
  Fecha date DEFAULT NULL,
  Nombre_admin varchar(45) NOT NULL,
  Estado_solicitud VARCHAR(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- TABLA PRODUCTOS "ESPAÑOL"

CREATE TABLE productos (
  IdProductos int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Nombre_producto varchar(45) DEFAULT NULL,
  Descripcion longtext DEFAULT NULL,
  Caracteristicas longtext DEFAULT NULL,
  URL_imagen varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- INSERTAR DATOS

INSERT INTO productos (Nombre_producto, Descripcion, Caracteristicas, URL_imagen) VALUES
('Modelo 330S', 'El analizador H2S modelo 330S utiliza tecnología basada en cinta de acetato de plomo, probada en el campo que proporciona una salida lineal y libre de interferencias de H2S. Se puede agregar una medición opcional de azufre total al analizador.', '1. Tiempos de respuesta rápidos utilizando el algoritmo de respuesta rápida (RRA) ~ 20 segundos para alarmar.\n2. Sin interferencias de otros componentes de la muestra.\n3. Bajo consumo de energía <3 Watts.\n4. Vida útil prolongada de la cinta de 60 a 90 días.\n5. Hasta 5 veces el rango calibrado.\n6. Entrega rápida en sistemas estándar.\nServicio de campo completo y capacitación disponible', 'img/model330s.png'),
('Model 331S', 'El analizador H2S modelo 331S utiliza tecnología basada en cinta de acetato de plomo probada en el campo, que proporciona una salida lineal y sin interferencias de H2S. Se puede agregar una medición opcional de azufre total al analizador. ', '1. Tiempos de respuesta rápidos utilizando el algoritmo de respuesta rápida (RRA) ~ 20 segundos para alarmar.\r\n\r\n2. Sin interferencias de otros componentes de la muestra.\r\n\r\n3. Bajo consumo de energía <3 vatios.\r\n\r\n4. Vida útil prolongada de la cinta de 60 a 90 días.\r\n\r\n5. Mide hasta 5 veces el rango calibrado.\r\n\r\n6. Entrega rápida en sistemas estándar.', 'img/model331s.png'),
('Model 330S-Ex', 'El analizador H2S modelo 330S-Ex utiliza tecnología basada en cinta de acetato de plomo probada en el campo, que proporciona una salida lineal y sin interferencias de H2S en dos flujos simultáneamente. Se puede agregar una medición opcional de azufre total al analizador como una de las corrientes.', '1. Tiempos de respuesta rápidos utilizando el algoritmo de respuesta rápida (RRA) ~ 20 segundos para alarmar.\r\n\r\n2. Sin interferencias de otros componentes de la muestra.\r\n\r\n3. Bajo consumo de energía <3 Watts.\r\n\r\n4. Vida útil prolongada de la cinta de 60 a 90 días.\r\n\r\n5. Mide hasta 5 veces el rango calibrado.', 'img/model330s-ex.png'),
('Model 330SDS', 'El analizador H2S modelo 330SDS utiliza tecnología basada en cinta de acetato de plomo probada en el campo, que proporciona una salida lineal y sin interferencias de H2S en dos flujos simultáneamente. Se puede agregar una medición opcional de azufre total al analizador como una de las corrientes. ', '1. Dos mediciones simultáneas al mismo tiempo sin conmutación de flujo. \r\n\r\n2. Cada medición puede ser un rango diferente.\r\n\r\n3. Tiempos de respuesta rápidos utilizando algoritmos de respuesta rápida (RRA) 20 segundos para alarmar.\r\n\r\n4. Sin interferencias de otros componentes de la muestra.\r\n\r\n5. Bajo consumo de energía < 3 Watts.\r\n\r\n6. Vida útil prolongada de la cinta de 60-90 días.\r\n\r\n7. Mide hasta 5 veces el rango calibrado.\r\n\r\n8. Entrega rápida.', 'img/model330sds.png'),
('Model 331SDS', 'El analizador H2S modelo 331SDS utiliza tecnología basada en cinta de acetato de plomo probada en el campo que proporciona una salida lineal y sin interferencias de H2S en dos flujos simultáneamente. Se puede agregar una medición opcional de azufre total al analizador como una de las corrientes.', '1. Dos mediciones simultáneas al mismo tiempo sin conmutación de flujo.\r\n \r\n2. Cada medición puede ser un rango diferente.\r\n\r\n3. Tiempos de respuesta rápidos utilizando algoritmos de respuesta rápida (RRA)\r\n20 segundos para alarmar.\r\n\r\n4. Sin interferencias de otros componentes de la muestra.\r\n\r\n5. Bajo consumo de energía < 3 Watts.\r\n\r\n6. Vida útil prolongada de la cinta de 60 a 90 días.\r\n\r\n7. Mide hasta 5 veces el rango calibrado.\r\n\r\n8. Entrega rápida para sistemas estándar.', 'img/model331sds.png'),
('Modelo 330SDS-Ex', 'El analizador H2S modelo 330SDS-Ex utiliza tecnología basada en cinta de acetato de plomo probada en el campo que proporciona una salida lineal y sin interferencias de H2S en dos flujos simultáneamente. Se puede agregar una medición opcional de azufre total al analizador como una de las corrientes.', '1. Dos mediciones simultáneas al mismo tiempo sin conmutación de flujo.\r\n \r\n2. Cada medición puede ser un rango diferente.\r\n\r\n3. Tiempos de respuesta rápidos utilizando algoritmos de respuesta rápida (RRA) 20 segundos para alarmar.\r\n\r\n4. Sin interferencias de otros componentes de la muestra.\r\n\r\n5. Bajo consumo de energía < 3 Watts.\r\n\r\n6. Vida útil prolongada de la cinta de 60 a 90 días.\r\n\r\n7. Mide hasta 5 veces el rango calibrado.\r\n\r\n8. Entrega rápida para sistemas estándar.', 'img/model330sds-ex.png'),
('Cinta de Detección Envent', 'Las cintas estándar de 100 pies tienen carretes para adaptarse al modelo 900 de GASI y a los modelos más antiguos Houston Atlas 722R y AEX. Las cintas estándar de 300 y 350 pies tienen carretes para adaptarse a los analizadores de las series GASI 901, 902, 801 y Envent 330. Las cintas de 200 pies se ajustan a los analizadores Delmar. Envent puede proporcionar longitudes y tamaños de núcleo personalizados.', 'La cinta Envent es 4 veces más fuerte que cualquier cinta de la competencia sin costo adicional.\r\n\r\n1. La cinta más resistente del mercado.\r\n2. Disponible en rollos de 50, 100, 250, 300 y 350 pies.\r\n3. Longitudes personalizadas disponibles.\r\n4. Precio competitivo.', 'img/sensing.png');


-- TABLA PRODUCTS "INGLES"

CREATE TABLE products (
  idProducts int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Name_product varchar(40) NOT NULL,
  Description mediumtext DEFAULT NULL,
  Attributes mediumtext DEFAULT NULL,
  URL_images varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


-- INSERTAR DATOS

INSERT INTO products (Name_product, Description, Attributes, URL_images) VALUES
('Model 330S', 'The Model 330S is a Class I Division 1 H2S Analyzer utilizing field proven tape based technology that provides a linear and interference-free output of H2S.', 'Fast response times using Rapid Response Algorithm (RRA) ~ 20 seconds to alarm\n\nNo interference from other components in the sample\n\nLow power consumption <3 Watts\n\nExtended tape life of 60-90 days\n\nMeasures up to 5 times the calibrated range\n\nQuick delivery on standard systems\n\nFull field service and training available', 'img_ing/model330s.png'),
('Model 331S', 'The Model 331S is a Class I Division 2 H2S Analyzer utilizing field proven tape based technology that provides a linear and interference-free output of H2S.', 'Fast response times using Rapid Response Algorithm (RRA) ~ 20 seconds to alarm\r\n\r\nNo interference from other components in the sample\r\n\r\nLow power consumption <3 Watts\r\n\r\nExtended tape life of 60-90 days\r\n\r\nMeasures up to 5 times the calibrated range\r\n\r\nQuick delivery on standard systems\r\n\r\nFull field service and training available', 'img_ing/model331s.png'),
('Model 330S-Ex', 'The Model 330S-Ex is an ATEX and IEC certified H2S Analyzer utilizing field proven tape based technology that provides a linear and interference-free output of H2S.', 'Fast Response times using Rapid Response Algorithm (RRA) ~20 seconds to alarm\r\n\r\nNo interference from other components in the sample\r\n\r\nLow power consumption <3 Watts\r\n\r\nExtended tape life of 60-90 days\r\n\r\nMeasures up to 5 times the calibrated range\r\n\r\nFull field service & training available', 'img_ing/model330s-ex.png'),
('Model 330SDS', 'The Model 330SDS is a Class I Division 1 H2S Analyzer providing a linear and interference-free output of H2S on two streams simultaneously.', 'Two simultaneous measurements at the same time with no stream switching \r\n\r\nEach measurement can be a different range\r\n\r\nFast response times using Rapid Response Algorithms (RRA) 20 seconds to alarm\r\n\r\nNo interference from other components in the sample\r\n\r\nLow power consumption < 3 Watts\r\n\r\nExtended tape life of 60-90 days\r\n\r\nMeasures up to 5 times the calibrated range\r\n\r\nQuick delivery\r\n\r\nFull field service & training available', 'img_ing/model330sds.png'),
('Model 331SDS', 'The Model 331SDS H2S Analyzer utilizes field proven tape based technology that provides a linear and interference-free output of H2S on two streams simultaneously. An optional Total Sulfur measurement can be added to the analyzer as one of the streams.', 'Two simultaneous measurements at the same time with no stream switching\r\n \r\nEach measurement can be a different range\r\n\r\nFast response times using Rapid Response Algorithms (RRA)\r\n\r\n20 seconds to alarm\r\n\r\nNo interference from other components in the sample\r\n\r\nLow power consumption < 3 Watts\r\n\r\nExtended tape life of 60-90 days\r\n\r\nMeasures up to 5 times the calibrated range\r\n\r\nQuick delivery for standard systems\r\n\r\nFull field service & training available', 'img_ing/model331sds.png'),
('Model 330SDS-Ex', 'The Model 330SDS-Ex H2S Analyzer utilizes field-proven, tape-based technology that provides a linear and interference-free output of H2S on two streams simultaneously. An optional Total Sulfur measurement can be added to the analyzer as one of the streams.', 'Two simultaneous measurements at the same time with no stream switching \r\n\r\nEach measurement can be a different range\r\n\r\nFast response times using Rapid Response Algorithms (RRA) 20 seconds to alarm\r\n\r\nNo interference from other components in the sample\r\n\r\nLow power consumption < 3 Watts\r\n\r\nExtended tape life of 60-90 days\r\n\r\nMeasures up to 5 times the calibrated range\r\n\r\nQuick delivery for standard systems\r\n\r\nFull field service & training available', 'img_ing/model330sds-ex.png'),
('Sensing Tape', 'Standard 100-foot tapes have reels to fit GASI model 900, and older Houston Atlas 722R and AEX models. Standard 300 & 350-foot tapes have reels to fit GASI models 901, 902, 801 and Envent 330 series analyzers. 200-foot tapes fit Delmar Analyzers. Envent can provide custom lengths and core sizes. Please call for information.', 'Envent tape is 4 times stronger than any competitive tape at no extra cost.\r\n\r\nStrongest tape on the market\r\nAvailable in 50, 100, 250, 300, and 350-foot rolls\r\nCustom lengths available\r\nCompetitively priced\r\nStocked in Calgary and Houston', 'img_ing/sensing.png');


-- TABLA SOLICITUDES

CREATE TABLE solicitudes (
  IdSolicitudes int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  Nombre_cliente varchar(45) NOT NULL,
  Email varchar(45) NOT NULL,
  Seleccion_producto varchar(100) NOT NULL,
  Comentarios varchar(200) DEFAULT NULL,
  Fecha date DEFAULT NULL,
  Estado_solicitud tinytext NOT NULL DEFAULT 'Pendiente'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

 
-- TABLA solicitudes_has_productos

CREATE TABLE solicitudes_has_productos (
  Solicitudes_IdSolicitudes int(11) NOT NULL,
  Productos_IdProductos int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- TABLA mensajes
CREATE TABLE mensajes (
  IdMensaje int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
  Mensaje varchar(200) NOT NULL,
  Fecha datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


ALTER TABLE cotizaciones
  ADD KEY Administradores_IdAdministradores (Administradores_IdAdministradores);


ALTER TABLE solicitudes_has_productos
  ADD PRIMARY KEY (Solicitudes_IdSolicitudes,Productos_IdProductos),
  ADD KEY Productos_IdProductos (Productos_IdProductos);


-- Filtros para la tabla `cotizaciones`
ALTER TABLE cotizaciones
  ADD CONSTRAINT cotizaciones_ibfk_1 FOREIGN KEY (Administradores_IdAdministradores) REFERENCES administradores (IdAdministradores);


-- Filtros para la tabla `solicitudes_has_productos`
ALTER TABLE solicitudes_has_productos
  ADD CONSTRAINT solicitudes_has_productos_ibfk_1 FOREIGN KEY (Solicitudes_IdSolicitudes) REFERENCES solicitudes (IdSolicitudes),
  ADD CONSTRAINT solicitudes_has_productos_ibfk_2 FOREIGN KEY (Productos_IdProductos) REFERENCES productos (IdProductos);
COMMIT;


-- PROCEDIMIENTOS ---------------------------------------------------------------------------------------------

-- TABLA ADMINISTRADORES --------------------------------------------------------------------------------------
	-- OBTENER ADMINISTRADORES
DELIMITER $$
CREATE PROCEDURE ObtenerAdministrador()
BEGIN
  SELECT * FROM administradores;
END $$
DELIMITER ;

	-- OBTENER ID DEL ADMINISTRADOR POR SALIDA
DELIMITER $$
CREATE PROCEDURE ObtenerIdAdministrador(IN p_Username varchar(45))
BEGIN
  SELECT IdAdministradores FROM administradores WHERE Username = p_Username;
END $$
DELIMITER ;

	-- CREAR NUEVO ADMINISTRADOR
DELIMITER $$
CREATE PROCEDURE InsertarAdministrador(IN p_Username varchar(45), IN p_Password varchar(200))
BEGIN
  INSERT INTO administradores (Username, Password)
  VALUES (p_Username, p_Password);
END $$
DELIMITER ;

	-- ONTENER EL ID DEL ADMINISTRADOR Y EL USERNAME Y PASSWORD
DELIMITER $$
CREATE PROCEDURE SeleccionarAdministrador(IN p_Username varchar(45))
BEGIN
  SELECT IdAdministradores, Username, Password
  FROM administradores WHERE Username = p_Username;
END $$
DELIMITER ;

	-- OBTENER EL USERNAME POR SALIDA DEL ADMINISTRADOR POR MEDIO DEL ID
DELIMITER $$
CREATE PROCEDURE ObtenerUsername(IN p_IdAdministradores int)
BEGIN
  SELECT Username FROM administradores WHERE IdAdministradores = p_IdAdministradores;
END $$
DELIMITER ;

	-- ELIMINAR ADMINISTRADOR POR MEDIO DE ID
DELIMITER $$
CREATE PROCEDURE EliminarAdministrador(IN p_IdAdministradores INT)
BEGIN
  DELETE FROM administradores WHERE IdAdministradores = p_IdAdministradores;
END$$
DELIMITER ;

	-- ACTUALIZAR USERNAME Y CONTRASEÑA POR MEDIO DE ID
DELIMITER $$
CREATE PROCEDURE ActualizarAdministrador(IN p_IdAdministradores INT, IN p_Username VARCHAR(45), IN p_Password VARCHAR(200))
BEGIN
  UPDATE administradores SET Username = p_Username, Password = p_Username WHERE IdAdministradores = p_IdAdministradores;
END$$
DELIMITER ;


-- TABLA PRODUCTOS "ESPAÑOL" --------------------------------------------------------------------------------------
     -- CREAR PRODUCTOS
DELIMITER $$
CREATE PROCEDURE InsertarProducto(IN p_Nombre_producto varchar(45), IN p_Descripcion longtext, IN p_Caracteristicas longtext, IN p_URL_imagen varchar(45))
BEGIN
  INSERT INTO productos (Nombre_producto, Descripcion, Caracteristicas, URL_imagen)
  VALUES (p_Nombre_producto, p_Descripcion, p_Caracteristicas, p_URL_imagen);
END $$
DELIMITER ;

     -- ELIMINAR PRODUCTO
DELIMITER $$
CREATE PROCEDURE EliminarProducto(IN p_IdProducto int)
BEGIN
  DELETE FROM productos WHERE IdProductos = p_IdProducto;
END $$
DELIMITER ;

	-- ACTUALIZAR PRODUCTO
DELIMITER $$
CREATE PROCEDURE ActualizarProducto(IN p_Nombre_producto varchar(45), IN p_Descripcion longtext, IN p_Caracteristicas longtext, IN p_URL_imagen varchar(45), IN p_IdProducto int)
BEGIN
  UPDATE productos
  SET Nombre_producto = p_Nombre_producto,
      Descripcion = p_Descripcion,
      Caracteristicas = p_Caracteristicas,
      URL_imagen = p_URL_imagen
  WHERE IdProductos = p_IdProducto;
END $$
DELIMITER ;

	-- SELECCIONAR PRODUCTO POR ID
DELIMITER $$
CREATE PROCEDURE SeleccionarProducto(IN p_IdProducto int)
BEGIN
  SELECT * FROM productos WHERE IdProductos = p_IdProducto;
END $$
DELIMITER ;

	-- OBTENER TODOS LOS PRODUCTOS
DELIMITER $$
CREATE PROCEDURE ObtenerProductos()
BEGIN
  SELECT * FROM productos;
END $$
DELIMITER ;

	-- OBTENER PRODUCTOS PARA LA PAGINACION
DELIMITER $$
CREATE PROCEDURE ObtenerProductosPaginados(IN InicioFrom INT, IN ProductosPorPagina INT)
BEGIN
    SELECT * FROM productos LIMIT InicioFrom, ProductosPorPagina;
END $$
DELIMITER ;

	-- CONTAR PRODUCTOS
DELIMITER $$
CREATE PROCEDURE TotalProductos()
BEGIN
	SELECT COUNT(*) AS total FROM productos;
END $$
DELIMITER ;

-- TABLA PRODUCTOS "INGLES" --------------------------------------------------------------------------------------
     -- CREAR PRODUCTOS
DELIMITER $$
CREATE PROCEDURE InsertProduct(IN p_Name_product varchar(40), IN p_Description mediumtext, IN p_Attributes mediumtext, IN p_URL_images varchar(45))
BEGIN
  INSERT INTO products (Name_product, Description, Attributes, URL_images)
  VALUES (p_Name_product, p_Description, p_Attributes, p_URL_images);
END $$
DELIMITER ;

     -- ELIMINAR PRODUCTO
DELIMITER $$
CREATE PROCEDURE DeleteProduct(IN p_IdProduct int)
BEGIN
  DELETE FROM products WHERE idProducts = p_IdProduct;
END $$
DELIMITER ;

	-- ACTUALIZAR PRODUCTO
DELIMITER $$
CREATE PROCEDURE UpdateProduct(IN p_Name_product varchar(40), IN p_Description mediumtext, IN p_Attributes mediumtext, IN p_URL_images varchar(45), IN p_IdProduct int)
BEGIN
  UPDATE products
  SET Name_product = p_Name_product,
      Description = p_Description,
      Attributes = p_Attributes,
      URL_images = p_URL_images
  WHERE idProducts = p_IdProduct;
END $$
DELIMITER ;

	-- SELECCIONAR PRODUCTO POR ID
DELIMITER $$
CREATE PROCEDURE SelectProduct(IN p_IdProduct int)
BEGIN
  SELECT * FROM products WHERE idProducts = p_IdProduct;
END $$
DELIMITER ;

	-- OBTENER TODOS LOS PRODUCTOS
DELIMITER $$
CREATE PROCEDURE GetProducts()
BEGIN
  SELECT * FROM products;
END $$
DELIMITER ;

	-- OBTENER PRODUCTOS PARA LA PAGINACION
DELIMITER $$
CREATE PROCEDURE GetProductsPag(IN StarFrom INT, IN ProductsForPag INT)
BEGIN
    SELECT * FROM products LIMIT StarFrom, ProductsForPag;
END $$
DELIMITER ;

	-- CONTAR PRODUCTOS
DELIMITER $$
CREATE PROCEDURE TotalProducts()
BEGIN
	SELECT COUNT(*) AS total FROM products;
END $$
DELIMITER ;


-- SOLICITUDES --------------------------------------------------------------------------------------
	-- CREAR SOLICITUD NUEVA
DELIMITER $$
CREATE PROCEDURE InsertarSolicitud(IN p_Nombre_cliente varchar(45), IN p_Email varchar(45), IN p_Seleccion_producto varchar(100), IN p_Comentarios varchar(200), IN p_Fecha date)
BEGIN
  INSERT INTO solicitudes (Nombre_cliente, Email, Seleccion_producto, Comentarios, Fecha)
  VALUES (p_Nombre_cliente, p_Email, p_Seleccion_producto, p_Comentarios, p_Fecha);
END $$
DELIMITER ;

	-- ACTUALIZAR ESTADO DE SOLICITUD SELECCION POR ID
DELIMITER $$
CREATE PROCEDURE ActualizarEstadoSolicitud(IN p_IdSolicitud INT, IN p_EstadoSolicitud VARCHAR(45))
BEGIN
  UPDATE solicitudes SET Estado_solicitud = p_EstadoSolicitud WHERE IdSolicitudes = p_IdSolicitud;
END $$
DELIMITER ;

	-- ELIMINAR SOLICITUD POR ID
DELIMITER $$
CREATE PROCEDURE EliminarSolicitud(IN p_IdSolicitud INT)
BEGIN
  DELETE FROM solicitudes WHERE IdSolicitudes = p_IdSolicitud;
END $$
DELIMITER ;

	-- OBTENER SOLICITUDES
DELIMITER $$
CREATE PROCEDURE ObtenerSolicitudes()
BEGIN
  SELECT s.IdSolicitudes, s.Fecha, s.Nombre_cliente, s.Email, s.Comentarios, s.Estado_solicitud, GROUP_CONCAT(p.Nombre_producto SEPARATOR ', ') AS Productos
  FROM solicitudes s
  INNER JOIN solicitudes_has_productos sp ON s.IdSolicitudes = sp.Solicitudes_IdSolicitudes
  INNER JOIN productos p ON sp.Productos_IdProductos = p.IdProductos
  GROUP BY s.IdSolicitudes;
END $$
DELIMITER ;

	-- SELECCIONAR SOLICITUD POR MEDIO DE ID
DELIMITER $$
CREATE PROCEDURE SeleccionarSolicitud(IN p_IdSolicitud int)
BEGIN
  SELECT IdSolicitudes, Nombre_cliente, Email, Seleccion_producto, Comentarios, Fecha, Estado_solicitud
  FROM solicitudes WHERE IdSolicitudes = p_IdSolicitud;
END $$
DELIMITER ;


-- COTIZACIONES --------------------------------------------------------------------------------------
	-- INSERTAR DATOS
DELIMITER $$
CREATE PROCEDURE InsertarCotizacion(IN p_Administradores_IdAdministradores int, IN p_Nombre_cliente varchar(45), IN p_Email varchar(45), IN p_Seleccion_producto varchar(45), IN p_Comentarios varchar(200), IN p_Fecha date, IN p_Nombre_admin varchar(45), IN p_Estado_solicitud varchar(45))
BEGIN
  INSERT INTO cotizaciones (Administradores_IdAdministradores, Nombre_cliente, Email, Seleccion_producto, Comentarios, Fecha, Nombre_admin, Estado_solicitud)
  VALUES (p_Administradores_IdAdministradores, p_Nombre_cliente, p_Email, p_Seleccion_producto, p_Comentarios, p_Fecha, p_Nombre_admin, p_Estado_solicitud);
END $$
DELIMITER ;

	-- ELIMINR COTIZACIONES POR MEDIO DE ID
DELIMITER $$
CREATE PROCEDURE EliminarCotizacion(IN p_idCotizaciones INT)
BEGIN
  DELETE FROM cotizaciones WHERE idCotizaciones = p_idCotizaciones;
END $$
DELIMITER ;

	-- ACTUALIZAR COTIZACION POR MEDIO DE ID
DELIMITER $$
CREATE PROCEDURE ActualizarCotizacion(IN p_idCotizaciones INT, IN p_Nombre_cliente VARCHAR(45), IN p_Email VARCHAR(45), IN p_Seleccion_producto VARCHAR(100), IN p_Comentarios VARCHAR(45), IN p_Fecha DATE, IN p_Nombre_admin VARCHAR(45), IN p_Estado_solicitud VARCHAR(45))
BEGIN
  UPDATE cotizaciones 
  SET Nombre_cliente = p_Nombre_cliente, 
      Email = p_Email, 
      Seleccion_producto = p_Seleccion_producto, 
      Comentarios = p_Comentarios, 
      Fecha = p_Fecha, 
      Nombre_admin = p_Nombre_admin, 
      Estado_solicitud = p_Nombre_admin 
  WHERE idCotizaciones = p_idCotizaciones;
END $$
DELIMITER ;

	-- OBTENER COTIZACIONES
DELIMITER $$
CREATE PROCEDURE ObtenerCotizaciones()
BEGIN
  SELECT * FROM cotizaciones;
END $$
DELIMITER ;

	-- ELIMINAR SOLICITUDES CONTESTADAS POR ADMINISTRADOR QUE SE QUIERE ELIMINAR
DELIMITER $$
CREATE PROCEDURE EliminarCotizacionesAdministrador(IN administrador_id INT)
BEGIN
    DECLARE cotizacion_id INT;
    DECLARE cur CURSOR FOR
    SELECT IdCotizaciones FROM cotizaciones WHERE Administradores_IdAdministradores = administrador_id;
    DECLARE CONTINUE HANDLER FOR NOT FOUND SET cotizacion_id = NULL;
    START TRANSACTION;
    OPEN cur;
    read_loop: LOOP
        FETCH cur INTO cotizacion_id;
        IF cotizacion_id IS NULL THEN
            LEAVE read_loop;
        END IF;
        DELETE FROM Cotizaciones WHERE IdCotizaciones = cotizacion_id;
    END LOOP;
    CLOSE cur;
    COMMIT;
END $$
DELIMITER ;



-- SOLICITUDES_HAS_PRODUCTOS --------------------------------------------------------------------------------------
	-- INSERTAR
DELIMITER $$
CREATE PROCEDURE InsertarRelacionSolicitudProducto(IN p_IdSolicitud int, IN p_IdProducto int)
BEGIN
  INSERT INTO solicitudes_has_productos (Solicitudes_IdSolicitudes, Productos_IdProductos)
  VALUES (p_IdSolicitud, p_IdProducto);
END $$
DELIMITER ;

-- BORRAR RELACION SOLICITUD-PRODUCTO POR MEDIO DE ID
DELIMITER $$
CREATE PROCEDURE EliminarRelacionesProductoSolicitud(IN p_IdSolicitud int)
BEGIN
  DELETE FROM solicitudes_has_productos
  WHERE Solicitudes_IdSolicitudes = p_IdSolicitud;
END $$
DELIMITER ;

	-- OBTENER NOMBRES DE PRODUCTOS SELECCIONADOS POR ID DE LA SOLICITUD
DELIMITER $$
CREATE PROCEDURE ObtenerNombresProductos(IN p_IdSolicitud INT)
BEGIN
  SELECT productos.Nombre_producto
  FROM solicitudes_has_productos
  INNER JOIN productos ON solicitudes_has_productos.Productos_IdProductos = productos.IdProductos
  WHERE solicitudes_has_productos.Solicitudes_idSolicitudes = p_IdSolicitud;
END $$
DELIMITER ;

-- MENSAJES ---------------------------------------------------------------------------
	-- ELIMINAR REGISTROS POR MEDIO DE ID
    DELIMITER $$
CREATE PROCEDURE EliminarMensaje(IN p_IdMensaje INT)
BEGIN
  DELETE FROM mensajes WHERE IdMensaje = p_IdMensaje;
END $$
DELIMITER ;

    -- ACTUALIZAR REGISTROS
DELIMITER $$
CREATE PROCEDURE ActualizarMensaje(IN p_IdMensaje INT, IN p_Mensaje VARCHAR(50), IN p_Fecha DATETIME)
BEGIN
  UPDATE mensajes
  SET Mensaje = p_Mensaje, Fecha = p_Fecha
  WHERE IdMensaje = p_IdMensaje;
END $$
DELIMITER ;

    -- INSERTAR REGISTROS
DELIMITER $$
CREATE PROCEDURE InsertarMensaje(IN p_Mensaje VARCHAR(50), IN p_Fecha DATETIME)
BEGIN
  INSERT INTO mensajes (Mensaje, Fecha)
  VALUES (p_Mensaje, p_Fecha);
END $$
DELIMITER ;

	-- OBTENER TODO ORDENADO POR FECHA
DELIMITER $$
CREATE PROCEDURE ObtenerMensajes()
BEGIN
    SELECT * FROM mensajes ORDER BY Fecha DESC;
END $$
DELIMITER ;

	-- ELIMINAR REGISTROS AUTOMATICAMENTE
DELIMITER $$
CREATE PROCEDURE EliminarRegistrosExcedentes()
BEGIN
    DECLARE Contador INT;
    DECLARE deleteContador INT;

    SELECT COUNT(*) INTO Contador FROM mensajes;
    SET deleteContador = Contador - 40;
    IF deleteContador > 0 THEN
        SET @deleteSql = CONCAT('DELETE FROM mensajes ORDER BY Fecha ASC LIMIT ', deleteContador);
        PREPARE stmt FROM @deleteSql;
        EXECUTE stmt;
        DEALLOCATE PREPARE stmt;
    END IF;
END $$
DELIMITER ;

-- TRIGGERS ---------------------------------------------------------------------------
DELIMITER $$
CREATE TRIGGER Despues_Insertar_Administradores
AFTER INSERT ON administradores
FOR EACH ROW
BEGIN
   INSERT INTO mensajes (Mensaje, Fecha) VALUES (CONCAT('Nuevo administrador agregado: ', NEW.Username), NOW());
END $$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER Despues_Insertar_Cotizaciones
AFTER INSERT ON cotizaciones
FOR EACH ROW
BEGIN
    INSERT INTO mensajes (Mensaje, Fecha) VALUES ('Copia de cotización creada', NOW());
END $$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER Despues_Eliminar_productos
AFTER DELETE ON productos
FOR EACH ROW
BEGIN
    INSERT INTO mensajes (Mensaje, Fecha)
    VALUES (CONCAT('Producto: ', OLD.Nombre_producto, ' eliminado de la tabla productos en español'), NOW());
END $$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER After_Delete_Products
AFTER DELETE ON products
FOR EACH ROW
BEGIN
    INSERT INTO mensajes (Mensaje, Fecha)
    VALUES (CONCAT('Product: ', OLD.Name_product, ' deleted from the products table in English'), NOW());
END $$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER Despues_Insertar_solicitudes
AFTER INSERT ON solicitudes
FOR EACH ROW
BEGIN
    INSERT INTO mensajes (Mensaje, Fecha)
    VALUES (CONCAT('Nueva solicitud creada: ', NEW.Nombre_cliente), NOW());
END $$
DELIMITER ;


DELIMITER $$
CREATE TRIGGER Despues_Insertar_Solicitudes_Has_Productos
AFTER INSERT ON solicitudes_has_productos
FOR EACH ROW
BEGIN
    DECLARE Nombre_Solicitud VARCHAR(45); 
    DECLARE Productos_Vinculados VARCHAR(200);
    
    SELECT Nombre_cliente INTO Nombre_Solicitud FROM solicitudes WHERE IdSolicitudes = NEW.Solicitudes_IdSolicitudes;

    SELECT GROUP_CONCAT(p.Nombre_producto SEPARATOR ', ') INTO productos_vinculados FROM solicitudes_has_productos sp
    INNER JOIN productos p ON sp.Productos_IdProductos = p.IdProductos
    WHERE sp.Solicitudes_IdSolicitudes = NEW.Solicitudes_IdSolicitudes;

    INSERT INTO mensajes (Mensaje, Fecha) VALUES (CONCAT('Productos vinculados a la solicitud "', nombre_solicitud, '": ', productos_vinculados), NOW());
END $$
DELIMITER ;