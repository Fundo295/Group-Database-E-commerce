E-Commerce Database Schema 🛍️
Overview
This MySQL database schema provides a comprehensive foundation for an e-commerce platform, supporting product management with variations, categories, attributes, and inventory tracking.

Schema Structure
Core Tables
🏷️ brand - Stores brand information

🗂️ product_category - Hierarchical product categorization

📦 product - Core product information

Product Variations
🎨 color - Available color options

📏 size_category - Size groupings (clothing, shoes, etc.)

📐 size_option - Specific size values

🧾 product_item - Individual product variants with inventory

Product Attributes
📚 attribute_category - Groups attributes (physical, technical)

🧪 attribute_type - Attribute data types (text, number)

🧵 product_attribute - Custom product attributes

🔄 product_variation - Links products to their attributes

Media
🖼️ product_image - Product image storage

