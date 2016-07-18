<?php

/**
 * Created by PhpStorm.
 * User: Daniel
 * Date: 18.07.2016
 * Time: 15:07
 */
class OpeningHours extends DataExtension{
    private static $db = array(
        'RestaurantOpeningHours' => 'Varchar',
        'DayOff' => 'Varchar',
        'RestaurantTitle' => 'Varchar',
        'BiergartenTitle' => 'Varchar',
        'BiergartenDayOff' => 'Varchar',
        'BiergartenOpeningHours' => 'Varchar'
    );

    public function updateCMSFields(FieldList $fields) {
        $fields->addFieldsToTab("Root.Öffnungszeiten",
            array(
                new TextField("RestaurantTitle", _t('ContactFieldExtension.RestaurantTitle', 'Restaurant Titel')),
                new TextField("RestaurantOpeningHours", _t('ContactFieldExtension.RestaurantOpeningHours', 'Öffnungszeiten des Restaurants')),
                new TextField("DayOff", _t('ContactFieldExtension.DaysClosed', 'Falls vorhanden: Ruhetage des Restaurants')),
                new TextField("BiergartenTitle", _t('ContactFieldExtension.BiergartenTitle', 'Biergarten Titel')),
                new TextField("BiergartenDayOff", _t('ContactFieldExtension.CafeOpeningDays', 'Falls vorhanden: Ruhetage des Biergartens')),
                new TextField("BiergartenOpeningHours", _t('ContactFieldExtension.CafeOpeningHours', 'Öffnungszeiten des Biergartens'))
            ));
    }
}