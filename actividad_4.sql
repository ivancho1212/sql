-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 27-05-2023 a las 05:22:44
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `actividad_4`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `flag` varchar(45) NOT NULL,
  `capital` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `countries`
--

INSERT INTO `countries` (`id`, `name`, `flag`, `capital`) VALUES
(1, 'Colombia', 'Amarillo, Azul, Rojo', 'Bogota'),
(2, 'Argentina', 'Celeste, Blanco, Celeste', 'Buenos Aires');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `departaments`
--

CREATE TABLE `departaments` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `countries_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `departaments`
--

INSERT INTO `departaments` (`id`, `name`, `countries_id`) VALUES
(1, 'Santander', 1),
(2, 'Norte De Santander', 1),
(3, 'Tolima', 1),
(4, 'Magdalena', 1),
(5, 'Sucre', 1),
(6, 'Arauca', 1),
(7, 'Meta', 1),
(8, 'Amazona', 1),
(9, 'Guajira', 1),
(10, 'Cundinamarca', 1),
(11, 'Boyaca', 1),
(12, 'Cauca', 1),
(13, 'Valle del Cauca', 1),
(14, 'Nariño', 1),
(15, 'Risaralda', 1),
(16, 'Choco', 1),
(17, 'Vichada', 1),
(18, 'Atlantico', 1),
(19, 'Antioquia', 1),
(20, 'Huila', 1),
(21, 'Buenos Aires', 2),
(22, 'Cordoba', 2),
(23, 'Chaco', 2),
(24, 'Chubut', 2),
(25, 'Catamarca', 2),
(26, 'Entre Rios', 2),
(27, 'Formosa', 2),
(28, 'Jujuy', 2),
(29, 'La Pampa', 2),
(30, 'La Rioja', 2),
(31, 'Mendoza', 2),
(32, 'Misiones', 2),
(33, 'Neuquen', 2),
(34, 'Rio Negro', 2),
(35, 'Salta', 2),
(36, 'San Juan', 2),
(37, 'San Luis', 2),
(38, 'Santa Cruz', 2),
(39, 'Santa Fe', 2),
(40, 'Santiago Del Estero', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `schools`
--

CREATE TABLE `schools` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `phone` varchar(45) NOT NULL,
  `countries_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `schools`
--

