<?php

namespace App\Widgets;

use Arrilot\Widgets\AbstractWidget;

use App\Menu;

class MenuWidget extends AbstractWidget
{

    protected $config = [];

    public function run()
    {
        return $this->tree();
    }

    private function tree($datas = [], $i=0){

    	if(empty($datas)) $datas = Menu::getMenu();

    	$html =$i?'<ul class="dropdown-menu">':'<ul class="nav navbar-nav">';

    	foreach ($datas as $data) {

    		$_url = $data['sef'] == 'home'?'/':route($data['type'],['sef'=>$data['sef']]);

    		if(isset($data['children'])){
    			$html.='<li class="dropdown">
                            <a href="'.$_url.'" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">'.$data['name'].'<span class="caret"></span></a>
                            '.$this->tree($data['children'], ++$i).'
                        </li>';
    		}
    		else
    			$html.='<li><a href="'.$_url.'">'.$data['name'].'</a></li>';
    	}
    	return $html.'</ul>';
    }

}
