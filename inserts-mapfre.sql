-- ==========================================
-- TABELAS DE DOMÍNIO
-- ==========================================

-- Status da Operação
INSERT INTO `sellera-data-prod.data_agents.commercial_operation_statuses` (status_id, description) VALUES
(1, 'PENDING_AGENT_1_PROCESSING'),
(2, 'AGENT_1_PROCESSING'),
(3, 'PENDING_AGENT_1_APPROVAL'),
(4, 'AGENT_1_REJECTED'),
(5, 'PENDING_AGENT_2_PROCESSING'),
(6, 'AGENT_2_PROCESSING'),
(7, 'PENDING_AGENT_3_PROCESSING'),
(8, 'AGENT_3_PROCESSING');

-- Resultados da Operação
INSERT INTO `sellera-data-prod.data_agents.commercial_operation_results` (result_id, description) VALUES
(1, 'APROVADO'),
(2, 'RECUSADO');

-- Tipos de Peça Publicitária
INSERT INTO `sellera-data-prod.data_agents.advertising_asset_types` (advertising_asset_type_id, description) VALUES
(1, 'banner'),
(2, 'video'),
(3, 'audio');

-- Atributos
INSERT INTO `sellera-data-prod.data_agents.attributes` 
(attribute_id, description) 
VALUES
(1, 'Desconto'),
(2, 'Frete Grátis'),
(3, 'Brinde'),
(4, 'Parcelamento'),
(5, 'Bônus');

-- Canais de Captação
INSERT INTO `sellera-data-prod.data_agents.acquisition_channels` (acquisition_channel_id, description) VALUES
(1, 'Instagram'),
(2, 'Facebook'),
(3, 'Linkedin'),
(4, 'TikTok');

-- Canais Preferenciais de Compras
INSERT INTO `sellera-data-prod.data_agents.purchase_preference_channels` 
(purchase_preference_channel_id, name) 
VALUES
(1, 'Loja Física'),
(2, 'Marketplace'),
(3, 'E-Commerce'),
(4, 'Afiliado'),
(5, 'Rede Social');

-- Grau de Maturidade da Empresa
INSERT INTO `sellera-data-prod.data_agents.company_maturity_levels` (maturity_level_id, description) VALUES
(1, 'iniciante'),
(2, 'aspirante');

-- Segmentos de Mercado (Business Model)
INSERT INTO `sellera-data-prod.data_agents.business_model` (business_model_id, description) VALUES
(1, 'B2B'),
(2, 'B2C');

-- Faixa de Número de Funcionários
INSERT INTO `sellera-data-prod.data_agents.employee_count_ranges` 
(employee_count_range_id, description) 
VALUES
(1, 'Microempresa (Comércio e Serviços): Até 9 empregados'),
(2, 'Pequena empresa (Comércio e Serviços): De 10 a 49 empregados'),
(3, 'Média empresa (Comércio e Serviços): De 50 a 99 empregados'),
(4, 'Grande empresa (Comércio e Serviços): 100 ou mais empregados'),
(5, 'Microempresa (Indústria): Até 19 empregados'),
(6, 'Pequena empresa (Indústria): De 20 a 99 empregados'),
(7, 'Média empresa (Indústria): De 100 a 499 empregados'),
(8, 'Grande empresa (Indústria): 500 ou mais empregados');

-- Faixa de Faturamento da Empresa
INSERT INTO `sellera-data-prod.data_agents.revenue_ranges` 
(revenue_range_id, description) 
VALUES
(1, 'MEI (Microempreendedor Individual): Até R$ 81.000 / ano'),
(2, 'ME (Microempresa): Até R$ 360.000 / ano'),
(3, 'EPP (Empresa de Pequeno Porte): De R$ 360.000 a R$ 4,8 milhões / ano'),
(4, 'Média Empresa: De R$ 4,8 milhões a R$ 300 milhões / ano'),
(5, 'Grande Empresa: Acima de R$ 300 milhões / ano');

-- Estágio da Empresa
INSERT INTO `sellera-data-prod.data_agents.company_stages` (stage_id, description) VALUES
(1, 'Start Up'),
(2, 'Consolidada');

