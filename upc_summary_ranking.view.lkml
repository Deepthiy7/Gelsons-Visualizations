view: upc_summary_ranking{
  sql_table_name: substitutableProduct.upc_summary_ranking   ;;
  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: upc {
    type: string
    sql: CAST(${TABLE}.UPC as String) ;;
  }

  dimension: upc_count {
    type: number
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
    sql: ${TABLE}.SubCategoryName ;;
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
    sql: ${TABLE}.substitutable_rank ;;
  }

  dimension: diff_rank {
    type: number
    sql: ${TABLE}.diff_rank ;;
  }

  dimension: unit_rank {
    type: number
    sql: ${TABLE}.unit_rank ;;
  }

  dimension: sales_rank {
    type: number
    sql: ${TABLE}.sales_rank ;;
  }

  dimension: cust_imp_rank_by_cat {
    type: number
    sql: ${TABLE}.cust_imp_rank_by_cat ;;
  }

  dimension: overall_cust_imp_rank {
    type: number
    sql: ${TABLE}.overall_cust_imp_rank ;;
    value_format: "#"
  }

  set: detail {
    fields: [
      upc,
      upc_count,
      avg_unit,
      avg_sales,
      category_name,
      sub_category_name,
      description,
      customer_type,
      substitutable_rank,
      diff_rank,
      unit_rank,
      cust_imp_rank_by_cat,
      overall_cust_imp_rank
    ]
  }
}
