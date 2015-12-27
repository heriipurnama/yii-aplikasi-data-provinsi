<?php 
   $this->widget('zii.widgets.CDetailView',array(
   'data'=>$model,
   'attributes'=>array(
   	   array('label'=>'ID',
   	   	      'value'=>$model->id,
   	   	      ),
       array('label'=>'Provinsi',
       	     'value'=>$model->provinsi,
       	   ),
   	   ),
   	));?>



