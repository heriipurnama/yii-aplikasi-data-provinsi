<?php
/* @var $this KotaController */
/* @var $model Kota */

$this->breadcrumbs=array(
	'Kota'=>array('index'),
	'Create',
);
$idProp=$_GET['provinsi_id'];

?>

<h1>Create Kota</h1>

<?php $this->renderPartial('_form',
 array('model'=>$model,'provinsi_id'=>$idProp)); ?>