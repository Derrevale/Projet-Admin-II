INSERT INTO `maildb`.`virtual_domains`
(`id` ,`name`)
VALUES
('1', 'l2-5.ephec-ti.be');

INSERT INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('1', '1', ENCRYPT('pass_Seb', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'sebastien@l2-5.ephec-ti.be', 'l2-5.ephec-ti.be/sebastien/');

INSERT INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('2', '1', ENCRYPT('pass_Val', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'valentin@l2-5.ephec-ti.be', 'l2-5.ephec-ti.be/valentin/');

INSERT INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('3', '1', ENCRYPT('pass_Flo', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'florian@l2-5.ephec-ti.be', 'l2-5.ephec-ti.be/florian/');

INSERT INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('4', '1', ENCRYPT('pass_B2B', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'b2b@l2-5.ephec-ti.be', 'l2-5.ephec-ti.be/b2b/');

INSERT INTO `maildb`.`virtual_users`
(`id`, `domain_id`, `password` , `email`, `maildir`)
VALUES
('5', '1', ENCRYPT('pass_Contact', CONCAT('$6$', SUBSTRING(SHA(RAND()), -16))), 'contact@l2-5.ephec-ti.be', 'l2-5.ephec-ti.be/contact/');

