view: substitute_product_item_list {
  sql_table_name: substitutableProduct.substitute_product_item_list ;;

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: sub_category_name {
    type: string
    sql: ${TABLE}.SubCategoryName ;;
  }

  dimension: substitutable_flag {
    type: number
    sql: ${TABLE}.substitutable_flag ;;
  }

  dimension: upc {
    type: number
    sql: ${TABLE}.UPC ;;
  }

  measure: count {
    type: count
    drill_fields: [sub_category_name, category_name]
  }
}
