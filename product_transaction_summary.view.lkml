view: product_transaction_summary {
  sql_table_name: substitutableProduct.product_transaction_summary ;;

  dimension: avg_price {
    type: number
    sql: ${TABLE}.avg_price ;;
  }

  dimension: avg_unit_purchased {
    type: number
    sql: ${TABLE}.avg_unit_purchased ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: frequency_of_purchase {
    type: number
    sql: ${TABLE}.frequency_of_purchase ;;
  }

  dimension: line_code {
    type: number
    sql: ${TABLE}.LineCode ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: no_of_customers {
    type: number
    sql: ${TABLE}.no_of_customers ;;
  }

  dimension: sub_category_name {
    type: string
    sql: ${TABLE}.SubCategoryName ;;
  }

  dimension: upc {
    type: string
    sql: ${TABLE}.UPC ;;
  }

  dimension: weightage {
    type: number
    sql: ${TABLE}.weightage ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: [sub_category_name, category_name]
  }
}
