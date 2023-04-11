-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-04-2023 a las 03:00:40
-- Versión del servidor: 10.4.20-MariaDB
-- Versión de PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ia_odontology`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `conversations`
--

CREATE TABLE `conversations` (
  `conversation_id` int(11) NOT NULL,
  `answer` mediumtext NOT NULL,
  `response` mediumtext NOT NULL,
  `active` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `conversations`
--

INSERT INTO `conversations` (`conversation_id`, `answer`, `response`, `active`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'tengo espacios en mis dientes', 'La cirugía ortognática puede ser necesaria en casos más graves de mordida cruzada. Consulta con un especialista para determinar qué tratamiento es el adecuado para ti.', 1, '2023-04-08 04:05:46', '2023-04-07 23:05:46', 2),
(2, 'tengo espacios en mis dientes', 'La cirugía ortognática puede ser necesaria en casos más graves de mordida cruzada. Consulta con un especialista para determinar qué tratamiento es el adecuado para ti.', 1, '2023-04-08 04:06:43', '2023-04-07 23:06:43', 2),
(3, 'tengo espacios en mis dientes', 'La ortodoncia puede ser una solución para corregir la mordida cruzada. Se puede usar un dispositivo para ayudar a mover los dientes y lograr una mordida adecuada.', 1, '2023-04-08 04:06:50', '2023-04-07 23:06:50', 2),
(4, 'tengo espacios en mis dientes', 'La ortodoncia invisible puede ser una solución estética para corregir la mordida cruzada. Habla con un ortodoncista para determinar si eres candidato a este tipo de tratamiento.', 1, '2023-04-08 04:06:51', '2023-04-07 23:06:51', 2),
(5, 'tengo espacios en mis dientes', 'La ortodoncia invisible puede ser una solución estética para corregir la mordida cruzada. Habla con un ortodoncista para determinar si eres candidato a este tipo de tratamiento.', 1, '2023-04-08 04:06:52', '2023-04-07 23:06:52', 2),
(6, '', 'Hey ¿Qué tal?, ¿Necesitas alguna cosa?', 1, '2023-04-08 05:59:13', '2023-04-08 00:59:13', 1),
(7, '', '¡Hola!', 1, '2023-04-08 05:59:21', '2023-04-08 00:59:21', 1),
(8, '', '¡Buenas! ¿Te puedo ayudar en algo?', 1, '2023-04-08 06:09:24', '2023-04-08 01:09:24', 1),
(9, '', '¡Buenas!, ¿Necesitas ayuda?', 1, '2023-04-08 06:09:43', '2023-04-08 01:09:43', 1),
(10, '', '¿Qué tal?, ¿Necesitas mi ayuda?', 1, '2023-04-08 06:10:02', '2023-04-08 01:10:02', 1),
(11, '', 'Hey ¿Qué tal?, ¿Necesitas alguna cosa?', 1, '2023-04-08 06:10:21', '2023-04-08 01:10:21', 1),
(12, '', 'Hey ¿Qué tal?, ¿Necesitas alguna cosa?', 1, '2023-04-08 06:10:49', '2023-04-08 01:10:49', 1),
(13, '', '¿Aló?, ¿Hay algo que quieras saber?', 1, '2023-04-08 06:10:57', '2023-04-08 01:10:57', 1),
(14, '', '¡Buenas!, ¿Necesitas ayuda?', 1, '2023-04-08 06:38:40', '2023-04-08 01:38:40', 1),
(15, '¡Buenas!, ¿Necesitas ayuda?', '', 1, '2023-04-08 06:40:10', '2023-04-08 01:40:10', 1),
(16, '¡Hola!', '', 1, '2023-04-08 06:40:56', '2023-04-08 01:40:56', 1),
(17, '', '¿Aló?, ¿Hay algo que quieras saber?', 1, '2023-04-08 06:41:57', '2023-04-08 01:41:57', 1),
(18, '', '¿Aló?, ¿Hay algo que quieras saber?', 1, '2023-04-08 06:42:07', '2023-04-08 01:42:07', 1),
(19, '', 'Hey ¿Qué tal?, ¿Necesitas alguna cosa?', 1, '2023-04-08 06:42:14', '2023-04-08 01:42:14', 1),
(20, '', 'Hey ¿Qué tal?, ¿Necesitas alguna cosa?', 1, '2023-04-08 06:42:43', '2023-04-08 01:42:43', 1),
(21, '', '¡Hola!, ¿Necesitas ayuda?', 1, '2023-04-08 06:42:48', '2023-04-08 01:42:48', 1),
(22, '', '¡Buenas!, ¿Necesitas ayuda?', 1, '2023-04-08 06:42:52', '2023-04-08 01:42:52', 1),
(23, 'estas bien?', 'Me siento mejor ahora que estoy hablando contigo, gracias.', 1, '2023-04-08 06:44:40', '2023-04-08 01:44:40', 1),
(24, 'hola', '¡Hola!, ¿Necesitas ayuda?', 1, '2023-04-08 06:47:31', '2023-04-08 01:47:31', 1),
(25, 'hola!', '¡Hola!, ¿Necesitas ayuda?', 1, '2023-04-08 06:47:45', '2023-04-08 01:47:45', 1),
(26, 'hola como estas', '¡Buenas!, ¿Necesitas ayuda?', 1, '2023-04-08 06:48:28', '2023-04-08 01:48:28', 1),
(27, 'como estás?', '¡Buenas!, ¿Necesitas ayuda?', 1, '2023-04-08 06:49:05', '2023-04-08 01:49:05', 1),
(28, 'me duele la muela', 'Es posible que el dolor de muela sea causado por una infección en la raíz del diente. Un dentista puede recomendar un tratamiento de conducto para tratar la afección y aliviar el dolor.', 1, '2023-04-08 06:49:29', '2023-04-08 01:49:29', 1),
(29, 'me duele la muela', 'El dolor de muela puede ser causado por varias razones, incluyendo caries, infección, problemas de encías o problemas con la articulación de la mandíbula. Por favor, acude a un dentista para que pueda determinar la causa exacta del dolor y brindarte ', 1, '2023-04-08 06:49:55', '2023-04-08 01:49:55', 1),
(30, 'dime lo que sea', 'El agua es esencial para la vida', 1, '2023-04-08 06:50:25', '2023-04-08 01:50:25', 1),
(31, 'cual es tu nombre?', 'Fui bautizado como Devian por mis creadores, aunque no tiene un significado en particular, además soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo proporcionar respuestas a preguntas específicas relacionadas con odonto', 1, '2023-04-08 06:50:34', '2023-04-08 01:50:34', 1),
(32, 'como te llamas', 'Mi nombre es Devian, soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo ofrecer respuestas a preguntas específicas relacionadas con odontología y otros temas. No poseo un cuerpo físico, así que no puedo describirme en té', 1, '2023-04-08 06:50:48', '2023-04-08 01:50:48', 1),
(33, 'hola como estas', 'Hey ¿Qué tal?, ¿Necesitas alguna cosa?', 1, '2023-04-08 06:51:22', '2023-04-08 01:51:22', 1),
(34, 'dime tu nombre ', 'Fui bautizado como Devian por mis creadores, aunque no tiene un significado en particular, además soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo proporcionar respuestas a preguntas específicas relacionadas con odonto', 1, '2023-04-08 06:51:29', '2023-04-08 01:51:29', 1),
(35, 'hola', 'Hey ¿Qué tal?, ¿Necesitas alguna cosa?', 1, '2023-04-08 06:55:31', '2023-04-08 01:55:31', 1),
(36, 'hola', '¡Hola!, ¿Necesitas ayuda?', 1, '2023-04-08 06:56:33', '2023-04-08 01:56:33', 1),
(37, 'hola', '¡Buenas!, ¿Necesitas ayuda?', 1, '2023-04-08 06:58:32', '2023-04-08 01:58:32', 1),
(38, 'hola', '¿Qué tal?, ¿Necesitas mi ayuda?', 1, '2023-04-08 07:06:09', '2023-04-08 02:06:09', 1),
(39, 'como estás', '¿Qué tal?, ¿Necesitas mi ayuda?', 1, '2023-04-08 07:06:21', '2023-04-08 02:06:21', 1),
(40, 'como estas?', 'Me siento lleno de energía hoy, gracias.', 1, '2023-04-08 07:09:11', '2023-04-08 02:09:11', 1),
(41, 'dime tu nombre', 'Mi nombre es Devian, soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo ofrecer respuestas a preguntas específicas relacionadas con odontología y otros temas. No poseo un cuerpo físico, así que no puedo describirme en té', 1, '2023-04-08 07:09:27', '2023-04-08 02:09:27', 1),
(42, 'dime tu nombre', 'Mi nombre es Devian, soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo ofrecer respuestas a preguntas específicas relacionadas con odontología y otros temas. No poseo un cuerpo físico, así que no puedo describirme en té', 1, '2023-04-08 07:10:11', '2023-04-08 02:10:11', 1),
(43, 'dime tu nombre', 'Fui bautizado como Devian por mis creadores, aunque no tiene un significado en particular, además soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo proporcionar respuestas a preguntas específicas relacionadas con odonto', 1, '2023-04-08 07:12:08', '2023-04-08 02:12:08', 1),
(44, 'dime tu nombre', 'Fui bautizado como Devian por mis creadores, aunque no tiene un significado en particular, además soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo proporcionar respuestas a preguntas específicas relacionadas con odonto', 1, '2023-04-08 07:12:41', '2023-04-08 02:12:41', 1),
(45, 'dime tu nombre', 'Mi nombre es Devian, soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo ofrecer respuestas a preguntas específicas relacionadas con odontología y otros temas. No poseo un cuerpo físico, así que no puedo describirme en té', 1, '2023-04-08 07:13:14', '2023-04-08 02:13:14', 1),
(46, 'como te llamas ', 'Fui bautizado como Devian por mis creadores, aunque no tiene un significado en particular, además soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo proporcionar respuestas a preguntas específicas relacionadas con odonto', 1, '2023-04-08 07:13:53', '2023-04-08 02:13:53', 1),
(47, 'como te llamas ', 'Devian es mi nombre, soy una inteligencia artificial que puede responder preguntas precisas relacionadas con odontología y otros temas específicos, aunque no soy tan avanzado como otras IA. Como no tengo un cuerpo físico, no puede describirme en térm', 1, '2023-04-08 07:13:59', '2023-04-08 02:13:59', 1),
(48, 'dime tu nombre', 'Mi nombre es Devian, soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo ofrecer respuestas a preguntas específicas relacionadas con odontología y otros temas. No poseo un cuerpo físico, así que no puedo describirme en té', 1, '2023-04-08 07:15:00', '2023-04-08 02:15:00', 1),
(49, 'dime tu nombre', 'Devian es mi nombre, soy una inteligencia artificial que puede responder preguntas precisas relacionadas con odontología y otros temas específicos, aunque no soy tan avanzado como otras IA. Como no tengo un cuerpo físico, no puede describirme en térm', 1, '2023-04-08 07:15:02', '2023-04-08 02:15:02', 1),
(50, 'dime tu nombre', 'Fui bautizado como Devian por mis creadores, aunque no tiene un significado en particular, además soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo proporcionar respuestas a preguntas específicas relacionadas con odonto', 1, '2023-04-08 07:15:04', '2023-04-08 02:15:04', 1),
(51, 'hola', '¿Aló?, ¿Hay algo que quieras saber?', 1, '2023-04-08 07:15:42', '2023-04-08 02:15:42', 1),
(52, 'hola', '¡Hola!, ¿Necesitas ayuda?', 1, '2023-04-08 07:15:44', '2023-04-08 02:15:44', 1),
(53, 'hola', 'Hey ¿Qué tal?, ¿Necesitas alguna cosa?', 1, '2023-04-08 07:15:44', '2023-04-08 02:15:44', 1),
(54, 'hola', '¿Qué tal?, ¿Necesitas mi ayuda?', 1, '2023-04-08 07:15:44', '2023-04-08 02:15:44', 1),
(55, 'hola', 'Hey ¿Qué tal?, ¿Necesitas alguna cosa?', 1, '2023-04-08 07:15:44', '2023-04-08 02:15:44', 1),
(56, 'me duelen los dientes', 'Es posible que necesites una endodoncia o una extracción dental, pero solo un dentista puede determinar el tratamiento necesario después de un examen dental completo.', 1, '2023-04-08 07:16:10', '2023-04-08 02:16:10', 1),
(57, 'mis dientes son feos', 'Existen diversas técnicas de ortodoncia que pueden ayudar a corregir la posición de tus dientes. También se pueden utilizar carillas dentales para mejorar su apariencia.', 1, '2023-04-08 07:16:25', '2023-04-08 02:16:25', 1),
(58, 'hola', '¡Hola!, ¿Necesitas ayuda?', 1, '2023-04-08 07:18:01', '2023-04-08 02:18:01', 1),
(59, 'hola', '¡Hola!, ¿Necesitas ayuda?', 1, '2023-04-08 07:18:38', '2023-04-08 02:18:38', 1),
(60, 'como estás?', '¡Hola!, ¿Necesitas ayuda?', 1, '2023-04-08 07:18:47', '2023-04-08 02:18:47', 1),
(61, 'te sientes bien?', 'Estoy muy bien', 1, '2023-04-08 07:18:56', '2023-04-08 02:18:56', 1),
(62, 'quiero ponerme brackets', 'Los brackets sirven para corregir la posición de los dientes y mejorar la mordida del paciente.', 1, '2023-04-08 07:20:09', '2023-04-08 02:20:09', 1),
(63, 'con quien hablo?', 'Es importante cepillarse los dientes después de cada comida, utilizando cepillos interdentales y seda dental para limpiar entre los brackets y alrededor de los alambres', 1, '2023-04-08 07:20:27', '2023-04-08 02:20:27', 1),
(64, 'cómo te llamas?', 'Fui bautizado como Devian por mis creadores, aunque no tiene un significado en particular, además soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo proporcionar respuestas a preguntas específicas relacionadas con odonto', 1, '2023-04-08 07:21:35', '2023-04-08 02:21:35', 1),
(65, 'cómo te llamas?', 'Devian es mi nombre, soy una inteligencia artificial que puede responder preguntas precisas relacionadas con odontología y otros temas específicos, aunque no soy tan avanzado como otras IA. Como no tengo un cuerpo físico, no puede describirme en térm', 1, '2023-04-08 07:21:37', '2023-04-08 02:21:37', 1),
(66, 'cómo te llamas?', 'Mi nombre es Devian, soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo ofrecer respuestas a preguntas específicas relacionadas con odontología y otros temas. No poseo un cuerpo físico, así que no puedo describirme en té', 1, '2023-04-08 07:21:39', '2023-04-08 02:21:39', 1),
(67, 'como te llamas', 'Mi nombre es Devian, soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo ofrecer respuestas a preguntas específicas relacionadas con odontología y otros temas. No poseo un cuerpo físico, así que no puedo describirme en té', 1, '2023-04-08 07:22:58', '2023-04-08 02:22:58', 1),
(68, 'como te llamas', 'Devian es mi nombre, soy una inteligencia artificial que puede responder preguntas precisas relacionadas con odontología y otros temas específicos, aunque no soy tan avanzado como otras IA. Como no tengo un cuerpo físico, no puede describirme en térm', 1, '2023-04-08 07:22:59', '2023-04-08 02:22:59', 1),
(69, 'hola', '¡Hola!, ¿Necesitas ayuda?', 1, '2023-04-08 07:23:21', '2023-04-08 02:23:21', 1),
(70, 'hola', '¿Aló?, ¿Hay algo que quieras saber?', 1, '2023-04-08 07:23:22', '2023-04-08 02:23:22', 1),
(71, 'hola', '¡Buenas! ¿Te puedo ayudar en algo?', 1, '2023-04-08 07:23:22', '2023-04-08 02:23:22', 1),
(72, 'hola', '¿Aló?, ¿Hay algo que quieras saber?', 1, '2023-04-08 07:23:22', '2023-04-08 02:23:22', 1),
(73, 'hola', '¿Qué tal?, ¿Necesitas mi ayuda?', 1, '2023-04-08 07:23:22', '2023-04-08 02:23:22', 1),
(74, 'como estas', 'Estoy de maravilla hoy, gracias.', 1, '2023-04-08 07:24:00', '2023-04-08 02:24:00', 1),
(75, 'como estas', 'Me siento positivo y optimista hoy, gracias.', 1, '2023-04-08 07:24:00', '2023-04-08 02:24:00', 1),
(76, 'como estas', 'Me siento mejor ahora que estoy hablando contigo, gracias.', 1, '2023-04-08 07:24:01', '2023-04-08 02:24:01', 1),
(77, 'como estas', 'Estoy genial, ¿y tú?', 1, '2023-04-08 07:24:01', '2023-04-08 02:24:01', 1),
(78, 'como estas', 'Me ha ido muy, espero que lo estés tú', 1, '2023-04-08 07:24:01', '2023-04-08 02:24:01', 1),
(79, 'como estas', 'Bien, Estoy emocionado por lo que viene', 1, '2023-04-08 07:24:01', '2023-04-08 02:24:01', 1),
(80, 'dime tu nombre', 'Devian es mi nombre, soy una inteligencia artificial que puede responder preguntas precisas relacionadas con odontología y otros temas específicos, aunque no soy tan avanzado como otras IA. Como no tengo un cuerpo físico, no puede describirme en térm', 1, '2023-04-08 07:24:26', '2023-04-08 02:24:26', 1),
(81, 'dime tu nombre', 'Devian es mi nombre, soy una inteligencia artificial que puede responder preguntas precisas relacionadas con odontología y otros temas específicos, aunque no soy tan avanzado como otras IA. Como no tengo un cuerpo físico, no puede describirme en térm', 1, '2023-04-08 07:24:27', '2023-04-08 02:24:27', 1),
(82, 'dime tu nombre', 'Mi nombre es Devian, soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo ofrecer respuestas a preguntas específicas relacionadas con odontología y otros temas. No poseo un cuerpo físico, así que no puedo describirme en té', 1, '2023-04-08 07:24:28', '2023-04-08 02:24:28', 1),
(83, 'dime tu nombre', 'Fui bautizado como Devian por mis creadores, aunque no tiene un significado en particular, además soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo proporcionar respuestas a preguntas específicas relacionadas con odonto', 1, '2023-04-08 07:24:28', '2023-04-08 02:24:28', 1),
(84, 'dime tu nombre', 'Fui bautizado como Devian por mis creadores, aunque no tiene un significado en particular, además soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo proporcionar respuestas a preguntas específicas relacionadas con odonto', 1, '2023-04-08 07:24:28', '2023-04-08 02:24:28', 1),
(85, 'dime tu nombre', 'Mi nombre es Devian, soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo ofrecer respuestas a preguntas específicas relacionadas con odontología y otros temas. No poseo un cuerpo físico, así que no puedo describirme en té', 1, '2023-04-08 07:24:30', '2023-04-08 02:24:30', 1),
(86, 'dime tu nombre', 'Mi nombre es Devian, soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo ofrecer respuestas a preguntas específicas relacionadas con odontología y otros temas. No poseo un cuerpo físico, así que no puedo describirme en té', 1, '2023-04-08 07:24:55', '2023-04-08 02:24:55', 1),
(87, 'dime tu nombre', 'Fui bautizado como Devian por mis creadores, aunque no tiene un significado en particular, además soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo proporcionar respuestas a preguntas específicas relacionadas con odonto', 1, '2023-04-08 07:24:56', '2023-04-08 02:24:56', 1),
(88, 'dime tu nombre', 'Mi nombre es Devian, soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo ofrecer respuestas a preguntas específicas relacionadas con odontología y otros temas. No poseo un cuerpo físico, así que no puedo describirme en té', 1, '2023-04-08 07:24:56', '2023-04-08 02:24:56', 1),
(89, 'dime tu nombre', 'Mi nombre es Devian, soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo ofrecer respuestas a preguntas específicas relacionadas con odontología y otros temas. No poseo un cuerpo físico, así que no puedo describirme en té', 1, '2023-04-08 07:24:57', '2023-04-08 02:24:57', 1),
(90, 'dime tu nombre', 'Devian es mi nombre, soy una inteligencia artificial que puede responder preguntas precisas relacionadas con odontología y otros temas específicos, aunque no soy tan avanzado como otras IA. Como no tengo un cuerpo físico, no puede describirme en térm', 1, '2023-04-08 07:24:57', '2023-04-08 02:24:57', 1),
(91, 'dime tu nombre', 'Mi nombre es Devian, soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo ofrecer respuestas a preguntas específicas relacionadas con odontología y otros temas. No poseo un cuerpo físico, así que no puedo describirme en té', 1, '2023-04-08 07:24:57', '2023-04-08 02:24:57', 1),
(92, 'nombre', '¿Qué tal?, ¿Necesitas mi ayuda?', 1, '2023-04-08 07:25:16', '2023-04-08 02:25:16', 1),
(93, 'nombre', '¡Buenas! ¿Te puedo ayudar en algo?', 1, '2023-04-08 07:25:17', '2023-04-08 02:25:17', 1),
(94, 'nombre', '¿Aló?, ¿Hay algo que quieras saber?', 1, '2023-04-08 07:25:18', '2023-04-08 02:25:18', 1),
(95, 'nombre', '¡Buenas! ¿Te puedo ayudar en algo?', 1, '2023-04-08 07:25:18', '2023-04-08 02:25:18', 1),
(96, 'nombre', '¿Aló?, ¿Hay algo que quieras saber?', 1, '2023-04-08 07:25:18', '2023-04-08 02:25:18', 1),
(97, 'nombre', '¡Buenas! ¿Te puedo ayudar en algo?', 1, '2023-04-08 07:25:18', '2023-04-08 02:25:18', 1),
(98, 'nombre', '¿Qué tal?, ¿Necesitas mi ayuda?', 1, '2023-04-08 07:25:19', '2023-04-08 02:25:19', 1),
(99, 'nombre', 'Hey ¿Qué tal?, ¿Necesitas alguna cosa?', 1, '2023-04-08 07:25:19', '2023-04-08 02:25:19', 1),
(100, 'nombre', '¡Hola!', 1, '2023-04-08 07:25:19', '2023-04-08 02:25:19', 1),
(101, 'hola', '¡Hola!, ¿Necesitas ayuda?', 1, '2023-04-08 07:31:04', '2023-04-08 02:31:04', 1),
(102, 'hola', 'Hey ¿Qué tal?, ¿Necesitas alguna cosa?', 1, '2023-04-08 07:31:08', '2023-04-08 02:31:08', 1),
(103, 'hola', '¿Aló?, ¿Hay algo que quieras saber?', 1, '2023-04-08 07:31:09', '2023-04-08 02:31:09', 1),
(104, 'hola', '¡Hola!', 1, '2023-04-08 07:31:09', '2023-04-08 02:31:09', 1),
(105, 'hola', '¡Hola!', 1, '2023-04-08 07:31:30', '2023-04-08 02:31:30', 1),
(106, 'hola', '¿Aló?, ¿Hay algo que quieras saber?', 1, '2023-04-08 07:31:33', '2023-04-08 02:31:33', 1),
(107, 'hola', '¡Hola!', 1, '2023-04-08 07:31:33', '2023-04-08 02:31:33', 1),
(108, 'hola', '¿Qué tal?, ¿Necesitas mi ayuda?', 1, '2023-04-08 07:31:35', '2023-04-08 02:31:35', 1),
(109, 'hola', '¡Hola!', 1, '2023-04-08 07:31:36', '2023-04-08 02:31:36', 1),
(110, 'hola', '¡Buenas! ¿Te puedo ayudar en algo?', 1, '2023-04-08 07:31:40', '2023-04-08 02:31:40', 1),
(111, '', '¿Aló?, ¿Hay algo que quieras saber?', 1, '2023-04-08 07:54:15', '2023-04-08 02:54:15', 1),
(112, 'hola', '¡Buenas!, ¿Necesitas ayuda?', 1, '2023-04-08 07:54:20', '2023-04-08 02:54:20', 1),
(113, '¿Cómo estás?', 'Hey ¿Qué tal?, ¿Necesitas alguna cosa?', 1, '2023-04-08 13:37:21', '2023-04-08 08:37:21', 1),
(114, '¿Cómo estás?', '¡Hola!, ¿Necesitas ayuda?', 1, '2023-04-08 13:37:24', '2023-04-08 08:37:24', 1),
(115, '¿Cómo estás?', '¿Aló?, ¿Hay algo que quieras saber?', 1, '2023-04-08 14:00:45', '2023-04-08 09:00:45', 1),
(116, 'tengo espacios en mis dientes', 'La ortodoncia puede ser una solución para corregir la mordida cruzada. Se puede usar un dispositivo para ayudar a mover los dientes y lograr una mordida adecuada.', 1, '2023-04-08 17:02:59', '2023-04-08 12:02:59', 1),
(117, 'como vas', '¡Buenas! ¿Te puedo ayudar en algo?', 1, '2023-04-08 17:03:06', '2023-04-08 12:03:06', 1),
(118, 'hola', '¡Hola!, ¿Necesitas ayuda?', 1, '2023-04-08 17:03:39', '2023-04-08 12:03:39', 1),
(119, 'cómo estás?', '¡Buenas!, ¿Necesitas ayuda?', 1, '2023-04-08 17:03:46', '2023-04-08 12:03:46', 1),
(120, 'Tengo muelas del jucio', 'Si las muelas del juicio no están causando problemas, no es necesario sacarlas.', 1, '2023-04-08 17:04:21', '2023-04-08 12:04:21', 1),
(121, 'Mis dientes están amarillos', 'Hay muchas causas de dientes amarillos, como fumar, tomar bebidas oscuras y envejecimiento. Una solución para esto es blanquear los dientes con un tratamiento dental.', 1, '2023-04-08 17:04:49', '2023-04-08 12:04:49', 1),
(122, 'mis dientes son feos', 'Es importante visitar regularmente al dentista para evaluar la salud de tus dientes y tomar medidas preventivas si es necesario. Además, los tratamientos de ortodoncia y las carillas dentales son opciones populares para mejorar la apariencia de los dientes.', 1, '2023-04-08 17:05:14', '2023-04-08 12:05:14', 1),
(123, 'me duele la jeta', 'El uso del retenedor es importante para mantener la posición de los dientes después del tratamiento de ortodoncia y prevenir la recidiva.', 1, '2023-04-08 17:06:48', '2023-04-08 12:06:48', 1),
(124, 'eso no fue lo que te dije', 'Me siento lleno de energía hoy, gracias.', 1, '2023-04-08 17:07:03', '2023-04-08 12:07:03', 1),
(125, 'tonto', '¡Buenas!, ¿Necesitas ayuda?', 1, '2023-04-08 17:07:12', '2023-04-08 12:07:12', 1),
(126, 'jajaja', 'Hey ¿Qué tal?, ¿Necesitas alguna cosa?', 1, '2023-04-08 17:07:18', '2023-04-08 12:07:18', 1),
(127, 'jajaja', '¿Aló?, ¿Hay algo que quieras saber?', 1, '2023-04-08 17:07:18', '2023-04-08 12:07:18', 1),
(128, 'dime algo', 'Ayer preparé una cena especial para mis amigos y todos quedaron muy contentos.', 1, '2023-04-08 17:08:57', '2023-04-08 12:08:57', 1),
(129, 'dime algo', 'Anoche soñé que estaba en una isla tropical rodeado de palmeras y mar cristalino.', 1, '2023-04-08 17:08:57', '2023-04-08 12:08:57', 1),
(130, 'dime algo', 'Esta mañana me levanté temprano y fui a dar un paseo por el parque.', 1, '2023-04-08 17:09:01', '2023-04-08 12:09:01', 1),
(131, 'dime tu nombre', 'Devian es mi nombre, soy una inteligencia artificial que puede responder preguntas precisas relacionadas con odontología y otros temas específicos, aunque no soy tan avanzado como otras IA. Como no tengo un cuerpo físico, no puede describirme en términos de apariencia, pero se puede entender que soy una red neuronal con conocimientos previos', 1, '2023-04-08 17:09:08', '2023-04-08 12:09:08', 1),
(132, 'dime tu nombre', 'Devian es mi nombre, soy una inteligencia artificial que puede responder preguntas precisas relacionadas con odontología y otros temas específicos, aunque no soy tan avanzado como otras IA. Como no tengo un cuerpo físico, no puede describirme en términos de apariencia, pero se puede entender que soy una red neuronal con conocimientos previos', 1, '2023-04-08 17:09:48', '2023-04-08 12:09:48', 1),
(133, 'dime tu nombre', 'Mi nombre es Devian, soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo ofrecer respuestas a preguntas específicas relacionadas con odontología y otros temas. No poseo un cuerpo físico, así que no puedo describirme en términos de apariencia, pero puedes considerarme como una red neuronal, ya poseo conocimientos previos que me permiten responder a tus preguntas', 1, '2023-04-08 17:10:40', '2023-04-08 12:10:40', 1),
(134, 'dime tu nombre', 'Fui bautizado como Devian por mis creadores, aunque no tiene un significado en particular, además soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo proporcionar respuestas a preguntas específicas relacionadas con odontología y otros temas. Como no tengo un cuerpo físico, no puedo describirme en términos físicos, pero podrías decir que soy una red neuronal que no aprende como tal, sino que ya tengo conocimientos previos que me permiten responder a tus preguntas', 1, '2023-04-08 17:11:07', '2023-04-08 12:11:07', 1),
(135, 'dime tu nombre', 'Mi nombre es Devian, soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo ofrecer respuestas a preguntas específicas relacionadas con odontología y otros temas. No poseo un cuerpo físico, así que no puedo describirme en términos de apariencia, pero puedes considerarme como una red neuronal, ya poseo conocimientos previos que me permiten responder a tus preguntas', 1, '2023-04-08 17:11:30', '2023-04-08 12:11:30', 1),
(136, 'estas bien', 'Me siento mejor ahora que estoy hablando contigo, gracias.', 1, '2023-04-08 17:12:01', '2023-04-08 12:12:01', 1),
(137, 'estas bien?', 'Estoy muy bien, gracias por preguntar.', 1, '2023-04-08 17:12:10', '2023-04-08 12:12:10', 1),
(138, 'dime tu nombre', 'Mi nombre es Devian, soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo ofrecer respuestas a preguntas específicas relacionadas con odontología y otros temas. No poseo un cuerpo físico, así que no puedo describirme en términos de apariencia, pero puedes considerarme como una red neuronal, ya poseo conocimientos previos que me permiten responder a tus preguntas', 1, '2023-04-08 17:12:24', '2023-04-08 12:12:24', 1),
(139, 'dime tu nombre', 'Devian es mi nombre, soy una inteligencia artificial que puede responder preguntas precisas relacionadas con odontología y otros temas específicos, aunque no soy tan avanzado como otras IA. Como no tengo un cuerpo físico, no puede describirme en términos de apariencia, pero se puede entender que soy una red neuronal con conocimientos previos', 1, '2023-04-08 17:12:27', '2023-04-08 12:12:27', 1),
(140, 'nombre', '¡Buenas!, ¿Necesitas ayuda?', 1, '2023-04-08 17:13:09', '2023-04-08 12:13:09', 1),
(141, 'como te llamas', 'Fui bautizado como Devian por mis creadores, aunque no tiene un significado en particular, además soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo proporcionar respuestas a preguntas específicas relacionadas con odontología y otros temas. Como no tengo un cuerpo físico, no puedo describirme en términos físicos, pero podrías decir que soy una red neuronal que no aprende como tal, sino que ya tengo conocimientos previos que me permiten responder a tus preguntas', 1, '2023-04-08 17:13:19', '2023-04-08 12:13:19', 1),
(142, 'hola', '¡Hola!, ¿Necesitas ayuda?', 1, '2023-04-08 19:55:05', '2023-04-08 14:55:05', 1),
(143, 'si', 'Devian es mi nombre, soy una inteligencia artificial que puede responder preguntas precisas relacionadas con odontología y otros temas específicos, aunque no soy tan avanzado como otras IA. Como no tengo un cuerpo físico, no puede describirme en términos de apariencia, pero se puede entender que soy una red neuronal con conocimientos previos', 1, '2023-04-08 19:55:15', '2023-04-08 14:55:15', 1),
(144, 'si', 'Devian es mi nombre, soy una inteligencia artificial que puede responder preguntas precisas relacionadas con odontología y otros temas específicos, aunque no soy tan avanzado como otras IA. Como no tengo un cuerpo físico, no puede describirme en términos de apariencia, pero se puede entender que soy una red neuronal con conocimientos previos', 1, '2023-04-08 19:55:15', '2023-04-08 14:55:15', 1),
(145, 'gracias', '¡Buenas!, ¿Necesitas ayuda?', 1, '2023-04-08 19:55:51', '2023-04-08 14:55:51', 1),
(146, 'gracias', '¿Qué tal?, ¿Necesitas mi ayuda?', 1, '2023-04-08 19:55:51', '2023-04-08 14:55:51', 1),
(147, 'como se que necesito usar brackets?', 'Los brackets son un tratamiento de ortodoncia que utiliza brackets metálicos para mover gradualmente los dientes a su posición correcta.', 1, '2023-04-08 19:56:29', '2023-04-08 14:56:29', 1),
(148, 'como se que necesito usar brackets?', 'Los brackets son un tratamiento de ortodoncia que utiliza brackets metálicos para mover gradualmente los dientes a su posición correcta.', 1, '2023-04-08 19:56:29', '2023-04-08 14:56:29', 1),
(149, 'como puedo blanquear mis dientes', 'Evita alimentos y bebidas que manchan los dientes, como el café, el té, el vino tinto y los refrescos oscuros. Además, cepilla tus dientes después de consumir estos alimentos.', 1, '2023-04-08 19:56:59', '2023-04-08 14:56:59', 1),
(150, 'como puedo blanquear mis dientes', 'Cepillarse los dientes con bicarbonato de sodio puede ayudar a eliminar manchas superficiales y a blanquear los dientes.', 1, '2023-04-08 19:56:59', '2023-04-08 14:56:59', 1),
(151, 'cada cuanto debo ir a una cita odontologica?', 'Lo más recomendable es acudir a un dentista o especialista en odontología. Puedes buscar clínicas dentales o consultorios particulares en tu área y programar una cita para una evaluación y tratamiento. También puedes consultar con tu médico de cabecera o pediatra, quienes podrán derivarte a un especialista si es necesario. ', 1, '2023-04-08 19:57:48', '2023-04-08 14:57:48', 1),
(152, 'cada cuanto debo ir a una cita odontologica?', 'Lo más recomendable es acudir a un dentista o especialista en odontología. Puedes buscar clínicas dentales o consultorios particulares en tu área y programar una cita para una evaluación y tratamiento. También puedes consultar con tu médico de cabecera o pediatra, quienes podrán derivarte a un especialista si es necesario. ', 1, '2023-04-08 19:58:28', '2023-04-08 14:58:28', 1),
(153, 'cada cuanto debo ir a una cita odontologica?', 'Lo más recomendable es acudir a un dentista o especialista en odontología. Puedes buscar clínicas dentales o consultorios particulares en tu área y programar una cita para una evaluación y tratamiento. También puedes consultar con tu médico de cabecera o pediatra, quienes podrán derivarte a un especialista si es necesario. ', 1, '2023-04-08 19:58:33', '2023-04-08 14:58:33', 1),
(154, 'cada cuanto debo ir a una cita odontologica?', 'Lo más recomendable es acudir a un dentista o especialista en odontología. Puedes buscar clínicas dentales o consultorios particulares en tu área y programar una cita para una evaluación y tratamiento. También puedes consultar con tu médico de cabecera o pediatra, quienes podrán derivarte a un especialista si es necesario. ', 1, '2023-04-08 19:58:37', '2023-04-08 14:58:37', 1),
(155, 'cada cuanto debo ir a una cita odontologica?', 'Lo más recomendable es acudir a un dentista o especialista en odontología. Puedes buscar clínicas dentales o consultorios particulares en tu área y programar una cita para una evaluación y tratamiento. También puedes consultar con tu médico de cabecera o pediatra, quienes podrán derivarte a un especialista si es necesario. ', 1, '2023-04-08 19:58:42', '2023-04-08 14:58:42', 1),
(156, 'cada cuanto debo ir a una cita?', 'Lo más recomendable es acudir a un dentista o especialista en odontología. Puedes buscar clínicas dentales o consultorios particulares en tu área y programar una cita para una evaluación y tratamiento. También puedes consultar con tu médico de cabecera o pediatra, quienes podrán derivarte a un especialista si es necesario. ', 1, '2023-04-08 19:58:49', '2023-04-08 14:58:49', 1),
(157, 'sisa', '¡Hola!', 1, '2023-04-08 19:58:57', '2023-04-08 14:58:57', 1),
(158, 'que eres?', 'Devian es mi nombre, soy una inteligencia artificial que puede responder preguntas precisas relacionadas con odontología y otros temas específicos, aunque no soy tan avanzado como otras IA. Como no tengo un cuerpo físico, no puede describirme en términos de apariencia, pero se puede entender que soy una red neuronal con conocimientos previos', 1, '2023-04-08 19:59:08', '2023-04-08 14:59:08', 1),
(159, 'como eres', 'Devian es mi nombre, soy una inteligencia artificial que puede responder preguntas precisas relacionadas con odontología y otros temas específicos, aunque no soy tan avanzado como otras IA. Como no tengo un cuerpo físico, no puede describirme en términos de apariencia, pero se puede entender que soy una red neuronal con conocimientos previos', 1, '2023-04-08 19:59:20', '2023-04-08 14:59:20', 1),
(160, 'que es odontologia', 'La odontologia ofrece una amplia variedad de tratamientos, que incluyen desde la limpieza dental y la prevencion de caries hasta la colocacion de implantes dentales y la ortodoncia para corregir problemas de mordida y alineacion de los dientes.', 1, '2023-04-08 20:02:00', '2023-04-08 15:02:00', 1),
(161, 'que es odontologia', 'Es importante la odontologia porque la salud bucal es fundamental para el bienestar general del individuo. Los dientes, encias y otras estructuras de la cavidad oral pueden afectar la salud en general, por lo que es importante mantenerlos sanos y tratar cualquier problema a tiempo.', 1, '2023-04-08 20:02:09', '2023-04-08 15:02:09', 1),
(162, 'que es odontologia', 'La odontologia es una especialidad que se enfoca en el cuidado de la salud bucal de las personas, incluyendo el diagnostico y tratamiento de enfermedades y trastornos en los dientes, encias y otras estructuras en la cavidad oral.', 1, '2023-04-08 20:02:13', '2023-04-08 15:02:13', 1),
(163, 'dime algo', 'La Gran Muralla China es la estructura de defensa más larga del mundo', 1, '2023-04-08 20:02:25', '2023-04-08 15:02:25', 1),
(164, 'háblame de lo que sea', 'El sol es una estrella', 1, '2023-04-08 20:02:39', '2023-04-08 15:02:39', 1),
(165, 'háblame de lo que sea', 'Ayer preparé una cena especial para mis amigos y todos quedaron muy contentos.', 1, '2023-04-08 20:02:47', '2023-04-08 15:02:47', 1),
(166, 'algo', 'Estoy tratando de mantener una rutina de ejercicios para mejorar mi salud física y mental.', 1, '2023-04-08 20:03:02', '2023-04-08 15:03:02', 1),
(167, 'Me llamo Joseph', '¡Buenas!, ¿Necesitas ayuda?', 1, '2023-04-08 20:05:26', '2023-04-08 15:05:26', 1),
(168, 'eres hombre', 'Devian es mi nombre, soy una inteligencia artificial que puede responder preguntas precisas relacionadas con odontología y otros temas específicos, aunque no soy tan avanzado como otras IA. Como no tengo un cuerpo físico, no puede describirme en términos de apariencia, pero se puede entender que soy una red neuronal con conocimientos previos', 1, '2023-04-08 20:06:28', '2023-04-08 15:06:28', 1),
(169, 'OK', '¿Qué tal?, ¿Necesitas mi ayuda?', 1, '2023-04-08 20:06:41', '2023-04-08 15:06:41', 1),
(170, 'hola', '¿Aló?, ¿Hay algo que quieras saber?', 1, '2023-04-08 22:33:03', '2023-04-08 17:33:03', 1),
(171, 'hola', 'Hey ¿Qué tal?, ¿Necesitas alguna cosa?', 1, '2023-04-08 22:41:14', '2023-04-08 17:41:14', 1),
(172, 'adadad', '¡Hola!', 1, '2023-04-08 22:41:18', '2023-04-08 17:41:18', 1),
(173, 'Tengo los dientes amarillos', 'Evita alimentos y bebidas que manchan los dientes, como el café, el té, el vino tinto y los refrescos oscuros. Además, cepilla tus dientes después de consumir estos alimentos.', 1, '2023-04-09 03:22:16', '2023-04-08 22:22:16', 1),
(174, 'cómo puedo mejorar mi sonrisa', 'El tiempo de tratamiento depende de la complejidad del caso, pero en promedio puede durar entre 18 y 24 meses.', 1, '2023-04-09 03:22:31', '2023-04-08 22:22:31', 1),
(175, 'Hola!', '¿Aló?, ¿Hay algo que quieras saber?', 1, '2023-04-09 05:45:54', '2023-04-09 00:45:54', 1),
(176, 'Cómo estás?', '¡Buenas! ¿Te puedo ayudar en algo?', 1, '2023-04-09 05:46:01', '2023-04-09 00:46:01', 1),
(177, 'Hola', '¡Hola!, ¿Necesitas ayuda?', 1, '2023-04-11 00:28:24', '2023-04-10 19:28:24', 1),
(178, 'Me duelen los dientes', 'Es posible que el dolor de muela se deba a una inflamación en la raíz del diente. Un tratamiento de conducto puede ser necesario para tratar la afección.', 1, '2023-04-11 00:28:34', '2023-04-10 19:28:34', 1),
(179, 'Mis dientes están amarillos', 'Mantén una buena higiene bucal, cepillándote los dientes al menos dos veces al día y usando hilo dental diariamente. Esto puede ayudar a prevenir la acumulación de placa y evitar que los dientes se vean amarillos.', 1, '2023-04-11 00:28:47', '2023-04-10 19:28:47', 1),
(180, 'dime algo', 'La música es el lenguaje universal', 1, '2023-04-11 00:28:57', '2023-04-10 19:28:57', 1),
(181, 'dime algo', 'El sushi es un plato japonés hecho de arroz y pescado crudo', 1, '2023-04-11 00:29:06', '2023-04-10 19:29:06', 1),
(182, 'dime lo que sea', 'Anoche soñé que estaba en una isla tropical rodeado de palmeras y mar cristalino.', 1, '2023-04-11 00:29:12', '2023-04-10 19:29:12', 1),
(183, 'como te llamas?', 'Mi nombre es Devian, soy una inteligencia artificial que, aunque no es tan avanzada como otras, puedo ofrecer respuestas a preguntas específicas relacionadas con odontología y otros temas. No poseo un cuerpo físico, así que no puedo describirme en términos de apariencia, pero puedes considerarme como una red neuronal, ya poseo conocimientos previos que me permiten responder a tus preguntas', 1, '2023-04-11 00:29:20', '2023-04-10 19:29:20', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `emotions`
--

CREATE TABLE `emotions` (
  `emotion_id` int(11) NOT NULL,
  `text_input` longtext NOT NULL,
  `porcentage` decimal(11,2) NOT NULL,
  `result` varchar(250) NOT NULL,
  `active` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `emotions`
--

INSERT INTO `emotions` (`emotion_id`, `text_input`, `porcentage`, `result`, `active`, `created_at`, `updated_at`, `user_id`) VALUES
(1, 'Hoy me siento muy feliz', '0.61', 'texto positivo', 1, '2023-04-09 03:52:37', '2023-04-08 22:52:37', 1),
(2, 'La comida de los animales sabe rico', '0.56', 'texto positivo', 1, '2023-04-09 03:53:15', '2023-04-08 22:53:15', 1),
(3, 'Me siento bien', '0.44', 'texto positivo', 1, '2023-04-09 03:58:03', '2023-04-08 22:58:03', 1),
(4, 'Me siento bien', '0.44', 'texto positivo', 1, '2023-04-09 03:58:59', '2023-04-08 22:58:59', 1),
(5, 'eso no es normal', '0.00', 'texto neutral', 1, '2023-04-09 04:01:48', '2023-04-08 23:01:48', 1),
(6, 'que raro eres tío, joder', '-0.65', 'texto negativo', 1, '2023-04-09 04:02:11', '2023-04-08 23:02:11', 1),
(7, 'La cara de los emojis me asusta', '-0.34', '', 1, '2023-04-09 04:03:15', '2023-04-08 23:03:15', 1),
(8, '121313', '0.00', 'texto neutral', 1, '2023-04-09 04:06:05', '2023-04-08 23:06:05', 1),
(9, 'asdfbvdsa', '0.00', 'texto neutral', 1, '2023-04-09 04:47:32', '2023-04-08 23:47:32', 1),
(10, 'No estoy feliz', '-0.46', 'texto negativo', 1, '2023-04-09 05:37:14', '2023-04-09 00:37:14', 1),
(11, 'Mi dia estuvo bien, que felicidad', '0.76', 'texto positivo', 1, '2023-04-11 00:15:16', '2023-04-10 19:15:16', 1),
(12, 'Me siento muy mal', '-0.58', 'texto negativo', 1, '2023-04-11 00:22:05', '2023-04-10 19:22:05', 1),
(13, 'Me siento muy mal hoy', '-0.58', 'texto negativo', 1, '2023-04-11 00:26:56', '2023-04-10 19:26:56', 1),
(14, 'Me siento muy bien', '0.49', 'texto positivo', 1, '2023-04-11 00:27:04', '2023-04-10 19:27:04', 1),
(15, 'No puede ser, que raro.', '0.13', 'texto neutral', 1, '2023-04-11 00:27:18', '2023-04-10 19:27:18', 1),
(16, 'EL dia está soleado', '0.42', 'texto positivo', 1, '2023-04-11 00:27:28', '2023-04-10 19:27:28', 1),
(17, 'Estoy empudadísimo', '0.00', 'texto neutral', 1, '2023-04-11 00:27:48', '2023-04-10 19:27:48', 1),
(18, 'Estoy muy enojado', '-0.56', 'texto negativo', 1, '2023-04-11 00:28:15', '2023-04-10 19:28:15', 1),
(19, 'Mi dia estuvo bien, que felicidad', '0.76', 'texto positivo', 1, '2023-04-11 00:49:24', '2023-04-10 19:49:24', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resumenes`
--

