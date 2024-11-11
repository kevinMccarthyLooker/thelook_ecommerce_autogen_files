include: "/*/order_items.view"
include: "/*/orders.view"
include: "/*/products.view"
include: "/*/users.view"

explore: order_items {
  from: order_items_view__order_items_explore
  join: orders {
    sql: ${order_items.order_id}=${orders.order_id} ;;
    relationship: many_to_one
  }
  join: users {
    sql: ${order_items.user_id}=${users.id} ;;
    relationship: many_to_one
  }
  join: products {
    sql: ${order_items.product_id}=${products.id} ;;
    relationship: many_to_one
  }
}


#improvements for this specific explore, e.g. remove duplicate fields
view: order_items_view__order_items_explore {
  extends: [order_items]

  #hide foreign keys from field picker
  dimension: inventory_item_id {hidden:yes}
  dimension: order_id {hidden:yes}
  dimension: product_id {hidden:yes}
  dimension: user_id {hidden:yes}

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
