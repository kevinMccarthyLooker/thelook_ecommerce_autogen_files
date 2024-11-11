view: primary_key_and_count {
  dimension: id {hidden:yes}

  dimension: primary_key {
    primary_key: yes
    sql: ${id} ;;
  }
  measure: count {
    filters: [primary_key: "-NULL"]
  }
}
