<?php
	Yii::import('zii.widgets.CPortlet');

	class manajemenUser extends CPortlet{
		public $title='Manajemen User';

		protected function renderContent(){
			$this->render('manajemenUser');
		}
	}

?>