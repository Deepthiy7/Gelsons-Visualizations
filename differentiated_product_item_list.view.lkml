view: differentiated_product_item_list {
  sql_table_name: substitutableProduct.differentiated_product_item_list ;;

  dimension: category_name {
    type: string
    sql: ${TABLE}.CategoryName ;;
  }

  dimension: n_rows {
    type: number
    sql: ${TABLE}.N_Rows ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}.rank ;;
  }

  dimension: sub_category_name {
    type: string
    sql: ${TABLE}.SubCategoryName ;;
  }

  dimension: upc {
    type: number
    sql: ${TABLE}.UPC ;;
  }

  dimension: weighted_sequence {
    type: number
    sql: ${TABLE}.weighted_sequence ;;
  }

  measure: count {
    type: count
    drill_fields: [sub_category_name, category_name]
  }
}