-- Cidades e Estados
INSERT INTO `sellera-data-prod.data_agents.city_states` (city_state_id, state_code, city_name) VALUES
(1, 'SP', 'São Paulo');

-- Níveis Sociais
INSERT INTO `sellera-data-prod.data_agents.social_levels` (social_level_id, description) VALUES
(1, 'Classe A'),
(2, 'Classe C');

-- Pacotes de Produção Criativa
INSERT INTO `sellera-data-prod.data_agents.creative_packages` (creative_package_id, description, price)
VALUES 
    (1, 'Pacote 1', 10000.00),
    (2, 'Pacote 2', 25000.00),
    (3, 'Pacote 3', 50000.00),
    (4, 'Pacote 4', 100000.00),
    (5, 'Pacote Especial - Editável', NULL);

-- Segmentos de Mercado
INSERT INTO `sellera-data-prod.data_agents.market_segments`
(market_segment_id, description)
VALUES
(1, 'Tecnologia'),
(2, 'Varejo'),
(3, 'Serviços'),
(4, 'Indústria'),
(5, 'Saúde'),
(6, 'Educação'),
(7, 'Alimentos e Bebidas'),
(8, 'Construção');

-- Tipos de Cross-Sell e Up-Sell
INSERT INTO `sellera-data-prod.data_agents.cross_sell_up_sell_types` (cross_sell_up_sell_type_id, description) VALUES
(1, 'Cross-Sell'),
(2, 'Up-Sell');

-- Métodos de Pagamento
INSERT INTO `sellera-data-prod.data_agents.payment_methods` (payment_method_id, method) VALUES
(1, 'Cartão de Crédito'),
(2, 'Boleto Bancário'),
(3, 'PIX'),
(4, 'Débito em Conta');

-- Critérios de Viabilidade
INSERT INTO `sellera-data-prod.data_agents.feasibility_criteria` (feasibility_criteria_id, description) VALUES
(1, 'ROAS Mínimo'),
(2, 'CPL Máximo'),
(3, 'TMC Mínimo'),
(4, 'Volume Mínimo de Investimento');

-- Extensões de Arquivo
INSERT INTO `sellera-data-prod.data_agents.file_extensions` (file_extension_id, extension) VALUES
(1, '.jpg'),
(2, '.png'),
(3, '.mp4'),
(4, '.mov'),
(5, '.pdf'),
(6, '.mp3');

-- Formatos de Mídia
INSERT INTO `sellera-data-prod.data_agents.media_formats` 
(media_format_id, description) 
VALUES
-- Vídeo Digital
(1, 'Bumper 6s'),
(2, 'Pre-roll 15s'),
(3, 'Puláveis 16:9 (Até 6 min)'),
(4, 'Não Puláveis 16:9 (15s a 20s)'),
-- Filmes (TV e Cinema)
(5, 'Vinheta 5s'),
(6, 'Comercial 15s'),
(7, 'Comercial 30s'),
(8, 'Branded Content 60s'),
(9, 'Branded Content 90s'),
(10, 'Branded Content 120s'),
-- OOH
(11, 'Estático pontos de ônibus'),
(12, 'Estático relógios de rua'),
(13, 'Estático (Motion) pontos de ônibus'),
(14, 'Estático (Motion) relógios de rua'),
-- DOOH
(15, 'Vinheta 15s'),
(16, 'Vinheta 30s'),
-- Social Media
(17, 'Vídeo Reels 9:16'),
(18, 'Carrossel'),
(19, 'Post Estático'),
(20, 'Stories Interativos'),
(21, 'Briefing de creators'),
-- Performance
(22, 'Leaderboard Desktop 728 x 90'),
(23, 'Leaderboard Mobile 320 x 50'),
(24, 'Leaderboard Mobile 320 x 100'),
(25, 'Super Leaderboard 970 x 90'),
(26, 'Skyscraper 160 x 600'),
(27, 'Retângulo Médio 300 x 250'),
(28, 'Meia Página 300 x 600'),
(29, 'Quadrado 200 x 200'),
(30, 'Quadrado 250 x 250'),
-- Landing Page
(31, 'Landing Page Primária'),
(32, 'Landing Page Secundária'),
-- Lead Magnet
(33, 'Webinar'),
(34, 'Infográficos'),
(35, 'eBooks'),
(36, 'Tutoriais'),
(37, 'FAQs'),
-- Nutrição
(38, 'Régua e-mails Nutrição (3 a 5 peças)'),
(39, 'Régua SMSs Nutrição (3 a 5 peças)'),
(40, 'Régua Templates WhatsApp Nutrição (3 a 5 peças)'),
-- Resgate/Reaquecimento
(41, 'Régua e-mails Resgate/Reaquecimento (3 a 5 peças)'),
(42, 'Régua SMSs Resgate/Reaquecimento (3 a 5 peças)'),
(43, 'Régua Templates WhatsApp Resgate/Reaquecimento (3 a 5 peças)'),
-- Onboarding e Adoção
(44, 'Régua e-mails Onboarding/Adoção (3 a 5 peças)'),
(45, 'Régua SMSs Onboarding/Adoção (3 a 5 peças)'),
(46, 'Régua Templates WhatsApp Onboarding/Adoção (3 a 5 peças)'),
-- Promoção e Referral
(47, 'Régua e-mails Promoção/Referral (3 a 5 peças)'),
(48, 'Régua SMSs Promoção/Referral (3 a 5 peças)'),
(49, 'Régua Templates WhatsApp Promoção/Referral (3 a 5 peças)');

