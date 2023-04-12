use railwayDB;

insert into train values
(1, 'konda express', 200, 3, 3),
(2, 'malabar express', 400, 5, 4),
(3, 'bullet train', 500, 4, 4);

insert into station values
(1, 'secunderabad station', 'secunderabad', 12),
(2, 'nampally station', 'nampally', 4),
(3, 'lingampally station', 'lingampally', 2);

insert into schedule values
(1, 1, 2, 2, '12/04/2023 10:00'),
(2, 2, 3, 1, '10/04/2023 14:00'),
(3, 1, 3, 3, '20/04/2023 16:00');

insert into passenger values
(1, 'prudhvi', 23, 8938493),
(2, 'naresh', 25, 8938493),
(3, 'mallesh', 40, 9892842);

insert into ticket values
(1, 2, 'D67', 2),
(2, 1, 'F101', 1),
(3, 3, 'A23', 3);