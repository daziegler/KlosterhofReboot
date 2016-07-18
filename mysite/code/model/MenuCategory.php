<?php

/**
 * Created by PhpStorm.
 * User: Daniel
 * Date: 18.07.2016
 * Time: 13:57
 */
class MenuCategory extends DataObject{
    private static $db = array(
        'Title' => 'Varchar',
        'SortOrder'=>'Int'
    );

    private static $has_one = array(
        'MenuPage' => 'MenuPage'
    );

    private static $has_many = array(
        'MenuEntries' => 'MenuEntry'
    );

    private static $singular_name = 'Menü-Kategorie';
    private static $plural_name = 'Menü-Kategorien';

    private static $default_sort = 'SortOrder';

    public function getCMSFields() {
        $fields = parent::getCMSFields();;
        $fields->removeByName('MenuPageID');
        $fields->removeByName('MenuEntries');
        $fields->removeByName('SortOrder');

        if($this->ID) {
            $config = GridFieldConfig_RecordEditor::create();
            $config->addComponent(new GridFieldSortableRows('SortOrder'));
            $fields->addFieldToTab('Root.Main', GridField::create('Entries', _t('MenuCategory.Entries', 'Menü-Einträge'), $this->MenuEntries(), $config));
        }

        return $fields;
    }

    function getCMSValidator() {
        return new RequiredFields(array('Title'));
    }

    public function getURLTitle() {
        return Convert::raw2url($this->Title);
    }

    public function fieldLabels($includerelations = true) {
        $labels = parent::fieldLabels();
        $labels['Title'] = _t('MenuCategory.JobTitle', 'Name');

        return $labels;
    }
}