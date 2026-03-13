CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.commercial_operations` (
  commercial_operation_id INT64,
  name                    STRING,
  status_id               INT64
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.commercial_operation_keywords` (
  commercial_operation_id INT64,
  keyword                 STRING
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.commercial_operation_offer` (
  commercial_operation_id    INT64,
  name                       STRING,
  description                STRING,
  average_ticket             NUMERIC,
  max_discount_percentage    NUMERIC,
  duration_weeks             INT64,
  sales_cycle_weeks          INT64,
  decision_maker_role        STRING,
  business_generation_target NUMERIC,
  geographic_locations       ARRAY<STRUCT<description STRING>>
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.commercial_operation_performance` (
  commercial_operation_id       INT64,
  digital_sales_percentage      NUMERIC,
  historical_conversion_rate    NUMERIC,
  historical_lead_cost          NUMERIC,
  last_twelve_months_investment NUMERIC
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.commercial_operation_products` (
  commercial_operation_id            INT64,
  sku                                STRING,
  name                               STRING,
  is_main_product                    BOOL,
  average_ticket                     NUMERIC,
  main_technical_functional_features STRING,
  pains_eliminated_with_use          STRING,
  annual_gross_revenue_sku           NUMERIC
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.commercial_operation_statuses` (
  status_id   INT64,
  description STRING
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.agent_outputs` (
  commercial_operation_id INT64,
  agent_name              STRING,
  output_key              STRING,
  output_string           STRING,
  output_numeric          NUMERIC,
  output_boolean          BOOL,
  created_at              TIMESTAMP
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.global_parameters` (
  global_parameter_id           INT64,
  lead_processing_cost          NUMERIC,
  min_creative_production_value NUMERIC,
  minimum_attractiveness_rate   NUMERIC
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.notable_communication_vehicles` (
  notable_communication_vehicle_id INT64,
  name                             STRING,
  url                              STRING
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.transactional_characteristics` (
  commercial_operation_id INT64,
  purchase_frequency      STRING,
  average_order_value     NUMERIC
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.companies` (
  commercial_operation_id INT64,
  company_name            STRING,
  cnpj                    STRING,
  annual_gross_revenue    NUMERIC
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.company_market_segments` (
  commercial_operation_id INT64,
  description             STRING
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.company_revenue_ranges` (
  commercial_operation_id INT64,
  description             STRING
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.company_employee_count_ranges` (
  commercial_operation_id INT64,
  description             STRING
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.company_stages` (
  commercial_operation_id INT64,
  description             STRING
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.company_maturity_levels` (
  commercial_operation_id INT64,
  description             STRING
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.company_city_states` (
  commercial_operation_id INT64,
  description             STRING
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.company_competitors` (
  commercial_operation_id INT64,
  name                    STRING,
  url                     STRING,
  relevance_score         NUMERIC,
  future_relevance_score  NUMERIC
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.company_contacts` (
  commercial_operation_id INT64,
  name                    STRING,
  email                   STRING,
  phone                   STRING
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.company_trade_sites` (
  commercial_operation_id INT64,
  name                    STRING,
  url                     STRING
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.commercial_operation_acquisition_channels` (
  commercial_operation_id INT64,
  description             STRING,
  priority_order          INT64
);

-- CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.commercial_operations_advertising_asset_types` (
--   commercial_operation_id INT64,
--   description             STRING
-- );

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.commercial_operation_attributes` (
  commercial_operation_id INT64,
  description             STRING
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.transaction_channels` (
  commercial_operation_id INT64,
  description             STRING,
  percentage              NUMERIC
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.company_business_models` (
  commercial_operation_id INT64,
  description             STRING
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.commercial_operation_business_models` (
  commercial_operation_id INT64,
  description             STRING
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.commercial_operation_strategy_products` (
  commercial_operation_id  INT64,
  sku                      STRING,
  name                     STRING,
  average_ticket           FLOAT64,
  strategy_product_type    STRING,
  annual_gross_revenue_sku FLOAT64,
  core_product_fit_score   INT64
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.commercial_operation_payment_methods` (
  commercial_operation_id           INT64,
  method                            STRING,
  percentage                        NUMERIC,
  max_installments_without_interest INT64,
  max_installments_with_interest    INT64
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.seller_personas` (
  commercial_operation_id INT64,
  name                    STRING,
  resolution_approach     STRING,
  education_level         STRING,
  etiquette               STRING,
  aggressiveness_level    STRING,
  temperament_level       STRING,
  speech_manner           STRING,
  patience_level          STRING
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.ideal_customer_profile_incomes` (
  commercial_operation_id INT64,
  description             STRING
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.ideal_customer_profile_ages` (
  commercial_operation_id INT64,
  description             STRING
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.ideal_customer_profile_social_levels` (
  commercial_operation_id INT64,
  description             STRING,
  percentage              NUMERIC
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.ideal_customer_profile_payment_methods` (
  commercial_operation_id INT64,
  description             STRING,
  percentage              NUMERIC
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.commercial_operation_ideal_customer_profile` (
  commercial_operation_id   INT64,
  ages                      ARRAY<STRUCT<description STRING>>,
  income                    STRING,
  lifestyle_and_hobbies     STRING,
  values_and_beliefs        STRING,
  price_quality_sensitivity STRING,
  brand_loyalty             STRING,
  yearly_purchase_frequency INT64
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.creative_package_items` (
  commercial_operation_id INT64,
  client_already_has BOOL,
  should_be_used BOOL,
  is_creative_anchor BOOL,
  file_reference STRING,
  file_url STRING,
  file_name STRING,
  file_extension STRING,
  media_format STRING,
  media_groups ARRAY<STRUCT<description STRING>>
);

CREATE TABLE  IF NOT EXISTS `sellera-data-prod.data_agents_dev.commercial_operation_creative_packages` (
    commercial_operation_id INTEGER,
    price NUMERIC
);

CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.commercial_operation_efficiency_benchmarks` (
    commercial_operation_id INTEGER,
    roas_benchmark          NUMERIC,
    cvr_benchmark           NUMERIC,
    cpl_benchmark           NUMERIC
);

-- Temporário
CREATE TABLE IF NOT EXISTS `sellera-data-prod.data_agents_dev.commercial_operation_json_briefing_received` (
  commercial_operation_id INT64,
  payload                 STRING
);