-- Grupos de Mídia
INSERT INTO `sellera-data-prod.data_agents.media_groups` (media_group_id, description) VALUES
(1, 'Geração de awareness'),
(2, 'Geração de leads'),
(3, 'Nutrição de leads');

INSERT INTO `sellera-data-prod.data_agents.profile_ages` (profile_age_id, description) VALUES
(1, '00-12 anos'),
(2, '13-17 anos'),
(3, '18-24 anos'),
(4, '25-34 anos'),
(5, '35-44 anos'),
(6, '45-54 anos'),
(7, '55-64 anos'),
(8, '65+ anos');

INSERT INTO `sellera-data-prod.data_agents.profile_incomes` (profile_income_id, description) VALUES
(1, 'Até R$ 3.000'),
(2, 'R$ 3.001 a R$ 7.000'),
(3, 'R$ 7.001 a R$ 15.000'),
(4, 'Acima de R$ 15.000');

INSERT INTO `sellera-data-prod.data_agents.aggressiveness_levels` (aggressiveness_level_id, description) 
VALUES 
(1, 'Baixa'), 
(2, 'Média'), 
(3, 'Alta');

-- ==========================================
-- ENTIDADES PRINCIPAIS
-- ==========================================

-- Operação Comercial (ID 1)
INSERT INTO `sellera-data-prod.data_agents.commercial_operations` (commercial_operation_id, status_id, result_id) VALUES
(1, 1, 1);

-- Performance
INSERT INTO `sellera-data-prod.data_agents.commercial_operation_performance` (commercial_operation_id, digital_sales_percentage, historical_conversion_rate, historical_lead_cost, last_twelve_months_investment) VALUES
(1, 35.0, 4.5, 22.80, 2500000.00);

-- Oferta
-- ALTERADO: removidos max_interest_free_installments e max_interest_bearing_installments
INSERT INTO `sellera-data-prod.data_agents.commercial_operation_offer` (commercial_operation_id, name, description, average_ticket, max_discount_percentage, duration_weeks, sales_cycle_weeks, decision_maker_role, business_generation_target, geographic_location) VALUES
(1, 'MAPFRE Auto Mais', 'Seguro automotivo completo com foco em condutores urbanos.', 1500.00, 10.0, 52, 1, 'Proprietário do Veículo / Gestor de Frota', 5000000.00, 'Brasil (Nacional)');

-- Empresa (MAPFRE)
INSERT INTO `sellera-data-prod.data_agents.companies` (commercial_operation_id, city_state_id, stage_id, revenue_range_id, employee_count_range_id, maturity_level_id, market_segment_id, company_name, cnpj, annual_gross_revenue) VALUES
(1, 1, 2, 1, 1, 2, 2, 'MAPFRE Seguros Gerais S.A.', '61.074.175/0001-38', 15000000000.00);

