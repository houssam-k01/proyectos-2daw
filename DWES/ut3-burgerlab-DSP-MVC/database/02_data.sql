-- Datos coherentes con las imágenes locales de assets/img/catalogo.
INSERT INTO categoria (id, nombre) VALUES (1, 'Burgers');
INSERT INTO categoria (id, nombre) VALUES (2, 'Chicken');
INSERT INTO categoria (id, nombre) VALUES (3, 'Complementos');
INSERT INTO categoria (id, nombre) VALUES (4, 'Postres');
INSERT INTO categoria (id, nombre) VALUES (5, 'Bebidas');
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (1, 'Classic Smash', 'Doble carne, cheddar, pepinillo y salsa Lab', 9.9, '/assets/img/catalogo/classic-smash.webp', 1, 1);
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (2, 'Truffle Melt', 'Carne, setas, queso fundido y crema de trufa', 12.5, '/assets/img/catalogo/truffle-melt.webp', 1, 1);
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (3, 'Smoky Bacon', 'Doble smash, bacon crujiente y cebolla ahumada', 11.9, '/assets/img/catalogo/smoky-bacon.webp', 1, 1);
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (4, 'Firehouse Crunch', 'Burger picante con aros crujientes y BBQ', 12.2, '/assets/img/catalogo/firehouse-crunch.webp', 1, 1);
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (5, 'Crispy Chicken', 'Pollo crujiente, lechuga y mayonesa cítrica', 9.5, '/assets/img/catalogo/crispy-chicken.webp', 1, 2);
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (6, 'Buffalo Wings', 'Alitas glaseadas con salsa picante suave', 7.8, '/assets/img/catalogo/buffalo-wings.webp', 0, 2);
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (7, 'Golden Nuggets', 'Bocados de pollo marinados y empanados', 6.9, '/assets/img/catalogo/golden-nuggets.webp', 0, 2);
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (8, 'Lab Fries', 'Patatas doradas con sal especiada', 4.2, '/assets/img/catalogo/lab-fries.webp', 0, 3);
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (9, 'Loaded Reactor Fries', 'Patatas con cheddar, bacon y cebollino', 6.8, '/assets/img/catalogo/loaded-fries.webp', 1, 3);
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (10, 'Onion Orbit', 'Aros de cebolla con rebozado crujiente', 4.9, '/assets/img/catalogo/onion-orbit.webp', 0, 3);
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (11, 'BBQ Stack', 'Doble carne con salsa BBQ oscura', 11.7, '/assets/img/catalogo/bbq-stack.webp', 0, 1);
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (12, 'Jalapeño Lab', 'Cheddar, jalapeño y crema especiada', 11.4, '/assets/img/catalogo/jalapeno-lab.webp', 0, 1);
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (13, 'Sunrise Smash', 'Carne, huevo, bacon y cheddar', 12.1, '/assets/img/catalogo/sunrise-smash.webp', 1, 1);
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (14, 'Verde Crunch', 'Burger vegetal con aguacate y pico de gallo', 10.6, '/assets/img/catalogo/verde-crunch.webp', 0, 1);
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (15, 'Hot Chicken Slaw', 'Pollo picante, col crujiente y pepinillo', 10.2, '/assets/img/catalogo/hot-chicken-slaw.webp', 0, 2);
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (16, 'Berry Shake', 'Batido de fresa con nata', 5.4, '/assets/img/catalogo/berry-shake.webp', 0, 5);
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (17, 'Cocoa Shake', 'Batido intenso de cacao', 5.4, '/assets/img/catalogo/cocoa-shake.webp', 0, 5);
INSERT INTO producto (id, nombre, descripcion, precio, imagen, destacado, categoria_id) VALUES (18, 'Berry Cheesecake', 'Tarta cremosa con frutos rojos', 5.9, '/assets/img/catalogo/berry-cheesecake.webp', 1, 4);

COMMIT;
