<?php

/**
 * Created by PhpStorm.
 * User: Daniel
 * Date: 18.07.2016
 * Time: 14:45
 */
class MyFile extends DataExtension{
    private static $has_one = array(
        'MenuPage' => 'MenuPage'
    );
}