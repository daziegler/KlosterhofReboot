<?php

/**
 * Created by PhpStorm.
 * User: Daniel
 * Date: 18.07.2016
 * Time: 16:19
 */
class Article extends DataObject{
    private static $db = array(
        'Title' => 'Varchar',
        'ArticleHeader' => 'Varchar',
        'ArticleContent' => 'HTMLText',
        'SortOrder'=>'Int',
        'ImagePosition' => 'Varchar'
    );

    private static $has_one = array(
        'ArticleImage' => 'Image',
        'ArticlePage' => 'ArticlePage'
    );

    private static $singular_name = 'Artikel';
    private static $plural_name = 'Artikel';

    private static $default_sort = 'SortOrder';

    public function getCMSFields(){
        $fields = parent::getCMSFields();
        $fields->removeByName('SortOrder');
        $fields->removeByName('AboutPageID');
        $fields->addFieldToTab('Root.Main',
            DropdownField::create('ImagePosition', _t('Article.ImagePosition', 'Bild Position'), $this->getImagePositions())
        );
        return $fields;
    }

    function getCMSValidator() {
        return new RequiredFields(array('ArticleContent'));
    }

    public function fieldLabels($includerelations = true) {
        $labels = parent::fieldLabels();
        $labels['Title']	           = _t('Article.Title', 'Titel des Artikels');
        $labels['ArticleHeader']	   = _t('Article.ArticleHeader', 'Überschrift');
        $labels['ArticleContent']      = _t('Article.ArticleContent', 'Seiteninhalt');
        $labels['ArticleImage']        = _t('Article.ArticleImage', 'Bild');
        return $labels;
    }

    private static $summary_fields = array(
        'Title',
        'ArticleHeader'
    );

    public function getImagePositions(){
        return array(
            'left' => _t('Article.ImageLeft', 'Bild links'),
            'right' => _t('Article.ImageRight', 'Bild rechts')
        );
    }
}