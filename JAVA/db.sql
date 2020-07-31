-- Host: 127.0.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "-03:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vip`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE DATABASE IF NOT EXISTS vip;
CREATE TABLE IF NOT EXISTS vip.`users` (
  `user_cnpj` VARCHAR(14) NOT NULL,
  `user_name` VARCHAR(50) NOT NULL,
  `user_email` VARCHAR(50) NOT NULL,
  `user_pass` VARCHAR(255) NOT NULL,  
  `user_is_provider` BOOLEAN NOT NULL,  
  `user_active` VARCHAR(255) NOT NULL,  
  `user_authToken` VARCHAR(255) DEFAULT NULL,
  `user_resetToken` VARCHAR(255) DEFAULT NULL,
  `user_resetComplete` VARCHAR(3) DEFAULT 'No',
  `user_joining_date` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`user_cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;


CREATE TABLE IF NOT EXISTS vip.`companies` (
  `company_cnpj` VARCHAR(14) NOT NULL,
  `company_phone` VARCHAR(20) NOT NULL,
  `company_trading` VARCHAR(255) NOT NULL,
  `company_name` VARCHAR(255) NOT NULL,
  `company_address_street` VARCHAR(255) NOT NULL,
  `company_address_number` VARCHAR(255) NOT NULL,
  `company_address_neighborhood` VARCHAR(255) NOT NULL,
  `company_address_city` VARCHAR(255) NOT NULL,
  `company_address_province` VARCHAR(2) NOT NULL,
  `company_address_zip` VARCHAR(20) NOT NULL,
  PRIMARY KEY (`company_cnpj`)
) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

ALTER TABLE `vip`.`users` ADD CONSTRAINT `user_cnpj` FOREIGN KEY (`user_cnpj`)  REFERENCES `vip`.`companies` (`company_cnpj`) ON DELETE RESTRICT ON UPDATE RESTRICT;

CREATE EVENT IF NOT EXISTS vip.`e_daily` ON SCHEDULE EVERY 1 DAY COMMENT 'Delete unconfirmed account' DO DELETE FROM users WHERE joining_date < (NOW() - INTERVAL 30 DAY) AND active != 'Yes';

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
