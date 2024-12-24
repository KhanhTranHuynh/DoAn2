ALTER TABLE cartitems ADD CONSTRAINT FOREIGN KEY (UserID)REFERENCES users(id) on delete cascade on update cascade;

ALTER TABLE cartitems ADD CONSTRAINT FOREIGN KEY (ProductID)REFERENCES products(id) on delete cascade on update cascade;

ALTER TABLE cartitems ADD CONSTRAINT FOREIGN KEY (MemoryID)REFERENCES options(id) on delete cascade on update cascade;

ALTER TABLE cartitems ADD CONSTRAINT FOREIGN KEY (ColorID)REFERENCES optioncolors(id) on delete cascade on update cascade;

ALTER TABLE comants ADD CONSTRAINT FOREIGN KEY (UserID) REFERENCES users(id) on delete cascade on update cascade;

ALTER TABLE comants ADD CONSTRAINT FOREIGN KEY (ProductID) REFERENCES products(id) on delete cascade on update cascade;

ALTER TABLE oders ADD CONSTRAINT FOREIGN KEY (CartItemID) REFERENCES cartitems(id) on delete cascade on update cascade;

ALTER TABLE oders ADD CONSTRAINT FOREIGN KEY (UserID) REFERENCES users(id) on delete cascade on update cascade;

ALTER TABLE oders ADD CONSTRAINT FOREIGN KEY (app_trans_id) REFERENCES payments(id) on delete cascade on update cascade;

ALTER TABLE optioncolors ADD CONSTRAINT FOREIGN KEY (productID) REFERENCES products(id) on delete cascade on update cascade;

ALTER TABLE options ADD CONSTRAINT FOREIGN KEY (productID) REFERENCES products(id) on delete cascade on update cascade;

ALTER TABLE payments ADD CONSTRAINT FOREIGN KEY (UserID) REFERENCES users(id) on delete cascade on update cascade;

ALTER TABLE products ADD CONSTRAINT FOREIGN KEY (CategoryID) REFERENCES categories(id) on delete cascade on update cascade;

ALTER TABLE categories
ADD CONSTRAINT unique_Category_Name UNIQUE(Category_Name);

ALTER TABLE products
ADD CONSTRAINT unique_Product_Name UNIQUE(Product_Name);

ALTER TABLE users
ADD CONSTRAINT unique_User_Email UNIQUE(User_Email);

