<?php
/* @var $this KotaController */
/* @var $dataProvider CActiveDataProvider */


$this->menu=array(
	array('label'=>'Create Kota', 'url'=>array('create')),
	array('label'=>'Tampilkan Kota', 'url'=>array('tampilkan')),
	array('label'=>'Tampilkan', 'url'=>array('tampilKota')),
	array('label'=>'Daftar Provinsi', 'url'=>array('daftarProvinsi')),
	array('label'=>'Manage Kota', 'url'=>array('admin')),
);
?>

<h1>Kota</h1>

<?php $this->widget('zii.widgets.CListView', array(
	'dataProvider'=>$dataProvider,
	'itemView'=>'_view',
)); ?>
