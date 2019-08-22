view: upc_summary_ranking {
  derived_table: {
    sql: SELECT a.*,b. DATE, b.ACTUAL, b.FORECAST, b.revenue_forecast_Status  FROM `substitutableProduct.upc_summary_ranking` AS  a LEFT JOIN `substitutableProduct.upc_summary_revenue`   AS b ON  CAST(a.upc AS STRING) = b.upc
      ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: upc {
    type: string
    sql: CAST(${TABLE}.UPC AS STRING);;
  }

  measure: upc_count {
    type: average
    sql: ${TABLE}.upc_count ;;
  }

  dimension: avg_unit {
    type: number
    sql: ${TABLE}.avg_unit ;;
  }

  dimension: avg_sales {
    type: number
    sql: ${TABLE}.avg_sales ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: sub_category_name {
    type: string
    sql: ${TABLE}.SubCategoryName;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: customer_type {
    type: string
    sql: ${TABLE}.customer_type ;;
  }

  dimension: substitutable_rank {
    type: number
    sql: ${TABLE}.substitutable_rank;;
  }

  measure: diff_rank {
    type: average
    sql: ${TABLE}.diff_rank ;;
    drill_fields: [date,forecast]
  }

   dimension: unit_rank {
     type: number
     sql: ${TABLE}.cum_qunatity_rank ;;
   }

   dimension: sales_rank {
     type: number
     sql: ${TABLE}.cum_net_sales_rank ;;
   }


  dimension: cust_imp_rank_by_cat {
    type: number
    sql: ${TABLE}.cust_imp_rank_by_cat ;;
  }

  measure: overall_cust_imp_rank {
    type: average
    sql: ${TABLE}.overall_cust_imp_rank ;;
    value_format: "#"
    drill_fields: [date,forecast]
  }

  dimension: date {
    type: string
    sql: ${TABLE}.DATE ;;
  }

  dimension: actual {
    type: number
    sql: ${TABLE}.ACTUAL ;;
  }

  dimension: forecast {
    type: number
    sql: ${TABLE}.FORECAST ;;
    value_format: "$#"
  }

  dimension: revenue_forecast_status {
    type: string
    sql: ${TABLE}.revenue_forecast_Status ;;
  }

  measure: conv_rank {
    type: number
    sql: row_number() over(partition by ${category_name},${sub_category_name} order by ${category_name},${sub_category_name},${upc_count} desc) ;;
  drill_fields: [date,forecast]
  }

  dimension: cum_quantity {
    type: number
    sql: ceil(${TABLE}.cum_quantity) ;;
    value_format: "#"
  }

  dimension: cum_net_sales {
    type: number
    sql: ceil(${TABLE}.cum_net_sales) ;;
    value_format: "$#"
  }

#   parameter:  input_percentile {
#     description: "Pass percentile"
#     type:  number
#   }
#
#   dimension: sales_percentile {
#     label_from_parameter: input_percentile
#     type: number
#     sql: PERCENTILE_CONT(${cum_net_sales},{% parameter input_percentile %})  OVER (PARTITION BY ${category_name},${sub_category_name});;
#   }

  dimension: lag_cum_sum {
    type: number
    sql: ${TABLE}.lag_cum_sum ;;
  }

  dimension: total_cum_sales {
    type: number
    sql: ${TABLE}.total_cum_sales ;;
  }

  dimension:  sales_percentile{
    type: number
    sql:  percentile ;;
  }


  set: detail {
    fields: [
      upc,
      upc_count,
      category_name,
      sub_category_name,
      description,
      customer_type,
      substitutable_rank,
      diff_rank,
      unit_rank,
      sales_rank,
      cust_imp_rank_by_cat,
      overall_cust_imp_rank,
      date,
      actual,
      forecast,
      revenue_forecast_status
    ]
  }
}
