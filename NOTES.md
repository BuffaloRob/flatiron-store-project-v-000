Messages:

- User 
  - Am I logged in?
  - What are all the items in my cart?
  - What cart is mine?

- Cart
  - what are my contents?
  - what will the inventory count be after I check out?
  - Who is my User?

- Category
  - What are all the items in this category?
  - What are all the different categories?

- Item
  - What are the items that are in stock?
  - how many of item X do we have?

Flow:

1) user logs in
2) user goes to item page and adds to current_cart
  - This creates a current_cart if none exists
3) user submits cart to checkout
4) item inventory is updated