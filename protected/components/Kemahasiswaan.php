<?php
	Yii::import('zii.widgets.CPortlet');

	class kemahasiswaan extends CPortlet{
		public $title='Kepegawaian';

		protected function renderContent(){
			$this->render('kemahasiswaan');
		}
	}

?>