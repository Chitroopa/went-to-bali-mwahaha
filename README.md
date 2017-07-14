# README

# _E-commerce site_

#### _Ruby on Rails week3 independent project, 07/14/2017_

#### By _**Chitroopa Manikkavasagam**_

## Description

E-commerce site. Uses `bcrypt` for user authentication and `materialize` for styling.

### Refactoring objectives


| AJAX Refactoring | Status |
|------------------|--------|
| Users can add products to their shopping cart from the index page with AJAX. The item should be added to the shopping cart and the number of items in the cart (shown in the navbar) should update.| Completed |
| Users can click on a product and show/hide the product detail using AJAX. The product detail should include an image (either Paperclip or an image link), the description, and any other fields you choose to add.| Completed |
| Users can remove items from the shopping cart without a page reload. The "delete" link should result in the item being removed from the shopping cart and the total price being updated.| Completed |

| other refactoring | Status |
|-------------------|--------|
| Ensure that users can't order a negative number of items.| Completed |
| Add flash messages for signing up, signing in and signing out.| Completed |
| Add product update and delete functionality for admins.| Completed |
| Add admin flash messages for adding, updating and deleting products.| Completed |
| Add Paperclip for product image upload.| Completed |
| Allow other than whole dollar amounts for admin product creation (for instance, 3.99).| Completed |
| Add product validations.| Completed |
| Add admin links to navbar so admins can easily add, update and delete products.| Completed |
| Add further AJAX functionality where it might be useful.| Completed |

## Installation
------------

```
$ git clone https://github.com/Chitroopa/went-to-bali-mwahaha
$ cd went-to-bali-mwahaha
```

Install required gems:
```
$ bundle install
```

Start postgres:
```
$ psql
```

Create databases:
```
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

Start the webserver:
```
$ rails s
```

Navigate to `localhost:3000` in browser.


## Known Bugs

_NA_

## Technologies Used

_Ruby on Rails, HTML, CSS, materialize_

### License

*MIT*

Copyright (c) 2017 **_Chitroopa Manikkavasagam_**
