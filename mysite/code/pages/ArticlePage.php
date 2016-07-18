<?php

/**
 * Created by PhpStorm.
 * User: Daniel
 * Date: 18.07.2016
 * Time: 16:28
 */
class ArticlePage extends Page{
    private static $has_many = array(
        'Articles' => 'Article'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();

        $conf = GridFieldConfig_RecordEditor::create();
        $articleGrid = GridField::create('Articles', _t('ArticlePage.Articles', 'Artikel'), $this->Articles(), $conf);
        $conf->addComponent(new GridFieldSortableRows('SortOrder'));


        $fields->removeByName('Content');
        $fields->removeByName('Metadata');

        $fields->addFieldToTab('Root.Beiträge', $articleGrid);

        return $fields;
    }
}
class ArticlePage_Controller extends Page_Controller{

}