-- ==========================================
-- TABELAS DE DOMÍNIO
-- ==========================================

DELETE FROM `sellera-data-prod.data_agents.commercial_operation_statuses` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.commercial_operation_results` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.advertising_asset_types` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.attributes` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.acquisition_channels` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.purchase_preference_channels` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.company_maturity_levels` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.business_model` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.employee_count_ranges` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.revenue_ranges` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.company_stages` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.city_states` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.social_levels` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.creative_packages` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.market_segments` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.cross_sell_up_sell_types` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.payment_methods` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.feasibility_criteria` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.file_extensions` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.media_formats` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.media_groups` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.aggressiveness_levels` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.profile_incomes` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.profile_ages` WHERE TRUE;

-- ==========================================
-- ENTIDADES PRINCIPAIS
-- ==========================================

DELETE FROM `sellera-data-prod.data_agents.commercial_operations` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.commercial_operation_data` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.commercial_operation_performance` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.commercial_operation_offer` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.companies` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.company_contacts` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.company_trade_sites` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.company_competitors` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.commercial_operation_products` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.commercial_operation_cross_sell_products` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.commercial_operation_ideal_customer_profile` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.ideal_customer_profile_social_levels` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.psychographic_characteristics` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.transactional_characteristics` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.commercial_operation_payment_methods` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.commercial_operation_creative_packages` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.creative_package_items` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.creative_package_item_media_groups` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.operational_efficiency_benchmarks` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.calculated_feasibility_criteria` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.commercial_operation_medias` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.seller_personas` WHERE TRUE;

-- ==========================================
-- RELACIONAMENTOS
-- ==========================================

DELETE FROM `sellera-data-prod.data_agents.commercial_operation_business_models` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.commercial_operation_acquisition_channels` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.commercial_operation_keywords` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.commercial_operation_attributes` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.transaction_channels` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.commercial_operations_advertising_asset_types` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.commercial_operation_media_groups` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.company_business_models` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.ideal_customer_profile_incomes` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.ideal_customer_profile_ages` WHERE TRUE;

-- ==========================================
-- AGENTES
-- ==========================================

DELETE FROM `sellera-data-prod.data_agents.agent_outputs` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.campaign_channel_performances` WHERE TRUE;

-- ==========================================
-- GLOBAIS
-- ==========================================

DELETE FROM `sellera-data-prod.data_agents.notable_communication_vehicles` WHERE TRUE;
DELETE FROM `sellera-data-prod.data_agents.global_parameters` WHERE TRUE;