view: customer_transactions {
  sql_table_name: substitutableProduct.customer_transactions ;;

  dimension: category_id {
    type: number
    sql: ${TABLE}.CategoryID ;;
  }

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.Customer_ID ;;
  }

  dimension: line_code {
    type: number
    sql: ${TABLE}.LineCode ;;
  }

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: price {
    type: number
    sql: ${TABLE}.price ;;
  }

  dimension: quantity {
    type: number
    sql: ${TABLE}.quantity ;;
  }

  dimension: sub_category_id {
    type: number
    sql: ${TABLE}.SubCategoryID ;;
  }

  dimension: sub_category_name {
    type: string
    sql: ${TABLE}.SubCategoryName ;;
  }

  dimension: upc {
    type: string
    sql: ${TABLE}.UPC ;;
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
