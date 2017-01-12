# Wordpress WooCommerce Mondial Relay

A Wordpress/WooCommerce website configured for WooCommerce Mondial Relay plugin.

You can use it to test the WooCommerce Mondial Relay plugin in a standardized configuration.

More informations about WooCommerce Mondial Relay : https://www.mondialrelay-woocommerce.com/

WooCommerce Mondial Relay documentation (in French only) : http://docs.mondialrelay-woocommerce.com/

## Components version

Component | Version
|:--- |:----
Wordpress | 4.7.1
WooCommerce | 2.6.11
Storefront | 2.1.6

## Installation

- Copy this project on your server
- Import ``database.sql`` in your database
- Replace ``wp-config.php`` database informations by yours
- Change the url of your server on ``wpwc_options`` table in fields :
	- siteurl
	- home
- WooCommerce is already configured. [See details here](#woocommerce-configuration).
- Install [WooCommerce Mondial Relay plugin](https://www.mondialrelay-woocommerce.com/).  
This plugin is a paid plugin. It’s not included in this project.   
After installation, the Mondial Relay plugin is already configured. [See details here](#woocommerce-mondial-relay-configuration).
- You have to enter your Google Api Key on the ``Settings`` page of WooCommerce Mondial Relay plugin in Wordpress administration if you want to display Google Map in the widget on the checkout page.  
You can create an Google API Key on https://developers.google.com/maps/documentation/javascript/get-api-key

## Database informations

- Prefix: ``wpwc``

## Admin informations

- **Login:** admin
- **Password:** admin
- **Mail:** admin@admin.com

## Themes installed

- Twenty Seventeen
- Storefront *(activated)*

## Plugins installed

- WooCommerce *(activated)*

## WooCommerce configuration

### General

- Units: ``g``
- Charging tax: 20%

### Payment method

- Cash on delivery

### Shipping methods

Region | Method | Name | Price
|:--- |:---- |:---- |:----
France | Flat rate | Mondial Relay France | 3 €
France | Flat rate | Autre livraison France | 2 €
Europe | Flat rate | Mondial Relay Europe | 5 €
Europe | Flat rate | Autre livraison Europe | 4 €

### Products

Product | Price | Weight
|:--- |:---- |:----
Test product | 10 € | 300g

## WooCommerce Mondial Relay configuration

### Vendor

- **Expéditeur** : Expediteur
- **Rue** : 1 Rue Expediteur
- **Code postal** : 75000
- **Ville** : Paris
- **Pays** : France
- **Téléphone** : 0123456789

### Settings

Shipping method activated for Mondial Relay:

- Mondial Relay France
- Mondial Relay Europe

### Maintenance

- Debug mode activated

### CSS

```css
img {
        display: inline-block!important;
}
```
