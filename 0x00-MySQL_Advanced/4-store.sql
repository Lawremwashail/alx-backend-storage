-- Create a trigger that decreases the quantity of an item after adding a new order
-- Update the quantity in the 'items' table after a new order is added.
-- Decrease the item's quantity by the ordered quantity
-- Ensure we update the correct item based on item_id in the new order

CREATE TRIGGER update_quantity_after_order
AFTER INSERT ON orders
FOR EACH ROW
UPDATE items
SET quantity = quantity - NEW.number
WHERE name = NEW.item_name;
