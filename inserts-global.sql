INSERT INTO `sellera-data-prod.data_agents_dev.commercial_operation_statuses` (status_id, description)
VALUES
  (1, 'PENDING_AGENT_1_PROCESSING'),
  (2, 'AGENT_1_PROCESSING'),
  (3, 'PENDING_AGENT_1_APPROVAL'),
  (4, 'AGENT_1_REJECTED'),
  (5, 'PENDING_AGENT_2_PROCESSING'),
  (6, 'AGENT_2_PROCESSING'),
  (7, 'PENDING_AGENT_3_PROCESSING'),
  (8, 'AGENT_3_PROCESSING');

INSERT INTO `sellera-data-prod.data_agents_dev.global_parameters` (global_parameter_id, lead_processing_cost, min_creative_production_value, minimum_attractiveness_rate)
VALUES
  (1, 20, 500, 10);

INSERT INTO `sellera-data-prod.data_agents_dev.notable_communication_vehicles` (notable_communication_vehicle_id, name, url)
VALUES
  (1, 'Valor Econômico', 'valor.globo.com'),
  (2, 'NeoFeed',         'neofeed.com.br'),
  (3, 'Brazil Journal',  'braziljournal.com'),
  (4, 'Folha de S.Paulo','folha.uol.com.br'),
  (5, 'Exame',           'exame.com'),
  (6, 'IstoÉ',           'istoe.com.br'),
  (7, 'Yahoo Finance',   'finance.yahoo.com'),
  (8, 'InfoMoney',       'infomoney.com.br');