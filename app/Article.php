<?php

namespace App;

//use Illuminate\Database\Eloquent\Model;

use Illuminate\Support\Facades\DB;

class Article
{
    private static $table = 'articles';

    public static function getContent($sef){
		return DB::select("SELECT t.text FROM menu m INNER JOIN ".self::$table." a ON m.ref_id = a.id INNER JOIN translates t ON a.id = t.ref_id AND t.ref_table ='".self::$table."' WHERE (t.fieldname = 'full' OR t.fieldname='title') AND m.sef = :sef AND lang = :lang AND a.is_published = '1' AND a.is_deleted='0'  ORDER BY t.fieldname DESC", [
			':lang' => 'az',
			':sef' => $sef
		]);
    }
}
