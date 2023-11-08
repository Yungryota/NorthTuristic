-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-08-2023 a las 02:09:08
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `northdb`
DROP SCHEMA IF EXISTS `northdb` ;
-- -----------------------------------------------------
-- Schema northdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `northdb` DEFAULT CHARACTER SET utf8 ;
SHOW WARNINGS;
USE `northdb` ;


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrativo`
--

CREATE TABLE `administrativo` (
  `idAdministrativo` int(11) NOT NULL,
  `Persona_run` int(11) NOT NULL,
  `Persona_Empresa_idEmpresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add administrativo', 7, 'add_administrativo'),
(26, 'Can change administrativo', 7, 'change_administrativo'),
(27, 'Can delete administrativo', 7, 'delete_administrativo'),
(28, 'Can view administrativo', 7, 'view_administrativo'),
(29, 'Can add cliente', 8, 'add_cliente'),
(30, 'Can change cliente', 8, 'change_cliente'),
(31, 'Can delete cliente', 8, 'delete_cliente'),
(32, 'Can view cliente', 8, 'view_cliente'),
(33, 'Can add destino', 9, 'add_destino'),
(34, 'Can change destino', 9, 'change_destino'),
(35, 'Can delete destino', 9, 'delete_destino'),
(36, 'Can view destino', 9, 'view_destino'),
(37, 'Can add destino has viaje', 10, 'add_destinohasviaje'),
(38, 'Can change destino has viaje', 10, 'change_destinohasviaje'),
(39, 'Can delete destino has viaje', 10, 'delete_destinohasviaje'),
(40, 'Can view destino has viaje', 10, 'view_destinohasviaje'),
(41, 'Can add empresa', 11, 'add_empresa'),
(42, 'Can change empresa', 11, 'change_empresa'),
(43, 'Can delete empresa', 11, 'delete_empresa'),
(44, 'Can view empresa', 11, 'view_empresa'),
(45, 'Can add hotel', 12, 'add_hotel'),
(46, 'Can change hotel', 12, 'change_hotel'),
(47, 'Can delete hotel', 12, 'delete_hotel'),
(48, 'Can view hotel', 12, 'view_hotel'),
(49, 'Can add persona', 13, 'add_persona'),
(50, 'Can change persona', 13, 'change_persona'),
(51, 'Can delete persona', 13, 'delete_persona'),
(52, 'Can view persona', 13, 'view_persona'),
(53, 'Can add reservacion', 14, 'add_reservacion'),
(54, 'Can change reservacion', 14, 'change_reservacion'),
(55, 'Can delete reservacion', 14, 'delete_reservacion'),
(56, 'Can view reservacion', 14, 'view_reservacion'),
(57, 'Can add servicio', 15, 'add_servicio'),
(58, 'Can change servicio', 15, 'change_servicio'),
(59, 'Can delete servicio', 15, 'delete_servicio'),
(60, 'Can view servicio', 15, 'view_servicio'),
(61, 'Can add viaje', 16, 'add_viaje'),
(62, 'Can change viaje', 16, 'change_viaje'),
(63, 'Can delete viaje', 16, 'delete_viaje'),
(64, 'Can view viaje', 16, 'view_viaje'),
(65, 'Can add viaje', 17, 'add_viaje'),
(66, 'Can change viaje', 17, 'change_viaje'),
(67, 'Can delete viaje', 17, 'delete_viaje'),
(68, 'Can view viaje', 17, 'view_viaje'),
(69, 'Can add producto', 18, 'add_producto'),
(70, 'Can change producto', 18, 'change_producto'),
(71, 'Can delete producto', 18, 'delete_producto'),
(72, 'Can view producto', 18, 'view_producto'),
(73, 'Can add venta', 19, 'add_venta'),
(74, 'Can change venta', 19, 'change_venta'),
(75, 'Can delete venta', 19, 'delete_venta'),
(76, 'Can view venta', 19, 'view_venta'),
(77, 'Can add carrito', 20, 'add_carrito'),
(78, 'Can change carrito', 20, 'change_carrito'),
(79, 'Can delete carrito', 20, 'delete_carrito'),
(80, 'Can view carrito', 20, 'view_carrito'),
(81, 'Can add item carrito', 21, 'add_itemcarrito'),
(82, 'Can change item carrito', 21, 'change_itemcarrito'),
(83, 'Can delete item carrito', 21, 'delete_itemcarrito'),
(84, 'Can view item carrito', 21, 'view_itemcarrito'),
(85, 'Can add viaje venta', 22, 'add_viajeventa'),
(86, 'Can change viaje venta', 22, 'change_viajeventa'),
(87, 'Can delete viaje venta', 22, 'delete_viajeventa'),
(88, 'Can view viaje venta', 22, 'view_viajeventa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$rTCzB19toU9BGclgVwTwdi$CHHhw6BxkTzTNuUUmhsHdSqRUarkk8lD9+9CoHoSqF0=', '2023-08-22 23:56:26.678725', 0, 'Riota', '', '', '', 0, 1, '2023-08-22 22:17:40.847370');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `Persona_run` int(11) NOT NULL,
  `Persona_Empresa_idEmpresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destino`
