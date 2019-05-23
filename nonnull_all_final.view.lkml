view: nonnull_all_final {
  sql_table_name: substitutableProduct.nonnull_all_final ;;

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

  dimension: month {
    type: number
    sql: ${TABLE}.month ;;
  }

  dimension: net_cost {
    type: number
    sql: ${TABLE}.netCost ;;
  }

  dimension: store_id {
    type: number
    sql: ${TABLE}.store_ID ;;
  }

  dimension: upc {
    type: number
    sql: ${TABLE}.UPC ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}.year ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
