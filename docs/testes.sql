use estacionamento;

insert into Automovel (placa, proprietario, tipo, modelo, marca, cor, ano, telefone) values
('ANC-1052', 'Maria Clara Caleffi', 'Moto', 'Harley Fat Boy', 'Harley Davidson', 'Vinho', 2024, '19997542388'),
('DBV-9386', 'Dahra Fagionato', 'Carro', 'HRV', 'Honda', 'azul titânio', 2025, '19996462859'),
('EMG-2002', 'Emily Goulart', 'Carro', 'Hb20', 'Hyundai', 'Prata', 2019, '19995423687'),
('MGD-6845', 'Maria Eduarda Berto', 'Carro', 'Velar', 'Range Rover', 'Branco', 2023, '19994236579'),
('NCS-8764', 'Nicole Santos', 'Carro', 'Nivus', 'Volkswagen', 'Preto', 2022, '194325687412');

select * from automovel;

insert into Estadia (entrada, saida, valorHora, valorTotal, automovelPlaca) values
('2025-03-27 08:00:00', '2025-03-28 12:00:00', 15, 780, 'ANC-1052'),
('2025-03-25 09:00:00', '2025-03-28 13:00:00', 15, 780, 'DBV-9386'),
('2025-03-26 10:00:00', '2025-03-29 13:30:00', 15, null, 'EMG-2002'),
('2025-03-28 11:00:00', '2025-03-29 14:30:00', 15, null, 'MGD-6845'),
('2025-03-27 11:00:00', '2025-03-28 14:30:00', 15, null, 'NCS-8764'),
('2025-03-29 10:00:00', '2025-03-30 15:30:00', 15, null, 'NCS-8764'),
('2025-03-28 10:00:00', '2025-03-30 11:00:00', 15, null, 'ANC-1052');

select * from estadia;


