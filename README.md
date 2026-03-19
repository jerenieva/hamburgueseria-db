# 🍔 Hamburguesería DB

Proyecto simple de base de datos desarrollado en PostgreSQL para la gestión de pedidos de una hamburguesería. Incluye diseño relacional, funciones SQL y una integración básica con Go.

---

## 📌 Descripción

Este proyecto simula el funcionamiento de un sistema de pedidos, permitiendo gestionar clientes, productos, pedidos y sus detalles.

El objetivo es aplicar conceptos fundamentales de bases de datos relacionales como:

* claves primarias y foráneas
* normalización básica
* consultas SQL
* funciones en PostgreSQL

---

## 🛠️ Tecnologías utilizadas

* PostgreSQL
* SQL (DDL, DML, funciones)
* Go (integración con base de datos)

---

## 🧱 Estructura de la base de datos

El sistema está compuesto por las siguientes tablas:

* **cliente** → información de los clientes
* **producto** → productos disponibles (hamburguesas, combos, etc.)
* **pedido** → pedidos realizados por los clientes
* **detalle_pedido** → productos incluidos en cada pedido

---

## ⚙️ Funcionalidades

* Registro de clientes
* Gestión de productos
* Creación de pedidos
* Asociación de productos a pedidos
* Cálculo del total vendido por día mediante función SQL

---

## 📊 Función destacada

### total_vendido(fecha)

Calcula el total de ventas realizadas en una fecha específica.

```sql
select total_vendido('2026-03-19');
```

---

## 📂 Estructura del proyecto

```
hamburgueseria-db/
│
├── sql/
│   ├── schema.sql
│   ├── inserts.sql
│   ├── queries.sql
│
├── go-app/
│   └── main.go
│
└── README.md
```

---

## 🚀 Cómo ejecutar

1. Crear la base de datos en PostgreSQL
2. Ejecutar el archivo `schema.sql`
3. Insertar datos con `inserts.sql`
4. Ejecutar consultas o funciones desde `queries.sql`

---

## 🔗 Integración con Go

El proyecto incluye un ejemplo básico de conexión a PostgreSQL utilizando Go, permitiendo ejecutar consultas y obtener resultados desde una aplicación.

---

## 📈 Posibles mejoras

* Implementar API REST en Go
* Agregar control de stock
* Incorporar autenticación de usuarios
* Optimizar consultas utilizando JOINs

---

## 👨‍💻 Autor

Jeremías Nieva
