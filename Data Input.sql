-- Insert sample brands
INSERT INTO brand (name, description, logo_url) VALUES
('Nike', 'Just Do It', 'https://example.com/logos/nike.png'),
('Apple', 'Think Different', 'https://example.com/logos/apple.png'),
('Levi\'s', 'Quality denim since 1853', 'https://example.com/logos/levis.png'),
('Samsung', 'Innovating technology', 'https://example.com/logos/samsung.png');

-- Insert product categories
INSERT INTO product_category (name, description, parent_category_id) VALUES
('Clothing', 'Apparel for men, women, and children', NULL),
('Electronics', 'Electronic devices and gadgets', NULL),
('T-Shirts', 'Casual tops', 1),
('Jeans', 'Denim pants', 1),
('Smartphones', 'Mobile phones with advanced features', 2),
('Laptops', 'Portable computers', 2);

-- Insert size categories
INSERT INTO size_category (name, description) VALUES
('Clothing Size', 'Standard sizes for clothing'),
('Shoe Size', 'Standard sizes for footwear'),
('Screen Size', 'Display sizes in inches');

-- Insert size options
INSERT INTO size_option (size_category_id, value, description) VALUES
(1, 'S', 'Small'),
(1, 'M', 'Medium'),
(1, 'L', 'Large'),
(1, 'XL', 'Extra Large'),
(2, '8', 'US Size 8'),
(2, '9', 'US Size 9'),
(2, '10', 'US Size 10'),
(3, '6.1', '6.1 inches'),
(3, '6.7', '6.7 inches'),
(3, '13', '13 inches'),
(3, '15.6', '15.6 inches');

-- Insert colors
INSERT INTO color (name, hex_code) VALUES
('Red', '#FF0000'),
('Blue', '#0000FF'),
('Black', '#000000'),
('White', '#FFFFFF'),
('Green', '#00FF00'),
('Gray', '#808080'),
('Space Gray', '#717378'),
('Silver', '#C0C0C0');

-- Insert attribute categories
INSERT INTO attribute_category (name, description) VALUES
('Physical', 'Physical characteristics of the product'),
('Technical', 'Technical specifications'),
('Material', 'Material composition');

-- Insert attribute types
INSERT INTO attribute_type (name, description) VALUES
('Text', 'Plain text value'),
('Number', 'Numeric value'),
('Boolean', 'True/False value'),
('Decimal', 'Decimal number value');

-- Insert product attributes
INSERT INTO product_attribute (name, category_id, type_id) VALUES
('Material', 3, 1),
('Weight', 1, 4),
('Waterproof', 1, 3),
('Processor', 2, 1),
('RAM', 2, 2),
('Storage', 2, 2),
('Screen Resolution', 2, 1),
('Battery Capacity', 2, 2);

-- Insert products
INSERT INTO product (name, description, brand_id, category_id, base_price) VALUES
('Nike Air T-Shirt', 'Comfortable cotton t-shirt', 1, 3, 29.99),
('Levi\'s 501 Jeans', 'Classic straight fit jeans', 3, 4, 59.99),
('iPhone 13', 'Latest smartphone from Apple', 2, 5, 799.00),
('Galaxy S21', 'Flagship smartphone from Samsung', 4, 5, 699.99),
('MacBook Pro', 'Powerful laptop for professionals', 2, 6, 1299.00),
('Galaxy Book Pro', 'Thin and light laptop', 4, 6, 999.99);

-- Insert product images
INSERT INTO product_image (product_id, image_url, is_primary) VALUES
(1, 'https://example.com/products/nike_tshirt_1.jpg', TRUE),
(1, 'https://example.com/products/nike_tshirt_2.jpg', FALSE),
(2, 'https://example.com/products/levis_jeans_1.jpg', TRUE),
(3, 'https://example.com/products/iphone13_1.jpg', TRUE),
(3, 'https://example.com/products/iphone13_2.jpg', FALSE),
(4, 'https://example.com/products/galaxy_s21_1.jpg', TRUE),
(5, 'https://example.com/products/macbook_pro_1.jpg', TRUE),
(6, 'https://example.com/products/galaxy_book_1.jpg', TRUE);

-- Insert product variations
INSERT INTO product_variation (product_id, attribute_id) VALUES
(1, 1), (1, 2), -- T-shirt: material, weight
(2, 1), (2, 2), -- Jeans: material, weight
(3, 4), (3, 5), (3, 6), (3, 7), (3, 8), -- iPhone: processor, RAM, storage, screen res, battery
(4, 4), (4, 5), (4, 6), (4, 7), (4, 8), -- Galaxy S21: same as above
(5, 4), (5, 5), (5, 6), (5, 7), -- MacBook: processor, RAM, storage, screen res
(6, 4), (6, 5), (6, 6), (6, 7); -- Galaxy Book: same as above

-- Insert product items (variants)
INSERT INTO product_item (product_id, sku, price, quantity_in_stock, size_option_id, color_id) VALUES
-- Nike T-Shirt variants
(1, 'NIK-TS-RD-S', 29.99, 100, 1, 1), -- Red, Small
(1, 'NIK-TS-RD-M', 29.99, 150, 2, 1), -- Red, Medium
(1, 'NIK-TS-BL-L', 29.99, 75, 3, 2),  -- Blue, Large
(1, 'NIK-TS-BK-XL', 29.99, 50, 4, 3), -- Black, XL

-- Levi's Jeans variants
(2, 'LEV-501-BL-32', 59.99, 80, NULL, 2), -- Blue jeans (size handled differently)
(2, 'LEV-501-BK-34', 59.99, 60, NULL, 3), -- Black jeans

-- iPhone 13 variants
(3, 'IPH-13-128-RD', 799.00, 30, NULL, 1), -- Red
(3, 'IPH-13-128-BK', 799.00, 45, NULL, 3), -- Black
(3, 'IPH-13-256-BK', 899.00, 25, NULL, 3), -- Black, 256GB

-- Galaxy S21 variants
(4, 'SAMS-S21-128-PH', 699.99, 40, NULL, 1), -- Phantom Red
(4, 'SAMS-S21-256-PB', 749.99, 35, NULL, 2), -- Phantom Blue

-- MacBook Pro variants
(5, 'MBP-13-8-256-SG', 1299.00, 20, 10, 7), -- Space Gray, 13"
(5, 'MBP-13-16-512-SG', 1499.00, 15, 10, 7), -- Space Gray, 13", upgraded

-- Galaxy Book Pro variants
(6, 'SGB-15-16-512-SL', 999.99, 25, 11, 8); -- Silver, 15.6"

