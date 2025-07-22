USE inventario_datos;

CREATE TABLE IF NOT EXISTS inventario_servicios_apis (
    Id INT PRIMARY KEY,
    Tipo VARCHAR(100),
    Nombre_producto_API VARCHAR(255),
    Version_producto VARCHAR(50),
    Nombre_de_servicio_API VARCHAR(255),
    Nombre_Tecnico_API VARCHAR(255),
    Componente_menor VARCHAR(255),
    Nombre_equipo VARCHAR(255),
    Servicio_proveedor VARCHAR(255),
    Consumidores TEXT
);

CREATE TABLE IF NOT EXISTS opensearch_filtrado (
    Id INT PRIMARY KEY,
    Hora_de_transaccion DATETIME,
    Herramienta_desarrollo VARCHAR(255),
    Plataforma_de_despliegue VARCHAR(255),
    Nombre_de_servicio VARCHAR(255),
    Estado_de_respuesta VARCHAR(255),
    Detalle_de_error TEXT,
    Causas TEXT,
    Nombre_de_operacion VARCHAR(255),
    Id_consumidor VARCHAR(255),
    Id_mensaje VARCHAR(255),
    Version VARCHAR(50),
    Año_de_ingestion INT,
    Mes_de_ingestion INT,
    Dia_de_ingestion INT,
    Inventario_Id INT
);
