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

INSERT INTO `sellera-data-prod.data_agents_dev.campaign_channel_performances` (
    commercial_operation_id, channel, investment_amount, attributed_revenue, 
    roas, leads_generated, tmc_rate, leads_converted, cpl
)
VALUES
    (1, 'Facebook', 22083, 505449, 22.89, 1208, 0.05, 60, 18.28),
    (1, 'Google', 57825, 89387, 1.55, 327, 0.03, 10, 176.87),
    (2, 'Google', 103478, 235061, 2.27, 2223, 0.05, 111, 46.54),
    (2, 'Insta', 118571, 20153, 0.17, 1038, 0.04, 42, 114.28),
    (1, 'Insta', 54310, 341011, 6.28, 2803, 0.02, 56, 19.38),
    (2, 'Insta', 117322, 340097, 2.9, 4643, 0.01, 46, 25.27),
    (2, 'Insta', 140832, 474990, 3.37, 5085, 0.01, 51, 27.7),
    (2, 'Linkedin', 6091, 506514, 83.16, 1106, 0.04, 44, 5.51),
    (1, 'Linkedin', 115835, 27650, 0.24, 2466, 0.08, 197, 46.98),
    (1, 'Linkedin', 58862, 368139, 6.25, 2107, 0.01, 21, 27.93),
    (1, 'Linkedin', 120400, 331921, 2.76, 579, 0.03, 17, 207.96),
    (2, 'Spotify', 130160, 505479, 3.88, 1782, 0.03, 53, 73.04),
    (2, 'Tik Tok', 133694, 371139, 2.78, 2543, 0.07, 178, 52.57);

INSERT INTO `sellera-data-prod.data_agents_dev.commercial_operation_creative_packages` (commercial_operation_id, price) VALUES (1001, 100000);
INSERT INTO `sellera-data-prod.data_agents_dev.commercial_operation_creative_packages` (commercial_operation_id, price) VALUES (1002, 100000);

INSERT INTO `sellera-data-prod.data_agents_dev.commercial_operation_efficiency_benchmarks` (commercial_operation_id, roas_benchmark, cvr_benchmark, cpl_benchmark) VALUES (1001, 2.4, 12.0, 45.0);
INSERT INTO `sellera-data-prod.data_agents_dev.commercial_operation_efficiency_benchmarks` (commercial_operation_id, roas_benchmark, cvr_benchmark, cpl_benchmark) VALUES (1002, 2.4, 12.0, 45.0);