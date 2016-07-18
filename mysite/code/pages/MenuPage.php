<?php

/**
 * Created by PhpStorm.
 * User: Daniel
 * Date: 18.07.2016
 * Time: 13:31
 */
class MenuPage extends Page{
    private static $has_many = array(
        'MenuCategories' => 'MenuCategory',
        'DownloadableMenus' => 'File'
    );

    public function getCMSFields()
    {
        $fields = parent::getCMSFields();

        $fields->removeByName('Content');

        $config = GridFieldConfig_RecordEditor::create();
        $config->addComponent(new GridFieldSortableRows('SortOrder'));
        $menuCategoryGrid = GridField::create('Entries', _t('MenuPage.EntryHeader', 'Menü-Einträge'), $this->MenuCategories(), $config);

        $fields->addFieldToTab('Root.Main', $menuCategoryGrid, 'Metadata');
        $fields->addFieldToTab(
            'Root.Upload',
            $uploadField = new UploadField(
                $name = 'DownloadableMenus',
                $title = 'Hier können die Speisekarten als PDF Dateien hochgeladen werden'
            )
        );
        $uploadField->setFolderName('Karten');
        $uploadField->setAllowedExtensions(array('pdf'));
        $uploadField->setAllowedMaxFileNumber(5);

        return $fields;
    }
}

class MenuPage_Controller extends Page_Controller{

}