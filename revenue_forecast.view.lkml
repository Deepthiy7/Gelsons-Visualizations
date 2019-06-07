view: revenue_forecast {
  sql_table_name: substitutableProduct.revenue_forecast ;;

  measure: ACTUAL {
    type: sum
    sql: ${TABLE}.ACTUAL ;;
  }

  dimension_group: date {
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
    sql: ${TABLE}.DATE ;;
  }

  measure: FORECAST {
    type: sum
    sql: ${TABLE}.FORECAST ;;
  }

  dimension: STORE_ID {
    type: number
    sql: ${TABLE}.STORE_ID ;;
  }

  dimension: UPC {
    type: string
    sql: ${TABLE}.UPC ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }

  dimension: PRODUCT_NAME{
    type: string
    sql: ${TABLE}.product_name  ;;
  }

  set: detail {
    fields: [date_date, STORE_ID, UPC, ACTUAL, FORECAST]
  }
}
