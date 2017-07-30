<?php

/**
 * Created by PhpStorm.
 * User: Daniel
 * Date: 05.08.2016
 * Time: 09:28
 */
class AllergenTag extends DataObject
{
    private static $db = array(
        'Title' => 'Varchar'
    );

    private static $many_many = array(
        'MenuEntry' => 'MenuEntry'
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();
        $fields->removeByName('MenuEntryID');
        return $fields;
    }

    public function fieldLabels($includerelations = true)
    {
        $labels = parent::fieldLabels();
        $labels['Title'] = _t('AllergenTag.Title', 'Allergiehinweis');

        return $labels;
    }
}