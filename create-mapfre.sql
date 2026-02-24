-- ==========================================
-- TABELAS DE DOMÍNIO
-- ==========================================

-- Status da Operação
CREATE TABLE `sellera-data-prod.data_agents.commercial_operation_statuses` (
    status_id INT64,
    description STRING
);

-- Resultados da Operação
CREATE TABLE `sellera-data-prod.data_agents.commercial_operation_results` (
    result_id INT64,
    description STRING
);

-- Tipos de Peça Publicitária
CREATE TABLE `sellera-data-prod.data_agents.advertising_asset_types` (
    advertising_asset_type_id INT64,
    description STRING
);

-- Atributos
CREATE TABLE `sellera-data-prod.data_agents.attributes` (
    attribute_id INT64,
    description STRING
);

-- Canais de Captação
CREATE TABLE `sellera-data-prod.data_agents.acquisition_channels` (
    acquisition_channel_id INT64,
    description STRING
);

-- Canais Preferenciais de Compras
CREATE TABLE `sellera-data-prod.data_agents.purchase_preference_channels` (
    purchase_preference_channel_id INT64,
    name STRING
);

-- Grau de Maturidade da Empresa
CREATE TABLE `sellera-data-prod.data_agents.company_maturity_levels` (
    maturity_level_id INT64,
    description STRING
);

-- Segmentos de Mercado (ALTERADO: agora se relaciona com companies)
CREATE TABLE `sellera-data-prod.data_agents.business_model` (
    business_model_id INT64,
    description STRING
);

-- Faixa de Número de Funcionários
CREATE TABLE `sellera-data-prod.data_agents.employee_count_ranges` (
    employee_count_range_id INT64,
    description STRING
);

-- Faixa de Faturamento da Empresa
CREATE TABLE `sellera-data-prod.data_agents.revenue_ranges` (
    revenue_range_id INT64,
    description STRING
);

-- Estágio da Empresa
CREATE TABLE `sellera-data-prod.data_agents.company_stages` (
    stage_id INT64,
    description STRING
);

-- Cidades e Estados
CREATE TABLE `sellera-data-prod.data_agents.city_states` (
    city_state_id INT64,
    state_code STRING,
    city_name STRING
);

-- Niveis Sociais
CREATE TABLE `sellera-data-prod.data_agents.social_levels` (
    social_level_id INT64,
    description STRING
);

-- Pacotes de Produção Criativa
CREATE TABLE `sellera-data-prod.data_agents.creative_packages` (
    creative_package_id INT64,
    description STRING,
    price NUMERIC
);

-- Segmentos de Mercado
CREATE TABLE `sellera-data-prod.data_agents.market_segments` (
    market_segment_id INT64,
    description STRING
);

-- Tipos de Cross-Sell e Up-Sell
CREATE TABLE `sellera-data-prod.data_agents.cross_sell_up_sell_types` (
    cross_sell_up_sell_type_id INT64,
    description STRING
);

-- Métodos de Pagamento
CREATE TABLE `sellera-data-prod.data_agents.payment_methods` (
    payment_method_id INT64,
    method STRING
);

-- Critérios de Viabilidade
CREATE TABLE `sellera-data-prod.data_agents.feasibility_criteria` (
    feasibility_criteria_id INT64,
    description STRING
);

-- Extensões de Arquivo
CREATE TABLE `sellera-data-prod.data_agents.file_extensions` (
    file_extension_id INT64,
    extension STRING
);

-- Formatos de Mídia
CREATE TABLE `sellera-data-prod.data_agents.media_formats` (
    media_format_id INT64,
    description STRING
);

-- Grupos de Mídia
CREATE TABLE `sellera-data-prod.data_agents.media_groups` (
    media_group_id INT64,
    description STRING
);

-- Criação da tabela de níveis de agressividade
CREATE TABLE `sellera-data-prod.data_agents.aggressiveness_levels` (
    aggressiveness_level_id INT64,
    description STRING NOT NULL
);

CREATE TABLE `sellera-data-prod.data_agents.profile_incomes` (
  profile_income_id INT64,
  description STRING
);

CREATE TABLE `sellera-data-prod.data_agents.profile_ages` (
  profile_age_id INT64,
  description STRING
);

-- ==========================================
-- ENTIDADES PRINCIPAIS
-- ==========================================

-- Operações Comerciais (entidade central)
CREATE TABLE `sellera-data-prod.data_agents.commercial_operations` (
    commercial_operation_id INT64,
    status_id INT64,
    result_id INT64,
    seller_persona_id INT64
);

-- Dados Gerais da Operação Comercial
CREATE TABLE `sellera-data-prod.data_agents.commercial_operation_data` (
    commercial_operation_id INT64,
    average_ticket NUMERIC,
    main_technical_functional_features STRING,
    pains_eliminated_with_use STRING,
    annual_gross_revenue_sku NUMERIC
);

