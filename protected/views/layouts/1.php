<?php
	if (Yii:app()->user->name=='admin')
		$this->widget('AdminMenu');
	else if (Yii:app()->user->name=='heri') {
		$this->widget('AdminMenu');
			$this->widget('MasterMenu');
			$this->widget('Kemahasiswaan');
		# code...
	}
			
	?>