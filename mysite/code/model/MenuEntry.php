<?php

/**
 * Created by PhpStorm.
 * User: Daniel
 * Date: 18.07.2016
 * Time: 13:33
 */
class MenuEntry extends DataObject{
    private static $has_one = array(
        'MenuCategory' => 'MenuCategory'
    );

    private static $db = array(
        'Title' => 'Varchar',
        'Description' => 'Text',
        'Price' => 'Currency',
        'SortOrder'=>'Int',
    );

    private static $singular_name = 'Menü-Eintrag';
    private static $plural_name = 'Menü-Einträge';

    private static $default_sort = 'SortOrder';

    public function getNicePrice() {
        return $this->Price . "&nbsp;" . Currency::config()->currency_symbol;
    }

    public function getCMSFields(){
        $fields = parent::getCMSFields();
        $fields->removeByName('SortOrder');
        $fields->removeByName('MenuCategoryID');

        return $fields;
    }

    function getCMSValidator() {
        return new RequiredFields(array('Title', 'Price'));
    }

    public function fieldLabels($includerelations = true) {
        $labels = parent::fieldLabels();
        $labels['Title']	    = _t('MenuEntry.Title', 'Name des Gerichts');
        $labels['Description']  = _t('MenuEntry.Description', 'Beschreibung');
        $labels['Price']        = _t('MenuEntry.Price', 'Preis');

        return $labels;
    }
}