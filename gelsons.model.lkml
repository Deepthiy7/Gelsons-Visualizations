connection: "gelsons_visualization"

# include all the views
include: "*.view"

datagroup: gelsons_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: gelsons_default_datagroup

explore: allstoredaysales_ {}

explore: customer_ {}

explore: customer_cluster_data {}

explore: customer_cluster_result {}

explore: customer_transactions {}

explore: customer_upc {}

explore: customers {
  join: customer_ {
    type: left_outer
    sql_on: ${customers.customer__id} = ${customer_.customer_id} ;;
    relationship: many_to_one
  }
}

explore: differentiated_product_item_list {}

explore: differentiated_product_table {}

explore: differentiatedproduct_pre_data {}

explore: missingitems {}

explore: monthly_differentiated_table {}

explore: monthly_substitutable_product {}

explore: nonnull_all_final {}

explore: product_transaction_summary {}

explore: product_transaction_summary_staging {}

explore: revenue_forecast {}

explore: seasonal_upc {}

explore: substitutable_product_flag {
#     join: transaction_summary {
#       type: inner
#       relationship: one_to_one
#       sql_on: ${transaction_summary.substitutable_product_flag_category_name} = ${substitutable_product_flag.category_name} AND
#               ${transaction_summary.substitutable_product_flag_sub_category_name} = ${substitutable_product_flag.sub_category_name} AND
#               ${transaction_summary.substitutable_product_flag_month} = ${substitutable_product_flag.month}  AND
#               ${transaction_summary.substitutable_product_flag_year} = ${substitutable_product_flag.year} AND
#               ${transaction_summary.substitutable_flag} = ${substitutable_product_flag.substitutable_flag}
#       ;;
#     }
}

explore: substitute_product_item_list {}

explore: transactions_ {}

explore: revenue_forecast_view {}
explore: substitutable_product_drill_down {}