CREATE TABLE `resumenes` (
  `resumen_id` int(11) NOT NULL,
  `resume` longtext NOT NULL,
  `link` longtext NOT NULL,
  `active` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `user_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `resumenes`
--

INSERT INTO `resumenes` (`resumen_id`, `resume`, `link`, `active`, `created_at`, `updated_at`, `user_id`) VALUES
(1, '50 900 Miniatura contiene el nombre de la colección Nombre Fecha de lanzamiento Precio Bad Omen Wraith Aberrations 12 de junio de 2018 (martes) Descripción A través del Velo de la Noche, The Death Bell Rings.\"Swift Hunt\" - Blood El símbolo de Kuntin -Takkho, que representa un descenso rápido en una presa, está estampado en sangre en el cuerpo de la campana.\"Shadow Dance\" - Blood El símbolo de Yiwarick, que representa la sinergia oscura, está estampado en sangre en el cuerpo de la campana.\"Windstorm\" - Blood El símbolo de Ohuwe -onmnea, que representa una tormenta aulladora, está estampado en sangre en el cuerpo de la campana.\"Swift Hunt\" - White El símbolo de Kuntin -Takkho, que representa un descenso rápido en una presa, está estampado en tinta blanca en el cuerpo de la campana.Modelos * El modelo de Wraith (sin textura) * Modelo marcado de hojas de sangre * Swift Strikes - White * The Owl - White * Azarovs Skull Screenshots * * * * * * * * * * Fan Art * The Wraiths Fan Art (hecho por Anin00tlikesthings) The Killers Base Game / Capítulos Evan Macmillan - The Trapper Philip Ojomo - The Wraith Max Thompson Jr. - The Hillbilly Sally Smithson - La enfermera Michael Myers - The Shape 1 - 2 Capítulos Lisa Sherwood - The Hag Herman Carter - The Doctor Anna -La cazadora Bubba Sawyer - The Cannibal Freddy Krueger - The Nightmare 3 - 6 Capítulos Amanda Young - The Pig Jeffrey Hawk - The Clown Rin Yamaoka - The Spirit Frank, Julie, Susie, Joey - The Legion Adiris - The Plague 7 - 11 Capter Danny DannyJohnson - The Ghost Face the Demogorgon Kazan Yamaoka - The Oni Caleb Quinn - The Deathslinger Pyramid Head - The Evutorer 12 - 16 Capítulos Talbot Grimes - The Blewing Charlotte y Victor DeshayesThe Nemesis Elliot Spencer - The Cenobite 17 - 21 Capítulos Carmina Mora - El artista Sadako Yamamura - The Onryō el Dredge Albert Wesker - The Mastermind Tarhos Kovács - The Knight 22 - 26 Capítulo 27 Adriana Imai - The Skull Merchant The Survivors Base Game / DwwightFairfield Meg Thomas Claudette Morel Jake Park Nea Karlsson Capítulo 1 Capítulos Laurie Strode Ace Visconti Bill Overbeck Feng Min David King 2 - 5 Capítulos Quentin Smith David Tapp Kate Denson Adam Francis Jeff Johansen 6 - 10 Capítulos Jane Romero Ash Williams Nancy Wheeler Steve Harrington Yui Kimura11 - 14 Capítulos Zarina Kassir Cheryl Mason Felix Richter Élodie Rakoto Yun -Jin Lee 15 - 19 Capítulos Jill Valentín León Scott Kennedy Mikaela Reid Jonah Vasquez Yoichi Asakawa 20 - 23 Capítulos Haddie Kaur Ada Wong Rebecca Chamebers Vittorio THALITA THALITA LYLY LYRA - 27 CAPÍTULOS 27 CAPÍTULOS 27 CAPÍTULOS 27 CAPÍTULOS 27 CAPÍTULOS 27 CAPÍTULOSRenato Lyra Personajes legendarios Carlos Oliveira El charlatán Chris Redfield Claire Redfield Cybil Bennett Hunk James Sunderland Lisa Garland The Look-See the Mordeo Sheva Alomar Jonathan Byers El titán blindado el titán de guerra William Birkin Mythological personajes del Baba Yaga el Ferryman el Krampus the Minotaur CostumePersonajes Alessa Gillespie Annie Leonhart Armin Arlert El abedul Eren Yeager El dios del deseo el podrido permanece Hange Zoë Historia Reiss Kenny Ackerman Levi Ackerman Mikasa Ackerman Personajes de la historia Alex Benedict Baker The Entity The Observer Vigo y muchos más ... personajes no utilizados El maestro El maestro el maestro el maestro el maestroCategorías * Categorías: * DeleteBox Eliminar listas * DeleteBox List para 6.7.0 * Killers * Easy Killers * Personajes masculinos Lenguajes Deutsch Español Français Italiano Polski Português 中文 Contenido comunitario está disponible bajo CC BY-NC-SA de lo contrario.\"Shadow Dance\" - White El símbolo de Yiwarick, que representa la sinergia oscura, está estampado en tinta blanca en el cuerpo de la campana.', 'https://deadbydaylight.fandom.com/wiki/Philip_Ojomo', 1, '2023-04-09 04:34:05', '2023-04-08 23:34:05', 1),
(2, 'Charles Darwin Información personal Nombre de nacimiento Charles Robert Darwin Nacimiento 12 de febrero de 1809 The Mount (Reino Unido) Fallecimiento 19 de abril de 1882 Down House (Reino Unido) Sepultura Abadía de Westminster Nacionalidad Británica Religión Anglicanismo y agnosticismo Lengua materna Inglés de Inglaterra Familia Padres Robert Darwin Susannah Darwin Cónyuge Emma Darwin (1839-1882) * Anne Darwin Hijos * Francis Darwin * George Darwin * Leonard Darwin Educación Educación Grado en Artes, Master of Arts y Legum Doctor * Christs College * University of Edinburgh Medical School Educado en * Shrewsbury School (1818-1825) * Universidad de Edimburgo (Medicina; desde 1825) * Universidad de Cambridge (Teología; desde 1828) Alumno de * Adam Sedgwick * John Edmonstone Información profesional Ocupación Geólogo, explorador, escritor de viajes, etólogo, naturalista, filósofo y escritor * El origen de las especies * El viaje del Beagle Obras notables * El origen del hombre * La expresión de las emociones en el hombre y en los animales * Insectivorous Plants Abreviatura en botánica Darwin Abreviatura en zoología Darwin * Real Academia de las Ciencias de Suecia * Academia de Ciencias de Hungría * Real Academia de Artes y Ciencias de los Países Bajos * Academia Nacional de los Linces * Academia de Ciencias de Francia * Academia de Ciencias de Rusia * Academia Prusiana de las Ciencias Miembro de * Royal Geographical Society * Academia de Ciencias de Baviera * Sociedad Zoológica de Londres (desde 1839) * Royal Society (desde 1839) * Academia Alemana de las Ciencias Naturales Leopoldina (desde 1857) * Sociedad Filosófica Estadounidense (desde 1869) * Academia de Ciencias de Turín (desde 1873) * Academia Estadounidense de las Artes y las Ciencias (desde 1874) Firma Escudo [editar datos en Wikidata] Charles Robert Darwin (Shrewsbury, 12 de febrero de 1809-Down House, 19 de abril de 1882), comúnmente conocido como Charles Darwin, también llamado Carlos Darwin en parte del ámbito hispano, [ 1 ] ​ [ 2 ] ​ [ 3 ] ​ fue un naturalista inglés, reconocido por ser el científico más influyente (y el primero, compartiendo este logro de forma independiente con Alfred Russel Wallace) de los que plantearon la idea de la evolución biológica a través de la selección natural, justificándola en su obra El origen de las especies (1859) con numerosos ejemplos extraídos de la observación de la naturaleza. [ 90 ] ​ Continuando con sus investigaciones en Londres, a las extensas lecturas de Darwin se añadió la sexta edición de la obra de Thomas Malthus Ensayo sobre el principio de la población: En octubre de 1838, esto es, quince meses después de comenzar mi indagación sistemática, sucedió que leí por diversión el ensayo sobre la población de Malthus, y comencé a estar bien preparado para apreciar la lucha por la existencia que se da en todas partes a partir de observaciones a largo plazo de los hábitos de animales y plantas, y de inmediato me impactó el hecho de que bajo tales circunstancias las variaciones favorables tenderían a ser preservadas, mientras que las desfavorables serían destruidas. Durante este período leyó tres obras que ejercerían una influencia fundamental en la evolución de su pensamiento: otra obra de Paley, Teología Natural, uno de los tratados clásicos en defensa de la adaptación biológica como prueba del diseño divino a través de las leyes naturales; [ 23 ] ​ el recién publicado Un discurso preliminar en el estudio de la filosofía natural, de John Herschel, que describía la última meta de la filosofía natural como la comprensión de estas leyes a través del razonamiento inductivo basado en la observación; y el Viaje a las regiones equinocciales del Nuevo Continente, de Alexander von Humboldt. Esto resalta cuando Darwin habla de la supuesta relación entre las facultades intelectuales y el tamaño del cerebro, y cita una clasificación craneométrica en la que se describe a los europeos con la mayor capacidad intelectual, mientras que describe a los asiáticos y aborígenes australianos con la menor capacidad: La creencia de que existe en el hombre alguna estrecha relación entre el tamaño del cerebro y el desarrollo de las facultades intelectuales se apoya en la comparación de los cráneos de las razas salvajes y las razas civilizadas, de los pueblos antiguos y modernos, y por la analogía de toda la serie de vertebrados. [ 14 ] ​ Índice * 1 Biografía + 1.1 Primeros años y formación + 1.2 Viaje del HMS Beagle + 1.3 Años de la gestación y publicación de El origen de las especies o 1.3.1 Inicios de la teoría o 1.3.2 El proceso de preparación o 1.3.3 Trabajo excesivo, enfermedad y matrimonio o 1.3.4 Publicación + 1.4 Los últimos años de Darwin * 2 Publicaciones de Charles Darwin * 3 Árbol genealógico + 3.1 Padre y abuelos paternos + 3.2 Madre y abuelos maternos + 3.3 Padres y hermanos * 4 Los hijos de Darwin * 5 La teoría de Darwin: comunidad de descendencia y selección natural * 6 Críticas a la teoría de la evolución y controversia * 7 Pensamiento religioso * 8 Interpretaciones no biológicas de la evolución + 8.1 Eugenesia + 8.2 Darwinismo social * 9 Homenajes a Darwin + 9.1 Eponimia * 10 Notas * 11 Referencias * 12 Bibliografía utilizada * 13 Enlaces externos Biografía Primeros años y formación Darwin con siete años en 1816. 1926) Francis Darwin (16 de agosto de 1848-19 de septiembre de 1925) Leonard Darwin (15 de enero de 1850-26 de marzo de 1943) Horace Darwin (13 de mayo de 1851-29 de septiembre de 1928) Charles Waring Darwin (6 de diciembre de 1856-28 de junio de 1858) El matrimonio Darwin tuvo diez hijos. Hijos de Darwin Fechas de nacimiento y fallecimiento William Erasmus Darwin (27 de diciembre de 1839-8 de septiembre de 1914) Anne Elizabeth Darwin (2 de marzo de 1841-22 de abril de 1851) Mary Eleanor Darwin (23 de septiembre de 1842-16 de octubre de 1842) Henrietta Emma “Etty” Darwin (25 de septiembre de 1843-?', 'https://es.wikipedia.org/wiki/Charles_Darwin', 1, '2023-04-09 04:45:19', '2023-04-08 23:45:19', 1),
(3, 'Predecesor: Sucesor: Guillermo IV Reina del Reino Unido y sus Dominios de Ultramar Eduardo VII 1837-1901 Predecesor: Sucesor: Título de nueva creación Emperatriz de la India Eduardo VII 1877-1901 * Proyectos Wikimedia * Datos: Q9439 * Multimedia: Victoria of the United Kingdom / Q9439 * Citas célebres: Victoria del Reino Unido * Identificadores * WorldCat * VIAF : 95738652 * ISNI : 0000 0001 2144 3562 * BNE : XX979643 * BNF : 11928202f (data) * BNC : 000108638 * CANTIC : 981058530077006706 * GND : 118626876 * LCCN : n79017983 * NDL : 00621601 * NKC : jn20000701900 * NLA : 35581194 * CiNii : DA01723604 Control de autoridades * NARA : 10582813 * SNAC : w66n3wvb * SUDOC : 027448207 * ULAN : 500022428 * BIBSYS : 90733366 * ICCU : RAVV056062 * Deutsche Biographie : 118626876 * Open Library : OL343963A * RKD : 80887 * Diccionarios y enciclopedias * Britannica : url * Treccani : url * Repositorios digitales * Proyecto Gutenberg : 9035 * SAAM : 5149 * Patrimonio histórico * FMIS : LSH/agents/31574 * Cine * IMDb : nm0703075 * Datos: Q9439 * Multimedia: Victoria of the United Kingdom / Q9439 * Citas célebres: Victoria del Reino Unido Obtenido de «https://es.wikipedia.org/w/index.php?title=Victoria_del_Reino_Unido&oldid=150362475» Categorías: * Mujeres * Nacidos en 1819 * Fallecidos en 1901 * Victoria del Reino Unido * Reyes de Reino Unido (casa de Hannover) * Emperadores de India * Casa de Sajonia-Coburgo-Gotha * Soberanos de la Orden de San Patricio * Soberanos de la Orden del Baño * Guerras del opio * Emperatrices * Mujeres de la época victoriana * Mujeres gobernantes del siglo XIX * Princesas británicas * Diaristas del Reino Unido * Reyes de Irlanda * Damas de la Orden de las Damas Nobles de la Reina María Luisa * Autobiógrafos del Reino Unido * Sepultados en el Cementerio Real de Frogmore * Soberanos de la Orden de la Corona de la India * Damas de la Orden de la Reina Santa Isabel * Coroneles honorarios del Éjercito prusiano * Damas de la Orden del León dorado * Damas grandes cruces de la Orden imperial de San Carlos * Damas de la Orden de Luisa * Miembros de la Orden de familia de Jorge IV Categorías ocultas: * Wikipedia:Páginas con referencias web sin URL * Wikipedia:Páginas con referencias sin URL y con fecha de acceso * Wikipedia:Páginas con enlaces mágicos de ISBN * Wikipedia:Artículos destacados * Wikipedia:Artículos buenos en la Wikipedia en japonés * Wikipedia:Artículos buenos en la Wikipedia en finés * Wikipedia:Artículos destacados en la Wikipedia en portugués * Wikipedia:Artículos buenos en la Wikipedia en chino clásico * Wikipedia:Artículos destacados en la Wikipedia en inglés * Wikipedia:Artículos destacados en la Wikipedia en afrikáans * Wikipedia:Artículos buenos en la Wikipedia en sueco * Wikipedia:Artículos destacados en la Wikipedia en búlgaro * Wikipedia:Artículos con identificadores VIAF * Wikipedia:Artículos con identificadores ISNI * Wikipedia:Artículos con identificadores BNE * Wikipedia:Artículos con identificadores BNF * Wikipedia:Artículos con identificadores BNC * Wikipedia:Artículos con identificadores CANTIC * Wikipedia:Artículos con identificadores GND * Wikipedia:Artículos con identificadores LCCN * Wikipedia:Artículos con identificadores NLA * Wikipedia:Artículos con identificadores SNAC * Wikipedia:Artículos con identificadores ULAN * Wikipedia:Artículos con identificadores BIBSYS * Wikipedia:Artículos con identificadores SBN * Wikipedia:Artículos con identificadores DeutscheBiographie * Wikipedia:Artículos con identificadores Open Library * Wikipedia:Artículos con identificadores RKDartists * Wikipedia:Artículos con identificadores Proyecto Gutenberg autor * Wikipedia:Artículos con identificadores SAAM (persona) * Wikipedia:Artículos con identificadores FMIS * Wikipedia:Control de autoridades con 30 elementos Menú de navegación Herramientas personales * No has accedido * Discusión * Contribuciones * Crear una cuenta * Acceder Espacios de nombres * Artículo * Discusión español Vistas * Leer * Editar * Ver historial Más Navegación * Portada * Portal de la comunidad * Actualidad * Cambios recientes * Páginas nuevas * Página aleatoria * Ayuda * Donaciones * Notificar un error Herramientas * Lo que enlaza aquí * Cambios en enlazadas * Subir archivo * Páginas especiales * Enlace permanente * Información de la página * Citar esta página * Elemento de Wikidata Imprimir/exportar * Crear un libro * Descargar como PDF * Versión para imprimir En otros proyectos * Wikimedia Commons * Wikiquote En otros idiomas * Afrikaans * Alemannisch * አማርኛ * Aragonés * अंगिका * العربية * مصرى * Asturianu * अवधी * Azərbaycanca * تۆرکجه * Башҡортса * Žemaitėška * Bikol Central * Беларуская * Беларуская (тарашкевіца) * Български * भोजपुरी * বাংলা * Brezhoneg * Bosanski * Català * 閩東語 / Mìng-dĕ̤ng-ngṳ̄ * کوردی * Čeština * Чӑвашла * Cymraeg * Dansk * Deutsch * डोटेली * Ελληνικά * English * Esperanto * Eesti * Euskara * فارسی * Suomi * Võro * Føroyskt * Français * Nordfriisk * Frysk * Gaeilge * Gàidhlig * Galego * 客家語/Hak-kâ-ngî * עברית * हिन्दी * Hrvatski * Magyar * Հայերեն * Interlingua * Bahasa Indonesia * Igbo * Ido * Íslenska * Italiano * 日本語 * Jawa * ქართული * Taqbaylit * Kabɩyɛ * Қазақша * ಕನ್ನಡ * 한국어 * Kurdî * Kernowek * Кыргызча * Latina * Lëtzebuergesch * Lingua Franca Nova * Ligure * Lombard * Lietuvių * Latviešu * मैथिली * Malagasy * Македонски * മലയാളം * Монгол * मराठी * Bahasa Melayu * မြန်မာဘာသာ * مازِرونی * Plattdüütsch * नेपाली * Nederlands * Norsk nynorsk * Norsk bokmål * Nouormand * Occitan * ਪੰਜਾਬੀ * Polski * Piemontèis * پنجابی * پښتو * Português * Runa Simi * Română * Русский * Русиньскый * संस्कृतम् * Sicilianu * Scots * سنڌي * Srpskohrvatski / српскохрватски * සිංහල * Simple English * Slovenčina * Slovenščina * Gagana Samoa * Shqip * Српски / srpski * Svenska * Kiswahili * தமிழ் * తెలుగు * Тоҷикӣ * ไทย * Tagalog * Türkçe * Татарча / tatarça * Twi * Українська * اردو * Oʻzbekcha / ўзбекча * Tiếng Việt * Winaray * 吴语 * მარგალური * ייִדיש * Zeêuws * 中文 * 文言 * Bân-lâm-gú * 粵語 Editar enlaces * Esta página se editó por última vez el 5 abr 2023 a las 23:38. Victoria del Reino Unido Reina del Reino Unido Emperatriz de la India La reina Victoria fotografiada en 1882 Reina del Reino Unido de Gran Bretaña e Irlanda 20 de junio de 1837-22 de enero de 1901 (63 años y 216 días) Predecesor Guillermo IV Sucesor Eduardo VII Emperatriz de la India 1 de enero de 1877-22 de enero de 1901 (24 años y 21 días) Predecesor Imperio mogol y Confederación maratha Sucesor Eduardo VII Información personal Nombre completo Alexandrina Victoria Tratamiento Su Majestad Su Majestad Imperial (en India) Otros títulos Princesa del Reino Unido Coronación 28 de junio de 1838 Nacimiento 24 de mayo de 1819 Palacio de Kensington, Londres, Reino Unido Fallecimiento 22 de enero de 1901 (81 años) Castillo de Osborne, Isla de Wight, Reino Unido Sepultura Mausoleo de la reina Victoria y el príncipe Alberto, Cementerio Real de Frogmore, Berkshire, Reino Unido Himno real God Save the Queen Religión Anglicanismo Familia Casa real Hannover Padre Eduardo de Kent Madre Victoria de Sajonia-Coburgo-Saalfeld Consorte Alberto de Sajonia-Coburgo y Gotha (matr. 25 de mayo de 9 de junio de Casada en 1866 (5 de julio), Elena 1846 1923 Cristián de Schleswig-Holstein; con descendencia 18 de marzo de 3 de diciembre de Casada en 1871 (21 de marzo), Luisa 1848 1939 John George Campbell; sin descendencia Casado en 1879 (13 de marzo), Arturo 1 de mayo de 16 de enero de Luisa Margarita de Prusia (1860-1917); 1850 1942 con descendencia como * Margarita de Connaught, en Suecia (Bernadotte). [ 76 ] ​ Descendencia [ editar ] Cuadro La familia de la reina Victoria en 1846, por Franz Xaver Winterhalter (de izquierda a derecha) Los príncipes Alfredo y Alberto Eduardo; la reina y el príncipe consorte; las princesas Alicia, Elena y Victoria Nombre Fecha de nacimiento Fecha de defunción Consorte (fechas de nacimiento y muerte) e hijos [ 77 ] ​ Casada en 1858 (25 de enero), Príncipe heredero Federico de Prusia (1831-1888), 21 de noviembre de 5 de agosto de futuro Federico III de Alemania; Victoria 1840 1901 con descendencia en las casas reales de Europa como: * Guillermo II de Alemania (Hohenzollern). Órdenes [ editar ] * Miembro de la Orden de familia de Jorge IV ( Reino Unido, 24 de mayo de 1823) [ Nota 1 ] ​ [ 226 ] ​ [ 227 ] ​ [ 228 ] ​ * Dama de la Orden de las Damas Nobles de la Reina María Luisa [ 229 ] ​ (21 de diciembre de 1833, Reino de España). * Victoria de Hesse-Darmstadt, abuela de Felipe de Edimburgo Casado en 1874 (23 de enero), Alfredo 6 de agosto de 31 de julio de María Aleksándrovna de Rusia; 1844 1900 con descendencia en las casas reales de Europa como: * María de Edimburgo en Rumania (Hohenzollern-Sigmaringen). [ 156 ] ​ Últimos años [ editar ] Litografía de Victoria nombrando a Benjamin Disraeli caballero de la Orden de la Jarretera, 1878 El 14 de diciembre de 1878, día del 17.º aniversario de la muerte del príncipe Alberto, la segunda hija de Victoria, Alicia, casada con el gran duque Luis IV de Hesse-Darmstadt, falleció de difteria en Darmstadt (Alemania).', 'https://es.wikipedia.org/wiki/Victoria_del_Reino_Unido', 1, '2023-04-09 04:45:39', '2023-04-08 23:45:39', 1),
(4, '* Primeras ediciones de las obras digitalizadas en SOMNI Enlaces en inglés * Obras completas de Charles Darwin en línea (en inglés) * Obras en Dominio Público (en inglés) * Obras en el Proyecto Gutenberg * The Darwin Correspondence Online Database (en inglés) * Sobre Darwin, el viaje en el Beagle y su época (en inglés) * Obra de Darwin en línea (en inglés) * Proyectos Wikimedia * Datos: Q1035 * Multimedia: Charles Darwin / Q1035 * Citas célebres: Charles Darwin * Textos: Autor:Charles Darwin * Especies: Charles Robert Darwin * Identificadores * WorldCat * VIAF : 27063124 * ISNI : 0000 0001 2125 1077 * BNA : 000045149 * BNE : XX990809 * BNF : 11898689q (data) * BNC : 000037909 * CANTIC : 981058521640106706 * GND : 118523813 * LCCN : n78095637 * NDL : 00437248 * NKC : jn19990001631 * NLA : 36115292 * BER : 000027436 * CiNii : DA00263429 * NARA : 10580367 * SNAC : w6q63cm5 Control de autoridades * S2 : 39188284 * SUDOC : 026812304 * ULAN : 500228559 * Scopus : 24768459300 * BIBSYS : 90066479 * IPNI : 2001-1 * ICCU : CFIV003045 * Deutsche Biographie : 118523813 * KNAW : PE00004764 * Leopoldina : 2377 * Open Library : OL35839A * KulturNav : id * RKD : 298412 * Google Académico : D847cGsAAAAJ * Museo de Orsay : 24670 * Diccionarios y enciclopedias * Britannica : url * Treccani : url * Repositorios digitales * BVMC : 1867 * Persée : 603525 * Proyecto Gutenberg : 485 * Patrimonio histórico * FMIS : SMVK-EM/name/2234785 * Cine * IMDb : nm6143881 * Datos: Q1035 * Multimedia: Charles Darwin / Q1035 * Citas célebres: Charles Darwin * Textos: Autor:Charles Darwin * Especies: Charles Robert Darwin Obtenido de «https://es.wikipedia.org/w/index.php?title=Charles_Darwin&oldid=149912671» Categorías: * Hombres * Nacidos en 1809 * Fallecidos en 1882 * Charles Darwin * Teóricos de la evolución humana * Circunnavegantes * Escritores sobre viajes del siglo XIX * Etólogos del Reino Unido * Psicólogos evolucionistas * Escritores de divulgación científica * Escritores de Inglaterra del siglo XIX * Entomólogos de Inglaterra del siglo XIX * Botánicos de Inglaterra del siglo XIX * Carcinólogos del Reino Unido * Coleopterólogos * Geólogos de Inglaterra del siglo XIX * Biólogos de Inglaterra del siglo XIX * Naturalistas de Inglaterra del siglo XIX * Exploradores de Inglaterra del siglo XIX * Exploradores del océano Pacífico del Reino Unido * Apicultores del Reino Unido * Taxónomos de Inglaterra * Agnósticos de Inglaterra * Unitarios * Escépticos * Alumnado de la Universidad de Edimburgo * Alumnado del Christs College * Miembros de la Real Academia de las Ciencias de Suecia * Miembros de la Royal Society * Miembros de la Leopoldina * Pour le Mérite * Miembros de la Sociedad Linneana de Londres * Miembros de la Academia de las Ciencias de Turín * Miembros de la Academia de Ciencias de Baviera * Miembros de la Academia Nacional de Ciencias (Córdoba) * Miembros de la Academia de Ciencias de Francia * Miembros de la Accademia Nazionale dei Lincei * Miembros de la American Philosophical Society * Miembros de la Academia de Ciencias de Hungría * Miembros correspondientes de la Academia de Ciencias de Hungría * Miembros de la Academia Prusiana de las Ciencias * Miembros de la Real Academia de Artes y Ciencias de los Países Bajos * Secretarios de la Sociedad Zoológica de Londres * Medalla Copley * Medalla Real * Medalla Wollaston * Personas de la época victoriana * Sepultados en la abadía de Westminster * Personas que dan nombre a un asteroide Categorías ocultas: * Wikipedia:Páginas con referencias con parámetros obsoletos * Wikipedia:Páginas con enlaces mágicos de ISBN * Wikipedia:Páginas con plantillas con argumentos duplicados * Wikipedia:Artículos buenos * Wikipedia:Artículos destacados en la Wikipedia en siciliano * Wikipedia:Artículos destacados en otras ediciones de Wikipedia * Wikipedia:Artículos destacados en la Wikipedia en catalán * Wikipedia:Artículos destacados en la Wikipedia en malayalam * Wikipedia:Artículos buenos en la Wikipedia en griego * Wikipedia:Artículos buenos en la Wikipedia en francés * Wikipedia:Artículos destacados en la Wikipedia en inglés * Wikipedia:Artículos buenos en la Wikipedia en esperanto * Wikipedia:Artículos destacados en la Wikipedia en bosnio * Wikipedia:Artículos destacados en la Wikipedia en finés * Wikipedia:Artículos destacados en la Wikipedia en portugués * Wikipedia:Artículos buenos en la Wikipedia en alemán * Wikipedia:Artículos destacados en la Wikipedia en maltés * Wikipedia:Artículos destacados en la Wikipedia en esloveno * Wikipedia:Artículos destacados en la Wikipedia en polaco * Wikipedia:Artículos destacados en la Wikipedia en búlgaro * Wikipedia:Artículos con extractos * Wikipedia:Páginas con referencias sin URL y con fecha de acceso * Wikipedia:Artículos con plantilla MIA * Wikipedia:Artículos con identificadores VIAF * Wikipedia:Artículos con identificadores ISNI * Wikipedia:Artículos con identificadores BNA * Wikipedia:Artículos con identificadores BNE * Wikipedia:Artículos con identificadores BNF * Wikipedia:Artículos con identificadores BNC * Wikipedia:Artículos con identificadores CANTIC * Wikipedia:Artículos con identificadores GND * Wikipedia:Artículos con identificadores LCCN * Wikipedia:Artículos con identificadores NLA * Wikipedia:Artículos con identificadores SNAC * Wikipedia:Artículos con identificadores ULAN * Wikipedia:Artículos con identificadores Scopus * Wikipedia:Artículos con identificadores BIBSYS * Wikipedia:Artículos con identificadores IPNI * Wikipedia:Artículos con identificadores SBN * Wikipedia:Artículos con identificadores DeutscheBiographie * Wikipedia:Artículos con identificadores KNAW * Wikipedia:Artículos con identificadores Leopoldina * Wikipedia:Artículos con identificadores Open Library * Wikipedia:Artículos con identificadores RKDartists * Wikipedia:Artículos con identificadores Google Académico * Wikipedia:Artículos con identificadores Museo de Orsay (artista) * Wikipedia:Artículos con identificadores BVMC persona * Wikipedia:Artículos con identificadores Persée * Wikipedia:Artículos con identificadores Proyecto Gutenberg autor * Wikipedia:Artículos con identificadores FMIS * Wikipedia:Control de autoridades con más de 30 elementos Menú de navegación Herramientas personales * No has accedido * Discusión * Contribuciones * Crear una cuenta * Acceder Espacios de nombres * Artículo * Discusión español Vistas * Leer * Ver código fuente * Ver historial Más Navegación * Portada * Portal de la comunidad * Actualidad * Cambios recientes * Páginas nuevas * Página aleatoria * Ayuda * Donaciones * Notificar un error Herramientas * Lo que enlaza aquí * Cambios en enlazadas * Subir archivo * Páginas especiales * Enlace permanente * Información de la página * Citar esta página * Elemento de Wikidata Imprimir/exportar * Crear un libro * Descargar como PDF * Versión para imprimir En otros proyectos * Wikimedia Commons * Wikiespecies * Wikiquote * Wikisource En otros idiomas * Afrikaans * Alemannisch * አማርኛ * Aragonés * Ænglisc * अंगिका * العربية * الدارجة * مصرى * অসমীয়া * Asturianu * Aymar aru * Azərbaycanca * تۆرکجه * Башҡортса * Basa Bali * Boarisch * Žemaitėška * Bikol Central * Беларуская * Беларуская (тарашкевіца) * Български * भोजपुरी * Bislama * বাংলা * Brezhoneg * Bosanski * Буряад * Català * 閩東語 / Mìng-dĕ̤ng-ngṳ̄ * Нохчийн * کوردی * Corsu * Qırımtatarca * Čeština * Чӑвашла * Cymraeg * Dansk * Deutsch * डोटेली * Ελληνικά * English * Esperanto * Eesti * Euskara * Estremeñu * فارسی * Suomi * Võro * Føroyskt * Français * Nordfriisk * Furlan * Frysk * Gaeilge * 贛語 * Kriyòl gwiyannen * Gàidhlig * Galego * Avañeẽ * गोंयची कोंकणी / Gõychi Konknni * ગુજરાતી * Gaelg * Hausa * 客家語/Hak-kâ-ngî * עברית * हिन्दी * Fiji Hindi * Hrvatski * Kreyòl ayisyen * Magyar * Հայերեն * Արեւմտահայերէն * Interlingua * Bahasa Indonesia * Interlingue * Ilokano * Ido * Íslenska * Italiano * 日本語 * Patois * La .lojban. Charles Darwin Información personal Nombre de nacimiento Charles Robert Darwin Nacimiento 12 de febrero de 1809 The Mount (Reino Unido) Fallecimiento 19 de abril de 1882 Down House (Reino Unido) Sepultura Abadía de Westminster Nacionalidad Británica Religión Anglicanismo y agnosticismo Lengua materna Inglés de Inglaterra Familia Padres Robert Darwin Susannah Darwin Cónyuge Emma Darwin (1839-1882) * Anne Darwin Hijos * Francis Darwin * George Darwin * Leonard Darwin Educación Educación Grado en Artes, Master of Arts y Legum Doctor * Christs College * University of Edinburgh Medical School Educado en * Shrewsbury School (1818-1825) * Universidad de Edimburgo (Medicina; desde 1825) * Universidad de Cambridge (Teología; desde 1828) Alumno de * Adam Sedgwick * John Edmonstone Información profesional Ocupación Geólogo, explorador, escritor de viajes, etólogo, naturalista, filósofo y escritor * El origen de las especies * El viaje del Beagle Obras notables * El origen del hombre * La expresión de las emociones en el hombre y en los animales * Insectivorous Plants Abreviatura en botánica Darwin Abreviatura en zoología Darwin * Real Academia de las Ciencias de Suecia * Academia de Ciencias de Hungría * Real Academia de Artes y Ciencias de los Países Bajos * Academia Nacional de los Linces * Academia de Ciencias de Francia * Academia de Ciencias de Rusia * Academia Prusiana de las Ciencias Miembro de * Royal Geographical Society * Academia de Ciencias de Baviera * Sociedad Zoológica de Londres (desde 1839) * Royal Society (desde 1839) * Academia Alemana de las Ciencias Naturales Leopoldina (desde 1857) * Sociedad Filosófica Estadounidense (desde 1869) * Academia de Ciencias de Turín (desde 1873) * Academia Estadounidense de las Artes y las Ciencias (desde 1874) Firma Escudo [editar datos en Wikidata] Charles Robert Darwin (Shrewsbury, 12 de febrero de 1809-Down House, 19 de abril de 1882), comúnmente conocido como Charles Darwin, también llamado Carlos Darwin en parte del ámbito hispano, [ 1 ] ​ [ 2 ] ​ [ 3 ] ​ fue un naturalista inglés, reconocido por ser el científico más influyente (y el primero, compartiendo este logro de forma independiente con Alfred Russel Wallace) de los que plantearon la idea de la evolución biológica a través de la selección natural, justificándola en su obra El origen de las especies (1859) con numerosos ejemplos extraídos de la observación de la naturaleza. [ 90 ] ​ Continuando con sus investigaciones en Londres, a las extensas lecturas de Darwin se añadió la sexta edición de la obra de Thomas Malthus Ensayo sobre el principio de la población: En octubre de 1838, esto es, quince meses después de comenzar mi indagación sistemática, sucedió que leí por diversión el ensayo sobre la población de Malthus, y comencé a estar bien preparado para apreciar la lucha por la existencia que se da en todas partes a partir de observaciones a largo plazo de los hábitos de animales y plantas, y de inmediato me impactó el hecho de que bajo tales circunstancias las variaciones favorables tenderían a ser preservadas, mientras que las desfavorables serían destruidas. Durante este período leyó tres obras que ejercerían una influencia fundamental en la evolución de su pensamiento: otra obra de Paley, Teología Natural, uno de los tratados clásicos en defensa de la adaptación biológica como prueba del diseño divino a través de las leyes naturales; [ 23 ] ​ el recién publicado Un discurso preliminar en el estudio de la filosofía natural, de John Herschel, que describía la última meta de la filosofía natural como la comprensión de estas leyes a través del razonamiento inductivo basado en la observación; y el Viaje a las regiones equinocciales del Nuevo Continente, de Alexander von Humboldt. Esto resalta cuando Darwin habla de la supuesta relación entre las facultades intelectuales y el tamaño del cerebro, y cita una clasificación craneométrica en la que se describe a los europeos con la mayor capacidad intelectual, mientras que describe a los asiáticos y aborígenes australianos con la menor capacidad: La creencia de que existe en el hombre alguna estrecha relación entre el tamaño del cerebro y el desarrollo de las facultades intelectuales se apoya en la comparación de los cráneos de las razas salvajes y las razas civilizadas, de los pueblos antiguos y modernos, y por la analogía de toda la serie de vertebrados. [ 14 ] ​ Índice * 1 Biografía + 1.1 Primeros años y formación + 1.2 Viaje del HMS Beagle + 1.3 Años de la gestación y publicación de El origen de las especies o 1.3.1 Inicios de la teoría o 1.3.2 El proceso de preparación o 1.3.3 Trabajo excesivo, enfermedad y matrimonio o 1.3.4 Publicación + 1.4 Los últimos años de Darwin * 2 Publicaciones de Charles Darwin * 3 Árbol genealógico + 3.1 Padre y abuelos paternos + 3.2 Madre y abuelos maternos + 3.3 Padres y hermanos * 4 Los hijos de Darwin * 5 La teoría de Darwin: comunidad de descendencia y selección natural * 6 Críticas a la teoría de la evolución y controversia * 7 Pensamiento religioso * 8 Interpretaciones no biológicas de la evolución + 8.1 Eugenesia + 8.2 Darwinismo social * 9 Homenajes a Darwin + 9.1 Eponimia * 10 Notas * 11 Referencias * 12 Bibliografía utilizada * 13 Enlaces externos Biografía Primeros años y formación Darwin con siete años en 1816. 1926) Francis Darwin (16 de agosto de 1848-19 de septiembre de 1925) Leonard Darwin (15 de enero de 1850-26 de marzo de 1943) Horace Darwin (13 de mayo de 1851-29 de septiembre de 1928) Charles Waring Darwin (6 de diciembre de 1856-28 de junio de 1858) El matrimonio Darwin tuvo diez hijos.', 'https://es.wikipedia.org/wiki/Charles_Darwin', 1, '2023-04-09 04:47:02', '2023-04-08 23:47:02', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(25) NOT NULL,
  `active` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `active`, `created_at`, `updated_at`) VALUES
(1, 'admin', '123', 1, '2023-04-05 03:52:43', '2023-04-04 22:52:43'),
(2, 'Sam', '123', 1, '2023-04-05 04:28:46', '2023-04-04 23:28:46');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`conversation_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `emotions`
--
ALTER TABLE `emotions`
  ADD PRIMARY KEY (`emotion_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `resumenes`
--
ALTER TABLE `resumenes`
  ADD PRIMARY KEY (`resumen_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `conversations`
--
ALTER TABLE `conversations`
  MODIFY `conversation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT de la tabla `emotions`
--
ALTER TABLE `emotions`
  MODIFY `emotion_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `resumenes`
--
ALTER TABLE `resumenes`
  MODIFY `resumen_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `conversations`
--
ALTER TABLE `conversations`
  ADD CONSTRAINT `conversations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `emotions`
--
ALTER TABLE `emotions`
  ADD CONSTRAINT `emotions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;

--
-- Filtros para la tabla `resumenes`
--
ALTER TABLE `resumenes`
  ADD CONSTRAINT `resumenes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
