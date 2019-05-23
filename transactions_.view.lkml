view: transactions_ {
  sql_table_name: substitutableProduct.transactions_ ;;

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
