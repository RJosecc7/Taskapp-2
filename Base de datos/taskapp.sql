-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-10-2024 a las 20:07:09
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `taskapp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-10-11-010100', 'App\\Database\\Migrations\\CreateTask', 'default', 'App', 1728608710, 1),
(2, '2020-10-07-114500', 'App\\Database\\Migrations\\AddTimestampsToTask', 'default', 'App', 1728611974, 2),
(3, '2024-10-13-071719', 'App\\Database\\Migrations\\CreateUser', 'default', 'App', 1728805305, 3),
(4, '2024-10-15-044004', 'App\\Database\\Migrations\\AddUserIdToTask', 'default', 'App', 1728968264, 4),
(5, '2024-10-15-062143', 'App\\Database\\Migrations\\AddIndexToTaskCreatedAt', 'default', 'App', 1728973463, 5),
(6, '2024-10-15-215754', 'App\\Database\\Migrations\\AddIsAdminToUser', 'default', 'App', 1729029861, 6),
(7, '2024-10-16-042109', 'App\\Database\\Migrations\\AddAccountActivationToUser', 'default', 'App', 1729052806, 7),
(8, '2024-10-16-220213', 'App\\Database\\Migrations\\AddPasswordResetToUser', 'default', 'App', 1729116508, 8),
(9, '2024-10-17-080702', 'App\\Database\\Migrations\\AddProfileImageToUser', 'default', 'App', 1729152654, 9),
(10, '2024-10-18-034359', 'App\\Database\\Migrations\\CreateRememberLogin', 'default', 'App', 1729223643, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `remembered_login`
--

CREATE TABLE `remembered_login` (
  `token_hash` varchar(64) NOT NULL,
  `user_id` int(5) UNSIGNED NOT NULL,
  `expires_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `task`
--