-- Performance da Operação Comercial (ALTERADO: adicionado last_twelve_months_investment)
CREATE TABLE `sellera-data-prod.data_agents.commercial_operation_performance` (
    commercial_operation_id INT64,
    digital_sales_percentage NUMERIC,
    historical_conversion_rate NUMERIC,
    historical_lead_cost NUMERIC,
    last_twelve_months_investment NUMERIC
);

-- Oferta da Operação Comercial (ALTERADO: novos campos adicionados)
CREATE TABLE `sellera-data-prod.data_agents.commercial_operation_offer` (
    commercial_operation_id INT64,
    name STRING,
    description STRING,
    average_ticket NUMERIC,
    max_discount_percentage NUMERIC,
    duration_weeks INT64,
    sales_cycle_weeks INT64,
    decision_maker_role STRING,
    business_generation_target NUMERIC,
    geographic_location STRING,
    max_interest_free_installments INT64,
    max_interest_bearing_installments INT64
);

-- Empresas (ALTERADO: campo sector substituído por market_segment_id)
CREATE TABLE `sellera-data-prod.data_agents.companies` (
    commercial_operation_id INT64,
    city_state_id INT64,
    stage_id INT64,
    revenue_range_id INT64,
    employee_count_range_id INT64,
    maturity_level_id INT64,
    market_segment_id INT64,
    company_name STRING,
    cnpj STRING,
    annual_gross_revenue NUMERIC
);

-- Contatos da Empresa
CREATE TABLE `sellera-data-prod.data_agents.company_contacts` (
    contact_id INT64,
    commercial_operation_id INT64,
    name STRING,
    email STRING,
    phone STRING
);

-- Sites de Trade da Empresa
CREATE TABLE `sellera-data-prod.data_agents.company_trade_sites` (
    trade_site_id INT64,
    commercial_operation_id INT64,
    name STRING,
    url STRING
);

-- Concorrentes da Empresa (ALTERADO: adicionados campos de relevância)
CREATE TABLE `sellera-data-prod.data_agents.company_competitors` (
    competitor_id INT64,
    commercial_operation_id INT64,
    name STRING,
    url STRING,
    relevance_score NUMERIC,
    future_relevance_score NUMERIC
);

-- Produtos da Operação (ALTERADO: relacionamento 1:1, novos campos adicionados)
CREATE TABLE `sellera-data-prod.data_agents.commercial_operation_products` (
    commercial_operation_id INT64,
    sku STRING,
    name STRING,
    is_main_product BOOL,
    average_ticket NUMERIC,
    main_technical_functional_features STRING,
    pains_eliminated_with_use STRING,
    annual_gross_revenue_sku NUMERIC
);

-- Produtos de Cross-Sell (ALTERADO: novos campos adicionados)
CREATE TABLE `sellera-data-prod.data_agents.commercial_operation_cross_sell_products` (
    commercial_operation_id INT64,
    sku STRING,
    name STRING,
    average_ticket NUMERIC,
    cross_sell_up_sell_type_id INT64,
    annual_gross_revenue_sku NUMERIC
);

-- Ideal Customer Profiles (ICP)
CREATE TABLE `sellera-data-prod.data_agents.commercial_operation_ideal_customer_profile` (
  commercial_operation_id INT64,
  lifestyle_and_hobbies STRING,
  values_and_bilefs STRING,
  price_quality_sensitivity STRING,
  brand_loyalty STRING,
);

-- Relacionamento N:N entre ICP e Níveis Sociais
CREATE TABLE `sellera-data-prod.data_agents.ideal_customer_profile_social_levels` (
    commercial_operation_id INT64,
    social_level_id INT64
);

-- Características Psicográficas
CREATE TABLE `sellera-data-prod.data_agents.psychographic_characteristics` (
    commercial_operation_id INT64,
    lifestyle STRING,
    values_beliefs STRING,
    price_sensitivity STRING,
    brand_affinity STRING
);

-- Características Transacionais
CREATE TABLE `sellera-data-prod.data_agents.transactional_characteristics` (
    commercial_operation_id INT64,
    purchase_frequency STRING,
    average_order_value NUMERIC
);

-- Formas de Pagamento (ALTERADO: agora relaciona com payment_methods)
CREATE TABLE `sellera-data-prod.data_agents.commercial_operation_payment_methods` (
    payment_method_id INT64,
    commercial_operation_id INT64,
    percentage NUMERIC
);

-- Pacotes de Produção Criativa
CREATE TABLE `sellera-data-prod.data_agents.commercial_operation_creative_packages` (
    commercial_operation_id INT64,
    creative_package_id INT64,
    creative_package_price NUMERIC
);

