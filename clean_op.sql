-- Empresa
DELETE FROM `sellera-data-prod.data_agents_dev.company_contacts`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.company_competitors`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.company_business_models`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.company_trade_sites`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.company_market_segments`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.company_revenue_ranges`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.company_employee_count_ranges`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.company_stages`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.company_maturity_levels`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.company_city_states`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.companies`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.commercial_operation_efficiency_benchmarks`
WHERE commercial_operation_id = {op_id};

-- Produtos
DELETE FROM `sellera-data-prod.data_agents_dev.commercial_operation_strategy_products`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.commercial_operation_products`
WHERE commercial_operation_id = {op_id};

-- Oferta
DELETE FROM `sellera-data-prod.data_agents_dev.commercial_operation_acquisition_channels`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.commercial_operation_payment_methods`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.commercial_operation_attributes`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.commercial_operation_business_models`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.commercial_operation_keywords`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.commercial_operation_offer`
WHERE commercial_operation_id = {op_id};

-- Performance e Características
DELETE FROM `sellera-data-prod.data_agents_dev.commercial_operation_performance`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.transactional_characteristics`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.transaction_channels`
WHERE commercial_operation_id = {op_id};

-- ICP
DELETE FROM `sellera-data-prod.data_agents_dev.ideal_customer_profile_ages`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.ideal_customer_profile_incomes`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.ideal_customer_profile_social_levels`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.commercial_operation_ideal_customer_profile`
WHERE commercial_operation_id = {op_id};

-- Seller Persona
DELETE FROM `sellera-data-prod.data_agents_dev.seller_personas`
WHERE commercial_operation_id = {op_id};

-- Criativo
DELETE FROM `sellera-data-prod.data_agents_dev.commercial_operation_creative_packages`
WHERE commercial_operation_id = {op_id};

DELETE FROM `sellera-data-prod.data_agents_dev.creative_package_items`
WHERE commercial_operation_id = {op_id};

-- Tabela raiz
DELETE FROM `sellera-data-prod.data_agents_dev.commercial_operations`
WHERE commercial_operation_id = {op_id};

--Agent
DELETE FROM `sellera-data-prod.data_agents_dev.agent_outputs`
WHERE commercial_operation_id = {op_id};

--Temporário
DELETE FROM `sellera-data-prod.data_agents_dev.commercial_operation_json_briefing_received`
WHERE commercial_operation_id = {op_id};