CREATE TABLE `task` (
  `id` int(5) UNSIGNED NOT NULL,
  `description` varchar(128) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(5) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `task`
--

INSERT INTO `task` (`id`, `description`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'task one ', NULL, NULL, 4),
(2, 'This task', NULL, NULL, 2),
(3, 'another task', NULL, NULL, 2),
(8, 'An interesting task', NULL, NULL, 2),
(9, '<em>XSS?</em>', NULL, NULL, 2),
(10, 'To do today urgently', NULL, NULL, 2),
(11, 'A task with timestamps edited', '2024-10-12 04:56:41', '2024-10-12 04:57:30', 2),
(15, 'an important task', NULL, NULL, 2),
(16, 'something interesting', NULL, NULL, 2),
(18, 'new task ', NULL, NULL, NULL),
(19, 'task god changed', NULL, NULL, 2),
(20, 'insane task', NULL, NULL, 2),
(21, 'tarea 2', NULL, NULL, 16),
(22, 'tarea hola', NULL, NULL, 16),
(23, 'tarea insana', NULL, NULL, 16),
(24, 'tarea 7', NULL, NULL, 16),
(25, 'tareas xd', NULL, NULL, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_admin` tinyint(1) NOT NULL DEFAULT 0,
  `activation_hash` varchar(64) DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `reset_hash` varchar(64) DEFAULT NULL,
  `reset_expires_at` datetime DEFAULT NULL,
  `profile_image` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `password_hash`, `created_at`, `updated_at`, `is_admin`, `activation_hash`, `is_active`, `reset_hash`, `reset_expires_at`, `profile_image`) VALUES
(1, 'Jose', 'rodolfocc@hola.com', '', '2024-10-13 08:43:09', '2024-10-16 18:40:46', 0, NULL, 0, NULL, NULL, NULL),
(2, 'Dan', 'danilo@hola.com', '$2y$10$sZh1.Ap/bKjJ/OUK4fETwecrrLDzZqZ3bvx2/5ZKaEXZfFoYo0REK', '2024-10-13 09:00:27', '2024-10-17 01:41:28', 0, NULL, 0, NULL, NULL, NULL),
(4, 'pedro', 'pedro@hola.com', '$2y$10$8wbrrXzAF7HFOK4sZAP22OxcyJO3kkas5MLI/jf4qredbObakbL3a', '2024-10-13 09:56:30', '2024-10-17 01:41:11', 0, NULL, 0, NULL, NULL, NULL),
(10, 'Admin', 'admin@example.com', '$2y$10$lejUQnGOtMNdcIofBaJRbeO1dlrtwAC2w6N6nrD4fyeSgOSopqVTa', '2024-10-16 00:13:10', '2024-10-18 19:08:31', 1, NULL, 1, NULL, NULL, '1729278511_5604f4f046154c918ab2.png'),
(11, 'Admin jose', 'admin2@example.com', '$2y$10$/VqJ7B2omkJpZUQkrol2KO2ByIxKX/tKvXxsl1ppYTWf5Wr27sudG', '2024-10-16 01:14:32', '2024-10-16 01:14:32', 0, NULL, 0, NULL, NULL, NULL),
(12, 'admin chepe', 'admin3@example.com', '$2y$10$egip7TDHCiMADyGw4YAEl.2sX5xXBbMGlqqJO57sTbL3FDww4ikpu', '2024-10-16 01:19:17', '2024-10-16 01:19:17', 1, NULL, 0, NULL, NULL, NULL),
(14, 'edbger', 'dd@hdhud.jks', '$2y$10$wwdqrpJ5PdckaeRCOeoBA.ucp0aaq9qge4haSefAD.NcSWHoGc/zG', '2024-10-16 04:09:46', '2024-10-16 04:09:46', 0, NULL, 0, NULL, NULL, NULL),
(15, 'Juan', 'juan@example.com', '$2y$10$0xRB7emX/YXReGuxfRUAf.iEPIlY0YiJHAAKuj22.VaGyT5RpFC3u', '2024-10-16 04:52:54', '2024-10-17 03:07:38', 0, NULL, 0, NULL, NULL, NULL),
(16, 'Rodolfo', 'cosrodolfo99@gmail.com', '$2y$10$IO3OzNThZwnu3tqeIIU1s.RJmO8QzdOeOqo4Y23JdHRWJn8/ba1/2', '2024-10-16 08:05:29', '2024-10-18 19:17:04', 0, '6b1b9ee6fb2d255262a680b6a50ef48d2d53acc95a593d1372a6dc26217d1183', 1, NULL, NULL, '1729279024_6773fb3b7c384bc56119.png'),
(18, 'gustavo', 'gustavo@hola.com', '$2y$10$5B6qu9rlpv5Q3tW8FIzT..9btMdCuu3jD9v8MQPwxLadGnYjJDpMC', '2024-10-16 09:13:26', '2024-10-16 09:13:47', 0, NULL, 0, NULL, NULL, NULL),
(19, 'Chito', 'josecos909@gmail.com', '$2y$10$xh8oWpW5Vr7qT.O8M8UMT.uxT/OTh7G5dhR1mvUDmYNANIBC.UPXK', '2024-10-17 04:05:31', '2024-10-17 04:05:31', 0, '113f2e69466799092b73d4b4eacfe0b4d0896922303295048323bacdd0ece302', 1, NULL, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `remembered_login`
--
ALTER TABLE `remembered_login`
  ADD PRIMARY KEY (`token_hash`),
  ADD KEY `remembered_login_user_id_foreign` (`user_id`),
  ADD KEY `expires_at` (`expires_at`);

--
-- Indices de la tabla `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_user_id_fk` (`user_id`),
  ADD KEY `created_at` (`created_at`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `activation_hash` (`activation_hash`),
  ADD UNIQUE KEY `reset_hash` (`reset_hash`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `task`
--
ALTER TABLE `task`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `remembered_login`
--
ALTER TABLE `remembered_login`
  ADD CONSTRAINT `remembered_login_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_user_id_fk` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
