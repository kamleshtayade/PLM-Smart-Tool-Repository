CREATE TABLE IF NOT EXISTS status_type (
  id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(80),
  INDEX(name)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS users_role (
  id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(80),
  INDEX(name)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS users  (
  id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  email  VARCHAR(80),
  role_id INT (4) UNSIGNED NOT NULL,
  status_id INT (4) UNSIGNED NOT NULL,
  INDEX(last_name),
  FOREIGN KEY (status_id) REFERENCES status_type(id),
  FOREIGN KEY (role_id) REFERENCES users_role(id)
) engine=InnoDB;

CREATE TABLE IF NOT EXISTS PLM_smart_summary  (
  id INT(4) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  notified_records INT(5),
  processed_records INT(5),
  failed_records INT(5),
  creation_date DATE,
  created_by VARCHAR(30),
  last_update_date DATE,
  last_updated_by VARCHAR(25)
) engine=InnoDB;