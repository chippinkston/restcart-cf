component accessors=true output=false persistent=true table="restcart_user"{

    // identifier
    property name="id" fieldtype="id" generator="native";

    property name="username";
    property name="password";
    property name="isAdmin=" ormtype="boolean";

    // RELATIONSHIP - Many Buildings can belong to one Street
    property name="orders" fieldtype="many-to-one" cfc="order" fkcolumn="orderid";

}
