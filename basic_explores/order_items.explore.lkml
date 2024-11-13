include: "/*/order_items.view"
include: "/*/orders.view"
include: "/*/products.view"
include: "/*/users.view"

#improvements for this specific explore, e.g. remove duplicate fields
view: order_items_view__order_items_explore {
  extends: [order_items]

  #hide foreign keys from field picker
  dimension: inventory_item_id {group_label:"ID Fields"}
  dimension: order_id {group_label:"ID Fields"}
  dimension: product_id {group_label:"ID Fields"}
  dimension: user_id {group_label:"ID Fields"}

  #hide fields that are on other views and fit better in those other views
  dimension_group: created_at {hidden:yes} #present in orders view
  dimension_group: delivered_at {hidden:yes} #present in orders view
  dimension_group: returned_at {hidden:yes} #present in orders view
  dimension_group: shipped_at {hidden:yes} #present in orders view

  dimension: status {hidden:yes} #present in orders view
}

view: orders_view__order_items_explore {
  extends: [orders]
  dimension: order_id {hidden:yes} #hide this and instead use the standard 'ID' field
}

view: products_view__order_items_explore {
  extends: [products]
  view_label: "Order Items"
}



explore: order_items {
  from: order_items_view__order_items_explore
  join: orders {
    from: orders_view__order_items_explore
    sql_on: ${order_items.order_id}=${orders.order_id} ;;
    relationship: many_to_one
  }
  join: products {
    from: products_view__order_items_explore
    sql_on: ${order_items.product_id}=${products.id} ;;
    relationship: many_to_one
  }
  join: users {
    sql_on: ${order_items.user_id}=${users.id} ;;
    relationship: many_to_one
  }
}
