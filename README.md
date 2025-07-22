# Proyecto ETL: Inventario de Servicios y APIs

Este proyecto realiza un proceso ETL (Extracción, Transformación y Carga) para integrar datos de dos fuentes distintas: un inventario de servicios y APIs, y registros de OpenSearch. Los datos son limpiados, normalizados y cargados a una base de datos MySQL para su análisis y visualización posterior, por ejemplo en Looker Studio.

---

## 📁 Estructura del Proyecto

```bash
├── datos/
│ ├── inventario_servicios_apis.csv
│ └── opensearch_filtrado.csv
├── scripts/
│ ├── base_datos.sql
│ ├── tablas.sql
│ └── etl_pipeline.py
├── README.md
```

---

## 🚀 Flujo ETL

### 1. Extracción
Se cargan los datos desde archivos CSV ubicados en la carpeta `datos/`.

### 2. Transformación
- Se renombran y seleccionan columnas clave.
- Se normaliza un campo común (`nombre_clave`) para permitir el enlace entre los dos conjuntos de datos (remoción de acentos, espacios y símbolos).
- Se validan tipos de datos y se manejan valores nulos.

### 3. Carga
- Se crea la base de datos `inventario_datos` (si no existe).
- Se crean las tablas `inventario_servicios_apis` y `opensearch_filtrado`.
- Se insertan los datos limpios en las tablas.
- Se establece una clave de relación (`nombre_clave`) para facilitar consultas conjuntas.

---

## 🧰 Requisitos

- Python 3.11+
- MySQL
- Librerias Python:
  - pandas
  - mysql-connector-python
  - unidecode

Instala los paquetes necesarios:

```bash
pip install pandas mysql-connector-python unidecode

---

## 🚀 Flujo ETL

### 1. Extracción

Se cargan los datos desde archivos CSV ubicados en la carpeta `datos/`.

### 2. Transformación

- Se renombran y seleccionan columnas clave.
- Se normaliza un campo común (`nombre_clave`) para permitir el enlace entre los dos conjuntos de datos (remoción de acentos, espacios y símbolos).
- Se validan tipos de datos y se manejan valores nulos.

### 3. Carga

- Se crea la base de datos `inventario_datos` (si no existe).
- Se crean las tablas `inventario_servicios_apis` y `opensearch_filtrado`.
- Se insertan los datos limpios en las tablas.
- Se establece una clave de relación (`nombre_clave`) para facilitar consultas conjuntas.

---

## 🧰 Requisitos

- Python 3.8+
- MySQL Server
- Paquetes Python:
  - pandas
  - mysql-connector-python
  - unidecode

Instala los paquetes necesarios:

```bash
pip install pandas mysql-connector-python unidecode

⚙️ Configuración de Base de Datos

mysql -u root -p < scripts/base_datos.sql

Ejecuta el script tablas.sql para crear las tablas:

mysql -u root -p inventario_datos < scripts/tablas.sql


🔐 Conexión externa para Looker Studio
Para permitir acceso a Looker Studio de forma segura:

Crea un usuario limitado en MySQL:

sql
Copiar
Editar
CREATE USER 'usuario_looker'@'%' IDENTIFIED BY 'password.123';
GRANT SELECT ON inventario_datos.* TO 'usuario_looker'@'%';
FLUSH PRIVILEGES;
Asegúrate de exponer el puerto 3306 con seguridad o replica la base de datos a un servidor en la nube (Google Cloud SQL, PlanetScale, etc.).


✍️ Autores
Leandro Rivera Ríos, 
Proyecto desarrollado en el contexto de integración de datos corporativos para análisis y visualización de consumo de APIs y servicios.