INSERT INTO `schools` (`id`, `name`, `address`, `phone`, `countries_id`) VALUES
(1, 'Tomas alva edinson', 'Cra 12 13-5', '2424244', 2),
(2, 'Campo alegre', 'Cra 22 55-32', '2222222', 1),
(3, 'Nuevo cambrige', 'Calle 24 25-30', '3333333', 1),
(4, 'La quinta del puente', 'Cra 12 5-32', '4444444', 1),
(5, 'San jorge de inglaterra', 'Calle 20 10-3', '5555555', 1),
(6, 'Vermont', 'Cra 103 5-33', '6666666', 1),
(7, 'Camino academy', 'Cra 2 105-3', '7777777', 1),
(8, 'Bilingüe diana oese', 'Calle 140 6-13', '8888888', 1),
(9, 'Colombo americano', 'Cra 7 123-5', '9999999', 1),
(10, 'Gimnasio calibio', 'Calle 40 12-13', '1212121', 1),
(11, 'Bethemitas', 'Cra 65 33-52', '1313131', 1),
(12, 'Bilingüe cinco rios', 'Calle 20 64-13', '1414144', 2),
(13, 'Los arroyos', 'Cra 3 13-53', '1515151', 2),
(14, 'Pucara', 'Calle 180 62-13', '1616166', 2),
(15, 'Bilingüe los olivos', 'Cra 7 153-53', '1717171', 2),
(16, 'Bilingüe portezuelo', 'Calle 10 64-13', '1818181', 2),
(17, 'Bilingüe crisol', 'Cra 56 103-2', '1919191', 2),
(18, 'Pilar', 'Calle 160 6-43', '2020202', 2),
(19, 'Bilingüe candiles', 'Cra 45 12-53', '2121211', 2),
(20, 'Casa salesiana san jose', 'Calle 12 62-13', '2323232', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `lastname` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `date_birth` varchar(45) NOT NULL,
  `departaments_id` int(11) NOT NULL,
  `schools_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `lastname`, `email`, `password`, `date_birth`, `departaments_id`, `schools_id`) VALUES
(1, 'Maira', 'Medina', 'maira@yahoo.com', '1234', '2005-08-12', 1, 2),
(2, 'Daniela', 'Polania', 'polania@gmail.com', '1212', '2001-02-28', 1, 2),
(3, 'Amaury', 'Pinto', 'amaury@gmail.com', '1234', '1989-07-12', 2, 9),
(4, 'Emiliano ', 'Zapata', 'emi@gmail.com', '1234', '2001-08-22', 2, 9),
(5, 'Jeronimo', 'Alvarez', 'jero@gmail.com', '1234', '2003-09-22', 3, 3),
(6, 'Karen', 'Jimenez', 'keren@hotmail.com', '1234', '1994-05-15', 3, 3),
(7, 'Daniela', 'Hernandez', 'dani@yahoo.com', '1234', '1964-01-01', 4, 4),
(8, 'Jorge', 'Zapateiro', 'jorg@hotmail.com', '1234', '1998-12-24', 4, 4),
(9, 'Diego', 'Rodriguez', 'diego@latinchat.com', '1234', '1986-11-21', 5, 5),
(10, 'Santiago', 'Herrera', 'santi@outlook.es', '1234', '2004-10-04', 5, 5),
(11, 'Maicol', 'Medina', 'maicol@hotmail.com', '1234', '1999-02-02', 6, 6),
(12, 'Fernando', 'Gonzalez ', 'gonzo@gmail.com', '1234', '1998-06-10', 6, 6),
(13, 'Luis', 'Rojas', 'rojo@hotmail.com', '1234', '2005-06-03', 7, 7),
(14, 'Maria', 'Hernandez', 'mara@gmail.com', '1234', '2000-03-18', 7, 7),
(15, 'Sofia', 'Pedrasa', 'sofi@yahoo.com', '1233', '1985-01-14', 10, 8),
(16, 'Carolina', 'Ramirez', 'caro@gmail.com', '1234', '1990-07-06', 21, 1),
(17, 'Brayan', 'Medina', 'elbrayan@yahoo.com', '12345', '1992-10-13', 21, 1),
(18, 'Stiven', 'Lara', 'stiven@gmail.com', '1234', '1992-12-22', 22, 12),
(19, 'Carlos ', 'Villagran', 'villacarlos@gmail.com', '1234', '1984-05-15', 22, 12),
(20, 'Roberto', 'Gomez', 'robert@hotmail.com', '1234', '2008-02-10', 23, 13),
(21, 'Elvira', 'Surmay', 'surmay@yahoo.com', '1212', '1980-07-01', 23, 13),
(22, 'Ramon', 'Valdez', 'rondamon@gmail.com', '1234', '1996-12-12', 24, 14),
(23, 'Jhon', 'Sena', 'sena@gmail.com', '1234', '2003-09-14', 24, 14),
(24, 'Orlando', 'Blum', 'blum@gmail.com', '1234', '1992-10-08', 29, 15),
(25, 'Tatiana', 'Mendoza', 'tata@gmail.com', '1234', '2004-03-09', 29, 15),
(26, 'Juan', 'Amadeo', 'amadeoeldesertor@gmail.com', '1234', '2000-05-12', 31, 16),
(27, 'Camilo', 'Cinfuentes', 'cinfuentes@gmail.com', '1234', '1994-01-25', 31, 16),
(28, 'Luisa', 'Avendaño', 'lu@gmail.com', '1234', '2001-07-20', 36, 17),
(29, 'Angie', 'Herrera', 'angie@hotmail.com', '1234', '1997-07-14', 36, 17),
(30, 'Lorena', 'Suarez', 'lore@gmail.com', '1234', '2005-01-23', 40, 19);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `departaments`
--
ALTER TABLE `departaments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id` (`countries_id`);

--
-- Indices de la tabla `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`),
  ADD KEY `countries_id` (`countries_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `schools_id` (`schools_id`),
  ADD KEY `departaments_id` (`departaments_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `departaments`
--
ALTER TABLE `departaments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `departaments`
--
ALTER TABLE `departaments`
  ADD CONSTRAINT `departaments_ibfk_1` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`);

--
-- Filtros para la tabla `schools`
--
ALTER TABLE `schools`
  ADD CONSTRAINT `schools_ibfk_1` FOREIGN KEY (`countries_id`) REFERENCES `countries` (`id`);

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`departaments_id`) REFERENCES `departaments` (`id`),
  ADD CONSTRAINT `users_ibfk_2` FOREIGN KEY (`schools_id`) REFERENCES `schools` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