--

CREATE TABLE `destino` (
  `idDestino` int(11) NOT NULL,
  `direccion destino` varchar(45) DEFAULT NULL,
  `Viaje_idViaje` int(11) NOT NULL,
  `Viaje_Servicio_idServicio` int(11) NOT NULL,
  `Viaje_Servicio_Empresa_idEmpresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `destino_has_viaje`
--

CREATE TABLE `destino_has_viaje` (
  `Destino_idDestino` int(11) NOT NULL,
  `Destino_Viaje_idViaje` int(11) NOT NULL,
  `Destino_Viaje_Servicio_idServicio` int(11) NOT NULL,
  `Destino_Viaje_Servicio_Empresa_idEmpresa` int(11) NOT NULL,
  `Viaje_idViaje` int(11) NOT NULL,
  `Viaje_Servicio_idServicio` int(11) NOT NULL,
  `Viaje_Servicio_Empresa_idEmpresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(18, 'm_producto', 'producto'),
(17, 'm_producto', 'viaje'),
(20, 'm_venta', 'carrito'),
(21, 'm_venta', 'itemcarrito'),
(19, 'm_venta', 'venta'),
(22, 'm_venta', 'viajeventa'),
(7, 'Norte', 'administrativo'),
(8, 'Norte', 'cliente'),
(9, 'Norte', 'destino'),
(10, 'Norte', 'destinohasviaje'),
(11, 'Norte', 'empresa'),
(12, 'Norte', 'hotel'),
(13, 'Norte', 'persona'),
(14, 'Norte', 'reservacion'),
(15, 'Norte', 'servicio'),
(16, 'Norte', 'viaje'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'Norte', '0001_initial', '2023-08-22 22:17:17.662328'),
(2, 'contenttypes', '0001_initial', '2023-08-22 22:17:17.685349'),
(3, 'auth', '0001_initial', '2023-08-22 22:17:17.867077'),
(4, 'admin', '0001_initial', '2023-08-22 22:17:17.910116'),
(5, 'admin', '0002_logentry_remove_auto_add', '2023-08-22 22:17:17.916121'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2023-08-22 22:17:17.921125'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-08-22 22:17:17.952154'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-08-22 22:17:17.983182'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-08-22 22:17:18.010207'),
(10, 'auth', '0004_alter_user_username_opts', '2023-08-22 22:17:18.016213'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-08-22 22:17:18.036887'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-08-22 22:17:18.038888'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-08-22 22:17:18.044894'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-08-22 22:17:18.055904'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-08-22 22:17:18.064912'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-08-22 22:17:18.089935'),
(17, 'auth', '0011_update_proxy_permissions', '2023-08-22 22:17:18.098944'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-08-22 22:17:18.107952'),
(19, 'sessions', '0001_initial', '2023-08-22 22:17:18.121964'),
(20, 'm_venta', '0001_initial', '2023-08-22 23:56:40.480351'),
(21, 'm_producto', '0001_initial', '2023-08-22 23:56:40.489358'),
(22, 'm_producto', '0002_venta_det_compra', '2023-08-22 23:56:40.578439'),
(23, 'm_producto', '0003_alter_det_compra_venta_delete_venta', '2023-08-22 23:56:40.745591'),
(24, 'm_producto', '0004_delete_det_compra', '2023-08-22 23:56:40.751597'),
(25, 'm_producto', '0005_viaje', '2023-08-22 23:56:40.761606'),
(26, 'm_producto', '0006_alter_producto_nombre', '2023-08-22 23:56:40.778621'),
(27, 'm_producto', '0007_alter_viaje_duracion', '2023-08-22 23:56:40.797638'),
(28, 'm_producto', '0008_delete_producto', '2023-08-22 23:56:40.803644'),
(29, 'm_producto', '0009_producto_alter_viaje_foto', '2023-08-22 23:56:40.812652'),
(30, 'm_venta', '0002_carrito_itemcarrito_det_compra', '2023-08-22 23:56:40.926756'),
(31, 'm_venta', '0003_remove_det_compra_titulo_remove_det_compra_total_com_and_more', '2023-08-22 23:56:40.960786'),
(32, 'm_venta', '0004_venta_fecha_venta', '2023-08-22 23:56:40.971797'),
(33, 'm_venta', '0005_productoventa_delete_det_compra', '2023-08-22 23:56:41.026846'),
(34, 'm_venta', '0006_remove_productoventa_precio_unitario', '2023-08-22 23:56:41.035855'),
(35, 'm_venta', '0007_remove_itemcarrito_producto_and_more', '2023-08-22 23:56:41.184990'),
(36, 'm_venta', '0008_rename_productoventa_viajeventa_and_more', '2023-08-22 23:56:41.228030'),
(37, 'm_venta', '0009_rename_titulo_itemcarrito_viaje', '2023-08-22 23:56:41.294089'),
(38, 'm_venta', '0010_remove_itemcarrito_cantidad_and_more', '2023-08-22 23:56:41.313106');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('5vzgq9osn8v75a84tqmqis5ig60cth6f', 'e30:1qYbPy:VfcGa7uK7N4gFMNdLGh1oBuDxeozjg-NmSdajDX740I', '2023-09-06 00:08:14.034789');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `idEmpresa` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `direccion` varchar(45) DEFAULT NULL,
  `numero` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hotel`
--

CREATE TABLE `hotel` (
  `idHotel` int(11) NOT NULL,
  `nombre hotel` varchar(45) DEFAULT NULL,
  `Destino_idDestino` int(11) NOT NULL,
  `Destino_Viaje_idViaje` int(11) NOT NULL,
  `Destino_Viaje_Servicio_idServicio` int(11) NOT NULL,
  `Destino_Viaje_Servicio_Empresa_idEmpresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m_producto_producto`
--

CREATE TABLE `m_producto_producto` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m_producto_viaje`
--

CREATE TABLE `m_producto_viaje` (
  `id` bigint(20) NOT NULL,
  `titulo` varchar(20) NOT NULL,
  `ciudad` varchar(20) NOT NULL,
  `descripcion` varchar(400) NOT NULL,
  `duracion` varchar(20) NOT NULL,
  `precio` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `m_producto_viaje`
--

INSERT INTO `m_producto_viaje` (`id`, `titulo`, `ciudad`, `descripcion`, `duracion`, `precio`, `cantidad`, `foto`) VALUES
(101, 'Lol', 'Tokyo', 'Hola viajas a Japon sis', '30 mins', 10000, 2, 'si');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m_venta_carrito`
--

CREATE TABLE `m_venta_carrito` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `m_venta_carrito`
--

INSERT INTO `m_venta_carrito` (`id`, `user_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m_venta_itemcarrito`
--

CREATE TABLE `m_venta_itemcarrito` (
  `id` bigint(20) NOT NULL,
  `carrito_id` bigint(20) NOT NULL,
  `viaje_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `m_venta_itemcarrito`
--

INSERT INTO `m_venta_itemcarrito` (`id`, `carrito_id`, `viaje_id`) VALUES
(2, 1, 101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m_venta_venta`
--

CREATE TABLE `m_venta_venta` (
  `id` bigint(20) NOT NULL,
  `total_cant` varchar(20) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `fecha_venta` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `m_venta_viajeventa`
--

CREATE TABLE `m_venta_viajeventa` (
  `id` bigint(20) NOT NULL,
  `venta_id` bigint(20) NOT NULL,
  `titulo_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `persona`
--

CREATE TABLE `persona` (
  `run` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `password` varchar(100) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `edad` int(11) DEFAULT NULL,
  `correo` varchar(45) DEFAULT NULL,
  `Empresa_idEmpresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservacion`
--

CREATE TABLE `reservacion` (
  `idReservacion` int(11) NOT NULL,
  `fecha` datetime DEFAULT NULL,
  `tipo` varchar(45) DEFAULT NULL,
  `promocion` varchar(45) DEFAULT NULL,
  `Hotel_idHotel` int(11) NOT NULL,
  `Hotel_Destino_idDestino` int(11) NOT NULL,
  `Hotel_Destino_Viaje_idViaje` int(11) NOT NULL,
  `Hotel_Destino_Viaje_Servicio_idServicio` int(11) NOT NULL,
  `Hotel_Destino_Viaje_Servicio_Empresa_idEmpresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicio`
--

CREATE TABLE `servicio` (
  `idServicio` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `metodo de pago` varchar(45) DEFAULT NULL,
  `Empresa_idEmpresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viaje`
--

CREATE TABLE `viaje` (
  `idViaje` int(11) NOT NULL,
  `Servicio_idServicio` int(11) NOT NULL,
  `Servicio_Empresa_idEmpresa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Volcado de datos para la tabla `viaje`
--

INSERT INTO `viaje` (`idViaje`, `Servicio_idServicio`, `Servicio_Empresa_idEmpresa`) VALUES
(101, 101, 101);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrativo`
--
ALTER TABLE `administrativo`
  ADD PRIMARY KEY (`idAdministrativo`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`);

--
-- Indices de la tabla `destino`
--
ALTER TABLE `destino`
  ADD PRIMARY KEY (`idDestino`,`Viaje_idViaje`,`Viaje_Servicio_idServicio`,`Viaje_Servicio_Empresa_idEmpresa`);

--
-- Indices de la tabla `destino_has_viaje`
--
ALTER TABLE `destino_has_viaje`
  ADD PRIMARY KEY (`Destino_idDestino`,`Destino_Viaje_idViaje`,`Destino_Viaje_Servicio_idServicio`,`Destino_Viaje_Servicio_Empresa_idEmpresa`,`Viaje_idViaje`,`Viaje_Servicio_idServicio`,`Viaje_Servicio_Empresa_idEmpresa`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`idEmpresa`);

--
-- Indices de la tabla `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`idHotel`,`Destino_idDestino`,`Destino_Viaje_idViaje`,`Destino_Viaje_Servicio_idServicio`,`Destino_Viaje_Servicio_Empresa_idEmpresa`);

--
-- Indices de la tabla `m_producto_producto`
--
ALTER TABLE `m_producto_producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `m_producto_viaje`
--
ALTER TABLE `m_producto_viaje`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `m_venta_carrito`
--
ALTER TABLE `m_venta_carrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `m_venta_carrito_user_id_456c42f9_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `m_venta_itemcarrito`
--
ALTER TABLE `m_venta_itemcarrito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `m_venta_itemcarrito_carrito_id_9c421d9f_fk_m_venta_carrito_id` (`carrito_id`),
  ADD KEY `m_venta_itemcarrito_viaje_id_724e9ed6_fk_m_producto_viaje_id` (`viaje_id`);

--
-- Indices de la tabla `m_venta_venta`
--
ALTER TABLE `m_venta_venta`
  ADD PRIMARY KEY (`id`),
  ADD KEY `m_venta_venta_user_id_2e843add_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `m_venta_viajeventa`
--
ALTER TABLE `m_venta_viajeventa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `m_venta_productoventa_venta_id_64b56d9d_fk_m_venta_venta_id` (`venta_id`),
  ADD KEY `m_venta_productoventa_titulo_id_ce80c28f_fk_m_producto_viaje_id` (`titulo_id`);

--
-- Indices de la tabla `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`run`,`Empresa_idEmpresa`);

--
-- Indices de la tabla `reservacion`
--
ALTER TABLE `reservacion`
  ADD PRIMARY KEY (`idReservacion`,`Hotel_idHotel`,`Hotel_Destino_idDestino`,`Hotel_Destino_Viaje_idViaje`,`Hotel_Destino_Viaje_Servicio_idServicio`,`Hotel_Destino_Viaje_Servicio_Empresa_idEmpresa`);

--
-- Indices de la tabla `servicio`
--
ALTER TABLE `servicio`
  ADD PRIMARY KEY (`idServicio`,`Empresa_idEmpresa`);

--
-- Indices de la tabla `viaje`
--
ALTER TABLE `viaje`
  ADD PRIMARY KEY (`idViaje`,`Servicio_idServicio`,`Servicio_Empresa_idEmpresa`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `m_producto_producto`
--
ALTER TABLE `m_producto_producto`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `m_producto_viaje`
--
ALTER TABLE `m_producto_viaje`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT de la tabla `m_venta_carrito`
--
ALTER TABLE `m_venta_carrito`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `m_venta_itemcarrito`
--
ALTER TABLE `m_venta_itemcarrito`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `m_venta_venta`
--
ALTER TABLE `m_venta_venta`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `m_venta_viajeventa`
--
ALTER TABLE `m_venta_viajeventa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `m_venta_carrito`
--
ALTER TABLE `m_venta_carrito`
  ADD CONSTRAINT `m_venta_carrito_user_id_456c42f9_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `m_venta_itemcarrito`
--
ALTER TABLE `m_venta_itemcarrito`
  ADD CONSTRAINT `m_venta_itemcarrito_carrito_id_9c421d9f_fk_m_venta_carrito_id` FOREIGN KEY (`carrito_id`) REFERENCES `m_venta_carrito` (`id`),
  ADD CONSTRAINT `m_venta_itemcarrito_viaje_id_724e9ed6_fk_m_producto_viaje_id` FOREIGN KEY (`viaje_id`) REFERENCES `m_producto_viaje` (`id`);

--
-- Filtros para la tabla `m_venta_venta`
--
ALTER TABLE `m_venta_venta`
  ADD CONSTRAINT `m_venta_venta_user_id_2e843add_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `m_venta_viajeventa`
--
ALTER TABLE `m_venta_viajeventa`
  ADD CONSTRAINT `m_venta_productoventa_titulo_id_ce80c28f_fk_m_producto_viaje_id` FOREIGN KEY (`titulo_id`) REFERENCES `m_producto_viaje` (`id`),
  ADD CONSTRAINT `m_venta_productoventa_venta_id_64b56d9d_fk_m_venta_venta_id` FOREIGN KEY (`venta_id`) REFERENCES `m_venta_venta` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