-- Contatos da Empresa
INSERT INTO `sellera-data-prod.data_agents.company_contacts` (contact_id, commercial_operation_id, name, email, phone) VALUES
(1, 1, 'João Silva', 'contato.marketing@mapfre.com.br', '11999999999');

-- Sites de Trade
INSERT INTO `sellera-data-prod.data_agents.company_trade_sites` (trade_site_id, commercial_operation_id, name, url) VALUES
(1, 1, 'Portal Mapfre Brasil', 'https://www.mapfre.com.br');

-- Concorrentes
INSERT INTO `sellera-data-prod.data_agents.company_competitors` (competitor_id, commercial_operation_id, name, url, relevance_score, future_relevance_score) VALUES
(1, 1, 'Porto Seguro', 'https://www.portoseguro.com.br', 9.5, 9.0),
(2, 1, 'Bradesco Seguros', 'https://www.bradescoseguros.com.br', 9.0, 8.5);

-- Produtos da Operação
INSERT INTO `sellera-data-prod.data_agents.commercial_operation_products` (commercial_operation_id, sku, name, is_main_product, average_ticket, main_technical_functional_features, pains_eliminated_with_use, annual_gross_revenue_sku) VALUES
(1, 'SKU-AUTO-001', 'Seguro Auto Premium', true, 1500.00, 'Assistência dia e noite, guincho ilimitado, cobertura de vidros e faróis.', 'Insegurança em sinistros e alto custo de reparo imediato.', 12000000.00);

-- Produtos Cross-Sell
INSERT INTO `sellera-data-prod.data_agents.commercial_operation_cross_sell_products` (commercial_operation_id, sku, name, average_ticket, cross_sell_up_sell_type_id, annual_gross_revenue_sku) VALUES
(1, 'SKU-RESI-002', 'Seguro Residencial Simplificado', 800.00, 1, 3000000.00);

-- ICP (Ideal Customer Profile)
-- ALTERADO: corrigido typo values_and_bilefs → values_and_beliefs
INSERT INTO `sellera-data-prod.data_agents.commercial_operation_ideal_customer_profile` (
  commercial_operation_id, 
  lifestyle_and_hobbies, 
  values_and_beliefs, 
  price_quality_sensitivity, 
  brand_loyalty
) VALUES (
  1,
  'Indivíduos que dependem do veículo para trabalho ou lazer familiar. Valorizam estabilidade e a manutenção da rotina sem interrupções por imprevistos.',
  'Foco em proteção patrimonial e responsabilidade civil (danos a terceiros). Priorizam a tranquilidade e o suporte especializado.',
  'Equilibrada; o cliente entende que o valor do prêmio reflete a agilidade na assistência e a solidez da seguradora em caso de sinistro.',
  'Alta; tende a renovar a apólice anualmente se houver confiança na marca e atendimento eficiente.'
);

-- Relacionamento N:N entre ICP e Níveis Sociais
INSERT INTO `sellera-data-prod.data_agents.ideal_customer_profile_social_levels` (commercial_operation_id, social_level_id) VALUES
(1, 1);

-- Características Psicográficas
INSERT INTO `sellera-data-prod.data_agents.psychographic_characteristics` (commercial_operation_id, lifestyle, values_beliefs, price_sensitivity, brand_affinity) VALUES
(1, 'Urbano e Familiar', 'Segurança em primeiro lugar e valorização do patrimônio', 'Média - valoriza o custo-benefício', 'Alta - busca marcas consolidadas no mercado');

-- Características Transacionais
INSERT INTO `sellera-data-prod.data_agents.transactional_characteristics` (commercial_operation_id, purchase_frequency, average_order_value) VALUES
(1, 'Anual', 1500.00);

-- Formas de Pagamento
-- ALTERADO: estrutura reestruturada com max_installments_without_interest e max_installments_with_interest por método
-- (campos equivalentes aos antigos max_interest_free_installments / max_interest_bearing_installments da oferta)
INSERT INTO `sellera-data-prod.data_agents.commercial_operation_payment_methods` (payment_method_id, commercial_operation_id, percentage, max_installments_without_interest, max_installments_with_interest) VALUES
(1, 1, 70.0, 12, 24),  -- Cartão de Crédito
(2, 1, 30.0, 1, 1);    -- Boleto Bancário

