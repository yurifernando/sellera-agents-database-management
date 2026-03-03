-- ==========================================
-- TABELAS DE DOMÍNIO
-- ==========================================

DROP TABLE `sellera-data-prod.data_agents.commercial_operation_statuses`;
DROP TABLE `sellera-data-prod.data_agents.commercial_operation_results`;
DROP TABLE `sellera-data-prod.data_agents.advertising_asset_types`;
DROP TABLE `sellera-data-prod.data_agents.attributes`;
DROP TABLE `sellera-data-prod.data_agents.acquisition_channels`;
DROP TABLE `sellera-data-prod.data_agents.purchase_preference_channels`;
DROP TABLE `sellera-data-prod.data_agents.company_maturity_levels`;
DROP TABLE `sellera-data-prod.data_agents.business_model`;
DROP TABLE `sellera-data-prod.data_agents.employee_count_ranges`;
DROP TABLE `sellera-data-prod.data_agents.revenue_ranges`;
DROP TABLE `sellera-data-prod.data_agents.company_stages`;
DROP TABLE `sellera-data-prod.data_agents.city_states`;
DROP TABLE `sellera-data-prod.data_agents.social_levels`;
DROP TABLE `sellera-data-prod.data_agents.creative_packages`;
DROP TABLE `sellera-data-prod.data_agents.market_segments`;
DROP TABLE `sellera-data-prod.data_agents.strategy_products_types`;
DROP TABLE `sellera-data-prod.data_agents.payment_methods`;
DROP TABLE `sellera-data-prod.data_agents.feasibility_criteria`;
DROP TABLE `sellera-data-prod.data_agents.file_extensions`;
DROP TABLE `sellera-data-prod.data_agents.media_formats`;
DROP TABLE `sellera-data-prod.data_agents.media_groups`;
DROP TABLE `sellera-data-prod.data_agents.aggressiveness_levels`;
DROP TABLE `sellera-data-prod.data_agents.profile_incomes`;
DROP TABLE `sellera-data-prod.data_agents.profile_ages`;

-- ==========================================
-- ENTIDADES PRINCIPAIS
-- ==========================================

DROP TABLE `sellera-data-prod.data_agents.commercial_operations`;
DROP TABLE `sellera-data-prod.data_agents.commercial_operation_data`;
DROP TABLE `sellera-data-prod.data_agents.commercial_operation_performance`;
DROP TABLE `sellera-data-prod.data_agents.commercial_operation_offer`;
DROP TABLE `sellera-data-prod.data_agents.companies`;
DROP TABLE `sellera-data-prod.data_agents.company_contacts`;
DROP TABLE `sellera-data-prod.data_agents.company_trade_sites`;
DROP TABLE `sellera-data-prod.data_agents.company_competitors`;
DROP TABLE `sellera-data-prod.data_agents.commercial_operation_products`;
DROP TABLE `sellera-data-prod.data_agents.commercial_operation_strategy_products`;
DROP TABLE `sellera-data-prod.data_agents.commercial_operation_ideal_customer_profile`;
DROP TABLE `sellera-data-prod.data_agents.ideal_customer_profile_social_levels`;
DROP TABLE `sellera-data-prod.data_agents.psychographic_characteristics`;
DROP TABLE `sellera-data-prod.data_agents.transactional_characteristics`;
DROP TABLE `sellera-data-prod.data_agents.commercial_operation_payment_methods`;
DROP TABLE `sellera-data-prod.data_agents.commercial_operation_creative_packages`;
DROP TABLE `sellera-data-prod.data_agents.creative_package_items`;
DROP TABLE `sellera-data-prod.data_agents.creative_package_item_media_groups`;
DROP TABLE `sellera-data-prod.data_agents.operational_efficiency_benchmarks`;
DROP TABLE `sellera-data-prod.data_agents.calculated_feasibility_criteria`;
DROP TABLE `sellera-data-prod.data_agents.commercial_operation_medias`;
DROP TABLE `sellera-data-prod.data_agents.seller_personas`;

-- ==========================================
-- RELACIONAMENTOS
-- ==========================================

DROP TABLE `sellera-data-prod.data_agents.commercial_operation_business_models`;
DROP TABLE `sellera-data-prod.data_agents.commercial_operation_acquisition_channels`;
DROP TABLE `sellera-data-prod.data_agents.commercial_operation_keywords`;
DROP TABLE `sellera-data-prod.data_agents.commercial_operation_attributes`;
DROP TABLE `sellera-data-prod.data_agents.transaction_channels`;
DROP TABLE `sellera-data-prod.data_agents.commercial_operations_advertising_asset_types`;
DROP TABLE `sellera-data-prod.data_agents.commercial_operation_media_groups`;
DROP TABLE `sellera-data-prod.data_agents.company_business_models`;
DROP TABLE `sellera-data-prod.data_agents.ideal_customer_profile_incomes`;
DROP TABLE `sellera-data-prod.data_agents.ideal_customer_profile_ages`;

-- ==========================================
-- AGENTES
-- ==========================================

DROP TABLE `sellera-data-prod.data_agents.agent_outputs`;
DROP TABLE `sellera-data-prod.data_agents.campaign_channel_performances`;

-- ==========================================
-- GLOBAIS
-- ==========================================

DROP TABLE `sellera-data-prod.data_agents.notable_communication_vehicles`;
DROP TABLE `sellera-data-prod.data_agents.global_parameters`;