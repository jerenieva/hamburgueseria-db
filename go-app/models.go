package main

type Producto struct {
	IdProducto int     `json:"id"`
	Nombre      string  `json:"nombre"`
	Precio      float64 `json:"precio"`
}