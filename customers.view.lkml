view: customers {
  sql_table_name: substitutableProduct.customers ;;

  dimension: customer__id {
    type: number
    # hidden: yes
    sql: ${TABLE}.Customer__ID ;;
  }

  dimension: date_of_sale {
    type: string
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
    drill_fields: [customer_.cust_name, customer_.customer_id]
  }
}
