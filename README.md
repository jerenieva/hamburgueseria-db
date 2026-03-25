# 🍔 Hamburguesería DB + API

Proyecto backend desarrollado en **PostgreSQL + Go**, que simula la gestión de pedidos de una hamburguesería. Incluye diseño de base de datos relacional y una API REST para consultar información.

---

## 📌 Descripción

Este proyecto implementa un sistema simple de pedidos, permitiendo gestionar clientes, productos y ventas.

Además, expone una API desarrollada en Go que permite acceder a los datos mediante endpoints HTTP.

---

## 🛠️ Tecnologías utilizadas

* PostgreSQL
* SQL (DDL, DML, funciones)
* Go (Golang)
* JSON / HTTP

---

## 🧱 Estructura del proyecto

```
hamburgueseria-db/
│
├── sql/
│   ├── schema.sql
│   ├── create_db.sql
│   ├── create_pk_fk.sql
│   ├── drop_pk_fk.sql
│   ├── inserts.sql
│   ├── queries.sql
│   └── total_vendido.sql
│
├── go-app/
│   ├── main.go
│   ├── db.go
│   ├── handlers.go
│   ├── models.go
│
└── README.md
```

---

## ⚙️ Base de datos

El sistema está compuesto por las siguientes tablas:

* **cliente** → información de clientes
* **producto** → productos disponibles
* **pedido** → pedidos realizados
* **detalle_pedido** → productos por pedido

Incluye:

* claves primarias y foráneas
* restricciones
* función `total_vendido(fecha)`

---

## 🌐 API REST

La API permite consultar datos desde la base de datos.

### ▶️ Ejecutar

```bash
cd go-app
go run .
```

Servidor disponible en:

```
http://localhost:8080
```

---

## 📡 Endpoints

### 🔹 Obtener productos

```
GET /productos
```

Respuesta:

```json
[
  {
    "id": 1,
    "nombre": "hamburguesa simple",
    "precio": 2500
  }
]
```

---

## 🔌 Conexión a base de datos

Configurada en `db.go`:

```go
connStr := "user=postgres password=TU_PASSWORD dbname=hamburgueseria_db sslmode=disable"
```

---

## 🚀 Cómo usar el proyecto

1. Crear base de datos:

```sql
create database hamburgueseria_db;
```

2. Ejecutar:

* `schema.sql`
* `create_pk_fk.sql`
* `inserts.sql`

3. Ejecutar la API:

```bash
go run .
```

4. Probar en navegador:

```
http://localhost:8080/productos
```

---

## 📈 Funcionalidades

* Diseño de base de datos relacional
* Inserción y consulta de datos
* Función SQL para cálculo de ventas
* API REST en Go
* Serialización a JSON

---

## 🔮 Posibles mejoras

* Endpoint para calcular total vendido por fecha
* Creación de pedidos desde la API
* Validaciones y manejo de errores avanzado
* Uso de router (gorilla/mux)

---

## 👨‍💻 Autor

Jeremías Nieva
