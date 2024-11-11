include: "/*/order_items.view"
include: "/*/orders.view"
include: "/*/products.view"
include: "/*/users.view"

explore: order_items {
  from: order_items_view__order_items_explore
  join: orders {
    sql: ${order_items.order_id}=${orders.order_id} ;;
  }
  join: users {
    sql: ${order_items.user_id}=${users.id} ;;
  }
  join: products {
    sql: ${order_items.product_id}=${products.id} ;;
  }
}


view: order_items_view__order_items_explore {
  extends: [order_items]
  dimension: id {hidden:yes}
  dimension: inventory_item_id {hidden:yes}
  dimension: order_id {hidden:yes}
  dimension: product_id {hidden:yes}
  dimension: user_id {hidden:yes}
}
