view: missingitems {
  sql_table_name: substitutableProduct.missingitems ;;

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
    sql: ${TABLE}.date ;;
  }

  dimension: net_cost {
    type: number
    sql: ${TABLE}.NetCost ;;
  }

  dimension: store_number {
    type: number
    sql: ${TABLE}.StoreNumber ;;
  }

  dimension: units {
    type: number
    sql: ${TABLE}.units ;;
  }

  dimension: upc {
    type: number
    sql: ${TABLE}.UPC ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
