CREATE TABLE Usuarios (
  id_usuario INT PRIMARY KEY,
  nombre VARCHAR(50),
  apellido VARCHAR(50),
  email VARCHAR(100),
  contraseña VARCHAR(255)
);

CREATE TABLE Productos (
  id_producto INT PRIMARY KEY,
  nombre VARCHAR(100),
  descripción TEXT,
  precio DECIMAL(10, 2),
  id_categoria INT,
  FOREIGN KEY (id_categoria) REFERENCES Categorías(id_categoria)
);

CREATE TABLE Pedidos (
  id_pedido INT PRIMARY KEY,
  id_usuario INT,
  fecha DATETIME,
  total DECIMAL(10, 2),
  FOREIGN KEY (id_usuario) REFERENCES Usuarios(id_usuario)
);

CREATE TABLE Pagos (
  id_pago INT PRIMARY KEY,
  id_pedido INT,
  método de pago VARCHAR(50),
  fecha DATETIME,
  FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
);

CREATE TABLE Envíos (
  id_envío INT PRIMARY KEY,
  id_pedido INT,
  dirección VARCHAR(255),
  fecha DATETIME,
  FOREIGN KEY (id_pedido) REFERENCES Pedidos(id_pedido)
);

CREATE TABLE Categorías (
  id_categoria INT PRIMARY KEY,
  nombre VARCHAR(50)
);

CREATE TABLE Proveedores (
  id_proveedor INT PRIMARY KEY,
  nombre VARCHAR(100),
  dirección VARCHAR(255)
);