-- Pacotes de Produção Criativa
INSERT INTO `sellera-data-prod.data_agents.commercial_operation_creative_packages` (commercial_operation_id, creative_package_id, creative_package_price)
VALUES 
  (1, 4, 100000.00);

-- Itens de Peça Criativa (NOVO: substitui commercial_operation_medias como entidade principal de criativos)
INSERT INTO `sellera-data-prod.data_agents.creative_package_items` (
    creative_package_item_id, commercial_operation_id, media_format_id, file_extension_id,
    file_url, file_name, client_already_has, should_be_used, is_creative_anchor, file_reference
) VALUES
(1, 1, 8, NULL, NULL, NULL, false, true, true, ''),   -- Branded Content 60s (âncora criativa)
(2, 1, 1, 1, 'https://storage.example.com/mapfre/logo.jpg', 'logo_mapfre.jpg', true, true, false, ''),
(3, 1, 2, 3, 'https://storage.example.com/mapfre/video_campanha.mp4', 'video_campanha_auto.mp4', false, true, false, '');

-- Grupos de Mídia por Item Criativo (NOVO)
INSERT INTO `sellera-data-prod.data_agents.creative_package_item_media_groups` (creative_package_item_id, media_group_id) VALUES
(1, 1), -- Branded Content → Geração de awareness
(2, 1), -- Logo → Geração de awareness
(3, 2); -- Vídeo campanha → Geração de leads

-- Benchmark de Eficiencia Operacional
INSERT INTO `sellera-data-prod.data_agents.operational_efficiency_benchmarks`
  (operational_efficiency_benchmark_id, business_model_id, market_segment_id, roas_benchmark, tmc_benchmark, cpl_benchmark)
VALUES
  (1, 1, 1, 6.0, 4.5, 150.00),
  (2, 2, 1, 4.0, 3.0, 25.00),
  (3, 2, 2, 5.0, 3.5, 100.00);

-- Critérios de Viabilidade Calculados
INSERT INTO `sellera-data-prod.data_agents.calculated_feasibility_criteria` (calculated_feasibility_criteria_id, commercial_operation_id, feasibility_criteria_id, calculated_value) VALUES
(1, 1, 1, 5.0),      -- ROAS Mínimo
(2, 1, 2, 100.0),    -- CPL Máximo
(3, 1, 3, 3.5),      -- TMC Mínimo
(4, 1, 4, 50000.00); -- Volume Mínimo de Investimento

-- Mídias da Operação Comercial (mantida para compatibilidade)
INSERT INTO `sellera-data-prod.data_agents.commercial_operation_medias` (commercial_operation_media_id, commercial_operation_id, media_format_id, file_extension_id, file_url, file_name) VALUES
(1, 1, 1, 1, 'https://storage.example.com/mapfre/logo.jpg', 'logo_mapfre.jpg'),
(2, 1, 2, 3, 'https://storage.example.com/mapfre/video_campanha.mp4', 'video_campanha_auto.mp4');

INSERT INTO `sellera-data-prod.data_agents.seller_personas` 
(seller_persona_id, name, resolution_approach, education_level, etiquette, aggressiveness_level_id, temperament_level, speech_manner, patience_level)
VALUES 
(1, 'Consultor', 'Focado em resolver o problema do cliente com dados e lógica.', 'Alta (Pós-graduação/Especialista)', 'Impecável e profissional.', 1, 'Muito Calmo', 'Sério e Técnico', 'Alta (Sabe ouvir)'),
(2, 'Desafiador', 'Provoca o cliente a pensar fora da caixa e mudar visões.', 'Alta (Visão de Negócios)', 'Assertiva e firme.', 3, 'Controlada', 'Firme e Provocativo', 'Média'),
(3, 'O Lobo', 'Focado no fechamento rápido e em bater metas.', 'Variável (Foco em cursos práticos)', 'Direta, às vezes invasiva.', 5, 'Alta (Agitado)', 'Dominante e Energético', 'Baixa (Quer o "sim" logo)'),
(4, 'Relacional', 'Constrói amizade antes de vender o produto.', 'Média a Alta (Humanas)', 'Cordial e calorosa.', 3, 'Calmo e Acolhedor', 'Descontraído e Amigável', 'Altíssima'),
(5, 'Tirador de Pedido', 'Reativo, espera o cliente decidir sem pressionar.', 'Média (Ensino Médio/Técnico)', 'Padrão e básica.', 3, 'Estável / Passivo', 'Neutro e Sério', 'Média');

