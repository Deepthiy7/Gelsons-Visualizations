view: customer_upc {
  sql_table_name: substitutableProduct.customer_upc ;;

  dimension: cluster_2 {
    type: number
    sql: ${TABLE}.cluster_2 ;;
  }

  dimension: customer_id {
    type: number
    sql: ${TABLE}.Customer_ID ;;
  }

  dimension_group: date_of_sale {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.date_of_sale ;;
  }

  dimension: store_id {
    type: string
    sql: ${TABLE}.store_ID ;;
  }

  dimension: upc {
    type: string
    sql: ${TABLE}.UPC ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
