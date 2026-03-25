package main

import (
	"encoding/json"
	"net/http"
)

func obtenerProductos(w http.ResponseWriter, r *http.Request) {
	rows, err := db.Query("select id_producto, nombre, precio from producto")
	if err != nil {
		http.Error(w, err.Error(), 500)
		return
	}
	defer rows.Close()

	var productos []Producto

	for rows.Next() {
		var p Producto
		rows.Scan(&p.IdProducto, &p.Nombre, &p.Precio)
		productos = append(productos, p)
	}

	w.Header().Set("Content-Type", "application/json")
	json.NewEncoder(w).Encode(productos)
}