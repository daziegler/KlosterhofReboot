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
                new TextField("RestaurantTitle", _t('OpeningHours.RestaurantTitle', 'Restaurant Titel')),
                new TextField("RestaurantOpeningHours", _t('OpeningHours.RestaurantOpeningHours', 'Öffnungszeiten des Restaurants')),
                new TextField("DayOff", _t('OpeningHours.DaysClosed', 'Falls vorhanden: Ruhetage des Restaurants')),
                new TextField("BiergartenTitle", _t('OpeningHours.BiergartenTitle', 'Biergarten Titel')),
                new TextField("BiergartenDayOff", _t('OpeningHours.CafeOpeningDays', 'Falls vorhanden: Ruhetage des Biergartens')),
                new TextField("BiergartenOpeningHours", _t('OpeningHours.CafeOpeningHours', 'Öffnungszeiten des Biergartens'))
            ));
    }
}