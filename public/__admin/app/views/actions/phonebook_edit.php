<?php

use jewish\backend\CMS;
use jewish\backend\helpers\utils;
use jewish\backend\helpers\view;

if (!defined("_VALID_PHP")) {die('Direct access to this location is not allowed.');}

?>


	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			<?=CMS::t('menu_item_phonebook_edit');?>
			<!-- <small>Subtitile</small> -->
		</h1>

		<!-- <ol class="breadcrumb">
			<li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
			<li class="active">Dashboard</li>
		</ol> -->
	</section>

	<!-- Content Header (Page header) -->
	<section class="contextual-navigation">
		<nav>
			<a href="<?=utils::safeEcho($link_back, 1);?>" class="btn btn-default"><i class="fa fa-arrow-left" aria-hidden="true"></i> <?=CMS::t('back');?></a>
		</nav>
	</section>


	<!-- Main content -->
	<section class="content">
		<?php
			if (!empty($op)) {
				if ($op['success']) {
					print view::notice($op['message'], 'success');
				} else {
					print view::notice(empty($op['errors'])? $op['message']: $op['errors']);
				}
			}
		?>

		<!-- Info boxes -->
		
		<div class="box">

			<form action="" method="post" enctype="multipart/form-data" class="form-std" role="form">
				<input type="hidden" name="CSRF_token" value="<?=$CSRF_token;?>" />

				<div class="box-body">
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label><?=CMS::t('phonebook_surname');?> *</label>
								<input type="text" name="surname" value="<?=isset($_POST['surname'])?utils::safeEcho($_POST['surname'], 1):$data['surname'];?>" class="form-control" autocomplete="off" />
							</div>
							<div class="form-group">
								<label><?=CMS::t('phonebook_name');?> *</label>
								<input type="text" name="name" value="<?=isset($_POST['name'])?utils::safeEcho($_POST['name'], 1):$data['name'];?>" class="form-control" autocomplete="off" />
							</div>
							<div class="form-group">
								<label><?=CMS::t('phonebook_patronymic');?> *</label>
								<input type="text" name="patronymic" value="<?=isset($_POST['patronymic'])?utils::safeEcho($_POST['patronymic'], 1):$data['patronymic'];?>" class="form-control" autocomplete="off" />
							</div>
							<div class="form-group">
								<label><?=CMS::t('phonebook_address');?> *</label>
								<input type="text" name="address" value="<?=isset($_POST['address'])?utils::safeEcho($_POST['address'], 1):$data['address'];?>" class="form-control" autocomplete="off" />
							</div>
							<div class="form-group">
								<label><?=CMS::t('phonebook_phones');?> *</label>
								<?php foreach(json_decode($data['phones']) as $phone){ ?>
									<input type="text" name="phones[]" value="<?=$phone?>" class="form-control" autocomplete="off" />
								<?php }?>
								
							</div>
							<div class="form-group">
								<label><?=CMS::t('phonebook_email');?> *</label>
								<input type="text" name="email" value="<?=isset($_POST['email'])?utils::safeEcho($_POST['email'], 1):$data['email'];?>" class="form-control" autocomplete="off" />
							</div>
							<div class="form-group">
								<label><?=CMS::t('phonebook_website');?> *</label>
								<input type="text" name="website" value="<?=isset($_POST['website'])?utils::safeEcho($_POST['website'], 1):$data['website'];?>" class="form-control" autocomplete="off" />
							</div>
						</div>
					</div>
				</div>
				<!-- /.box-body -->

				<div class="box-footer">
					<button type="submit" name="edit" value="1" class="btn btn-primary"><i class="fa fa-plus-circle" aria-hidden="true"></i> <?=CMS::t('edit');?></button>
					<a href="<?=utils::safeEcho($link_back, 1);?>"><button type="button" name="reset" value="1" class="btn btn-default"><i class="fa fa-refresh" aria-hidden="true"></i> <?=CMS::t('reset');?></button></a>
				</div>
			</form>
		</div>
		<!-- /.box -->

		<!-- /.info boxes -->
	</section>
	<!-- /.content -->