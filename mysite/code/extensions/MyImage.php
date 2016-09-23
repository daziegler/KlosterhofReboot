<?php

/**
 * Created by PhpStorm.
 * User: Daniel
 * Date: 18.07.2016
 * Time: 16:22
 */
class MyImage extends DataExtension{
    private static $belongs_to = array(
        'Page' => 'Page',
        'Article' => 'Article',
        'ContactPage' => 'ContactPage'
    );
}