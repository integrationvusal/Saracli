<?php

namespace App\Http;

class Helper
{
    public static function filename($path)
    {
        return pathinfo($path, PATHINFO_FILENAME);
    }
}