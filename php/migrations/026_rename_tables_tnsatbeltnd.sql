-- Migration 026: Rename all tables from `networksat_*` to `tnsatbeltnd_*`
-- Run this ONCE on the production MySQL database.
-- After running, all PHP APIs (already updated in code) will hit the new names.
--
-- Order doesn't matter for RENAME TABLE — MySQL resolves FKs by internal IDs.

RENAME TABLE
  networksat_clients                       TO tnsatbeltnd_clients,
  networksat_resellers                     TO tnsatbeltnd_resellers,
  networksat_delivery_types                TO tnsatbeltnd_delivery_types,
  networksat_services                      TO tnsatbeltnd_services,
  networksat_orders                        TO tnsatbeltnd_orders,
  networksat_complaints                    TO tnsatbeltnd_complaints,
  networksat_notifications                 TO tnsatbeltnd_notifications,
  networksat_point_transactions            TO tnsatbeltnd_point_transactions,
  networksat_contact_messages              TO tnsatbeltnd_contact_messages,
  networksat_recharge_codes                TO tnsatbeltnd_recharge_codes,
  networksat_settings                      TO tnsatbeltnd_settings,
  networksat_categories                    TO tnsatbeltnd_categories,
  networksat_product_keys                  TO tnsatbeltnd_product_keys,
  networksat_order_responses               TO tnsatbeltnd_order_responses,
  networksat_global_messages               TO tnsatbeltnd_global_messages,
  networksat_global_message_reads          TO tnsatbeltnd_global_message_reads,
  networksat_stock_out_attempts            TO tnsatbeltnd_stock_out_attempts,
  networksat_reseller_service_prices       TO tnsatbeltnd_reseller_service_prices,
  networksat_reseller_service_visibility   TO tnsatbeltnd_reseller_service_visibility,
  networksat_reseller_category_visibility  TO tnsatbeltnd_reseller_category_visibility,
  networksat_reset_products                TO tnsatbeltnd_reset_products;