-- Benchmark de Eficiencia Operacional
CREATE TABLE `sellera-data-prod.data_agents.operational_efficiency_benchmarks` (
    operational_efficiency_benchmark_id INT64,
    business_model_id INT64,
    market_segment_id INT64,
    roas_benchmark NUMERIC,
    tmc_benchmark NUMERIC,
    cpl_benchmark NUMERIC
);

-- Critérios de Viabilidade Calculados
CREATE TABLE `sellera-data-prod.data_agents.calculated_feasibility_criteria` (
    calculated_feasibility_criteria_id INT64,
    commercial_operation_id INT64,
    feasibility_criteria_id INT64,
    calculated_value NUMERIC
);

-- Mídias da Operação Comercial
CREATE TABLE `sellera-data-prod.data_agents.commercial_operation_medias` (
    commercial_operation_media_id INT64,
    commercial_operation_id INT64,
    media_format_id INT64,
    file_extension_id INT64,
    file_url STRING,
    file_name STRING
);

-- Criação da tabela de personas de vendedor
CREATE TABLE `sellera-data-prod.data_agents.seller_personas` (
    seller_persona_id INT64,
    name STRING,
    resolution_approach STRING,
    education_level STRING,
    etiquette STRING,
    aggressiveness_level_id INT64,
    temperament_level STRING,
    speech_manner STRING,
    patience_level STRING
);

-- ==========================================
-- RELACIONAMENTOS 
-- ==========================================

-- Focos da Oferta (Segmentos) - RENOMEADA
CREATE TABLE `sellera-data-prod.data_agents.commercial_operation_business_models` (
    commercial_operation_id INT64,
    business_model_id INT64
);

-- Canais da Oferta (ALTERADO: adicionado priority_order)
CREATE TABLE `sellera-data-prod.data_agents.commercial_operation_acquisition_channels` (
    commercial_operation_id INT64,
    acquisition_channel_id INT64,
    priority_order INT64
);

-- Palavras-Chave da Oferta
CREATE TABLE `sellera-data-prod.data_agents.commercial_operation_keywords` (
    commercial_operation_id INT64,
    keyword STRING
);

-- Atributos da Oferta
CREATE TABLE `sellera-data-prod.data_agents.commercial_operation_attributes` (
    commercial_operation_id INT64,
    attribute_id INT64
);

-- Canais de Transação (ALTERADO: adicionado percentage)
CREATE TABLE `sellera-data-prod.data_agents.transaction_channels` (
    commercial_operation_id INT64,
    purchase_preference_channel_id INT64,
    percentage NUMERIC
);

-- Tipos de Peça Publicitária por Operação
CREATE TABLE `sellera-data-prod.data_agents.commercial_operations_advertising_asset_types` (
    advertising_asset_type_id INT64,
    commercial_operation_id INT64
);

-- Grupos de Mídia da Operação
CREATE TABLE `sellera-data-prod.data_agents.commercial_operation_media_groups` (
    commercial_operation_id INT64,
    media_group_id INT64
);

-- Modelos de Negócio da Empresa
CREATE TABLE `sellera-data-prod.data_agents.company_business_models` (
    commercial_operation_id INT64,
    business_model_id INT64
);

CREATE TABLE `sellera-data-prod.data_agents.ideal_customer_profile_incomes` (
  profile_income_id INT64,
  commercial_operation_id INT64
);

CREATE TABLE `sellera-data-prod.data_agents.ideal_customer_profile_ages` (
  profile_age_id INT64,
  commercial_operation_id INT64
);

-- ==========================================
-- AGENTES
-- ==========================================

-- Saída dos Agentes
CREATE TABLE `sellera-data-prod.data_agents.agent_outputs` (
    commercial_operation_id INT64,
    agent_name STRING,
    output_key STRING,
    output_string STRING,
    output_numeric NUMERIC,
    output_boolean BOOL,
    created_at TIMESTAMP
);

-- Performance de Canais de Campanha
CREATE TABLE `sellera-data-prod.data_agents.campaign_channel_performances` (
    commercial_operation_id INT64,
    channel STRING,
    investment_amount NUMERIC,
    attributed_revenue NUMERIC,
    roas NUMERIC,
    leads_generated INT64,
    tmc_rate NUMERIC,
    leads_converted INT64,
    cpl NUMERIC
);

-- ==========================================
-- GLOBAIS
-- ==========================================

CREATE TABLE `sellera-data-prod.data_agents.notable_communication_vehicles` (
    notable_communication_vehicle_id INT64,
    name STRING,
    url STRING
);

CREATE TABLE `sellera-data-prod.data_agents.global_parameters` (
    global_parameter_id INT64,
    lead_processing_cost NUMERIC,
    min_creative_production_value NUMERIC,
    minimum_attractiveness_rate NUMERIC
);
