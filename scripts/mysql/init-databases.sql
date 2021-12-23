CREATE DATABASE IF NOT EXISTS `sfg_dev`;
CREATE DATABASE IF NOT EXISTS `sfg_prod`;
-- create database service accounts
CREATE USER 'sfg_dev_user' @'localhost' IDENTIFIED BY 'guru';
CREATE USER 'sfg_prod_user' @'localhost' IDENTIFIED BY 'guru';
CREATE USER 'sfg_dev_user' @'%' IDENTIFIED BY 'guru';
CREATE USER 'sfg_prod_user' @'%' IDENTIFIED BY 'guru';
-- Database grants for sfg_dev database
GRANT SELECT ON `sfg_dev.*` TO 'sfg_dev_user' @'localhost';
GRANT INSERT ON `sfg_dev.*` TO 'sfg_dev_user' @'localhost';
GRANT UPDATE ON `sfg_dev.*` TO 'sfg_dev_user' @'localhost';
GRANT DELETE ON `sfg_dev.*` TO 'sfg_dev_user' @'localhost';
-- Database grants for sfg_prod database
GRANT SELECT ON `sfg_prod.*` TO 'sfg_prod_user' @'localhost';
GRANT INSERT ON `sfg_prod.*` TO 'sfg_prod_user' @'localhost';
GRANT UPDATE ON `sfg_prod.*` TO 'sfg_prod_user' @'localhost';
GRANT DELETE ON `sfg_prod.*` TO 'sfg_prod_user' @'localhost';
-- for mysql running in docker
-- Database grants for sfg_dev database
GRANT SELECT ON `sfg_dev.*` TO 'sfg_dev_user' @'%';
GRANT INSERT ON `sfg_dev.*` TO 'sfg_dev_user' @'%';
GRANT UPDATE ON `sfg_dev.*` TO 'sfg_dev_user' @'%';
GRANT DELETE ON `sfg_dev.*` TO 'sfg_dev_user' @'%';
-- Database grants for sfg_prod database
GRANT SELECT ON `sfg_prod.*` TO 'sfg_prod_user' @'%';
GRANT INSERT ON `sfg_prod.*` TO 'sfg_prod_user' @'%';
GRANT UPDATE ON `sfg_prod.*` TO 'sfg_prod_user' @'%';
GRANT DELETE ON `sfg_prod.*` TO 'sfg_prod_user' @'%';