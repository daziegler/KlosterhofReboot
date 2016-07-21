<?php

/**
 * Created by PhpStorm.
 * User: ZSK
 * Date: 21.07.2016
 * Time: 19:15
 */
class ContactData extends DataExtension{
    private static $db = array(
        "Address" => "Varchar",
        "Phone" => "Varchar",
        "Email" => "Varchar(320)"
    );

    public function updateCMSFields(FieldList $fields) {
        $fields->addFieldsToTab("Root.Kontaktdaten",
            array(
                new TextField("Address", _t('ContactData.Address', 'Adresse')),
                new TextField("Phone", _t('ContactData.Phone', 'Telefonnummer')),
                new TextField("Email", _t('ContactData.Email', 'Email-Adresse'))
            ));
    }
}