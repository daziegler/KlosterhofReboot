<?php

/**
 * Created by PhpStorm.
 * User: ZSK
 * Date: 21.07.2016
 * Time: 19:12
 */
class ContactPage extends Page{
    private static $has_one = array(
        'LocationImage' => 'Image'
    );

    public function getCMSFields(){
        $fields = parent::getCMSFields();

        $fields->addFieldToTab(
            'Root.Main',
            $uploadField = new UploadField(
                $name = 'LocationImage',
                $title = 'Hier wird die Anfahrtskarte hochgeladen'
            )
        );

        return $fields;
    }
}
class ContactPage_Controller extends Page_Controller{
    
}