-- ==========================================
-- RELACIONAMENTOS 
-- ==========================================

-- Focos da Oferta (Segmentos)
INSERT INTO `sellera-data-prod.data_agents.commercial_operation_business_models` (commercial_operation_id, business_model_id) VALUES
(1, 2); -- B2C

-- Canais da Oferta
INSERT INTO `sellera-data-prod.data_agents.commercial_operation_acquisition_channels` (commercial_operation_id, acquisition_channel_id, priority_order) VALUES
(1, 3, 1), -- Linkedin (prioridade 1)
(1, 4, 2); -- TikTok (prioridade 2)

-- Palavras-Chave
INSERT INTO `sellera-data-prod.data_agents.commercial_operation_keywords` (commercial_operation_id, keyword) VALUES
(1, 'seguro de carro'),
(1, 'assistência 24h'),
(1, 'proteção veicular');

-- Atributos da Oferta
INSERT INTO `sellera-data-prod.data_agents.commercial_operation_attributes` (commercial_operation_id, attribute_id) VALUES
(1, 1), -- desconto
(1, 2); -- parcelado

-- Canais de Transação
INSERT INTO `sellera-data-prod.data_agents.transaction_channels` (commercial_operation_id, purchase_preference_channel_id, percentage) VALUES
(1, 1, 100.0); -- loja online (100%)

-- Tipos de Peça por Operação
INSERT INTO `sellera-data-prod.data_agents.commercial_operations_advertising_asset_types` (advertising_asset_type_id, commercial_operation_id) VALUES
(2, 1); -- video

-- Grupos de Mídia da Operação
INSERT INTO `sellera-data-prod.data_agents.commercial_operation_media_groups` (commercial_operation_id, media_group_id) VALUES
(1, 1), -- Geração de awareness
(1, 3); -- Nutrição de leads

-- Modelos de Negócio
INSERT INTO `sellera-data-prod.data_agents.company_business_models` (commercial_operation_id, business_model_id) VALUES
(1, 2); -- B2C

INSERT INTO `sellera-data-prod.data_agents.ideal_customer_profile_ages` (profile_age_id, commercial_operation_id) VALUES
(3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1);

INSERT INTO `sellera-data-prod.data_agents.ideal_customer_profile_incomes` (profile_income_id, commercial_operation_id) VALUES
(2, 1), (3, 1), (4, 1);

-- ==========================================
-- AGENTES
-- ==========================================

-- Performance de Canais de Campanha 
INSERT INTO `sellera-data-prod.data_agents.campaign_channel_performances` (
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

-- ==========================================
-- GLOBAIS
-- ==========================================

-- Parâmetros Globais
INSERT INTO `sellera-data-prod.data_agents.global_parameters` (
    global_parameter_id, 
    lead_processing_cost, 
    min_creative_production_value, 
    minimum_attractiveness_rate
)
VALUES (1, 20, 500, 10);

-- Canais Comunicação Notáveis
INSERT INTO `sellera-data-prod.data_agents.notable_communication_vehicles` (
    notable_communication_vehicle_id, 
    name, 
    url
)
VALUES
    (6, 'IstoÉ', 'istoe.com.br'),
    (4, 'Folha de S.Paulo', 'folha.uol.com.br'),
    (1, 'Valor Econômico', 'valor.globo.com'),
    (3, 'Brazil Journal', 'braziljournal.com'),
    (7, 'Yahoo Finance', 'finance.yahoo.com'),
    (5, 'Exame', 'exame.com'),
    (8, 'InfoMoney', 'infomoney.com.br'),
    (2, 'NeoFeed', 'neofeed.com.br');