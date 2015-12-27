<?php
	Yii::import('zii.widgets.CPortlet');

	class adminMenu extends CPortlet{
		public $title='Admin';

		protected function renderContent(){
			$this->render('adminMenu');
		}
	}

?>