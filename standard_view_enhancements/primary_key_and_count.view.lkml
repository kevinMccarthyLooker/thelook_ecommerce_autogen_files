#corrects for issue with basic count measures (when left joining one_to_one, default count measure can produce wrong result)
#assumes each view has ID field as primary key.  If not, primary_key should be re-declared in extension (updating sql param to point to something unique on the view)
#add default disambiguation to labels

view: primary_key_and_count {
  dimension: id {
    hidden:yes
    label: "{{_view._name}} ID"
  }

  dimension: primary_key {
    label: "{{_view._name}} Primary Key"
    hidden: yes
    primary_key: yes
    sql: ${id} ;;
  }
  measure: count {
    label: "{{_view._name}} Count"
    filters: [primary_key: "-NULL"]
  }
}