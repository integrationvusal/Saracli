<?php

namespace app\controllers;

use app\helpers\app;
use app\models\phonebook;
use jewish\backend\CMS;
use jewish\backend\base\controller;
use jewish\backend\helpers\security;
use jewish\backend\helpers\utils;
use jewish\backend\helpers\view;

if (!defined("_VALID_PHP")) {die('Direct access to this location is not allowed.');}

class phonebook_controller extends controller {

	private static $runtime = [];

	public static function action_list() { // 2016-09-12
		self::$layout = 'common_layout';
		view::$title = CMS::t('menu_item_phonebook_list');

		$params = [];

		$page = intval(@$_GET['page']);
		phonebook::$curr_pg = (empty($page)? 1: $page);

		$params['alldata'] = phonebook::getList();
		$params['count'] = phonebook::$items_amount;
		$params['total'] = phonebook::$pages_amount;
		$params['current'] = phonebook::$curr_pg;
		$params['limit'] = phonebook::$pp;

		$params['link_sc'] = utils::trueLink(['controller', 'action', 'q']);
		$params['link_return'] = view::create_url('phonebook', 'list');

		$params['canWrite'] = CMS::hasAccessTo('phonebook/list', 'read');

		return self::render('phonebook_list', $params);
	}

	public static function action_edit() { // 2016-09-13
		self::$layout = 'common_layout';
		view::$title = CMS::t('menu_item_phonebook_edit');
		$_GET['id'] = abs((int)$_GET['id']);

		$params = [];

		$params['canWrite'] = CMS::hasAccessTo('phonebook/edit', 'write');
		$params['link_back'] = (empty($_GET['return'])? view::create_url('phonebook', 'list'): $_GET['return']);
		$params['data'] = phonebook::get($_GET['id']);

		if (isset($_POST['edit'])) {
			$params['op'] = phonebook::edit($_GET['id']);
			if ($params['op']['success']) {
				utils::redirect($params['link_back']);
			}
		}

		return self::render('phonebook_edit', $params);
	}

	public static function action_delete() { // 2016-10-18

		$params = [];
		$params['canWrite'] = CMS::hasAccessTo('phonebook/delete', 'write');
		$params['link_back'] = (empty($_GET['return'])? view::create_url('phonebook', 'list'): $_GET['return']);

		$_POST['delete'] = abs((int)$_POST['delete']);

		$deleted = false;
		if ($params['canWrite'] && !empty($_POST['delete']) ) {
			$deleted = phonebook::delete($_POST['delete']);
			$params['op']['success'] = $deleted;
			$params['op']['message'] = 'del_'.($deleted? 'suc': 'err');
			utils::redirect($params['link_back']);
		}
		else	return CMS::resolve('base/404');
	}


	public static function action_ajax_sort(){
		if(!utils::isAjax() || !CMS::hasAccessTo('phonebook/ajax_sort', 'write')){
			header('HTTP/1.1 404 Not Found');
			return self::render('404');
		}

		header('Content-type: application/json; charset=utf-8');

		$response['message'] = 'Action is not registered.';

		if (isset($_POST['items']) && is_array($_POST['items'])) {
			$opts = phonebook::ajax_sort($_POST['items'], $_POST['cal_start']);
			$response['success'] = true;
			$response['message'] = 'Successfully sorted phonebook';
			if ($opts) 	$response['data'] = (int)$opts;
		}

		return json_encode($response);
	}

}

?>