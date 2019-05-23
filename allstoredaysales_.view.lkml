view: allstoredaysales_ {
  sql_table_name: substitutableProduct.allstoredaysales_ ;;

  dimension: daily_selling_units {
    type: number
    sql: ${TABLE}.DailySellingUnits ;;
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
    sql: ${TABLE}.date ;;
  }

  dimension: net_cost {
    type: number
    sql: ${TABLE}.NetCost ;;
  }

  dimension: store_number {
    type: string
    sql: ${TABLE}.StoreNumber ;;
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
