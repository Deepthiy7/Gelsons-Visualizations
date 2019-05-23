view: seasonal_upc {
  sql_table_name: substitutableProduct.seasonal_upc ;;

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: description_display {
    type: string
    sql: ${TABLE}.description_display ;;
  }

  dimension: int64_field_0 {
    type: number
    sql: ${TABLE}.int64_field_0 ;;
  }

  dimension: item_status {
    type: string
    sql: ${TABLE}.item_status ;;
  }

  dimension: size_display {
    type: string
    sql: ${TABLE}.size_display ;;
  }

  dimension: upc {
    type: number
    sql: ${TABLE}.UPC ;;
  }

  dimension: upc_ {
    type: string
    sql: ${TABLE}.UPC_ ;;
  }

  dimension: upc_display {
    type: number
    sql: ${TABLE}.upc_display ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
