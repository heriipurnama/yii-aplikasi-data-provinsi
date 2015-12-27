<?php
/* @var $this KotaController */
/* @var $model Kota */



$this->breadcrumbs=array(
	'Kota'=>array('index'),
	'create',
);

$idProp=$_GET['provinsi_id'];

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#kota-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>

<h2>Manajemen Data Kota</h2>



<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div><!-- search-form -->

	<?php 
			$prop=Provinsi::model()->findByPk($idProp);
			$this->renderPartial('_provinsi', array('model'=>$prop,));
	?>
<div class="row-button-2">
	<?php echo CHtml::link(CHtml::image(Yii::app()->request->baseUrl.'/images/search.png'),'#',
	     array('class'=>'search-button','title'=>'Pencarian Data')); ?>
     <?php echo  CHtml::link(CHtml::image(Yii::app()->request->baseUrl.'/images/pencil.png'),
         array('create','provinsi_id'=>$idProp),
         array('title'=>'Menambah Data')) ;?>
</div>
<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'kota-grid',
	'dataProvider'=>$model->searchKota($idProp),
	'filter'=>$model,
	'columns'=>array(
		array(
			'header'=>'NO',
			'value'=>'$this->grid->dataProvider->pagination->currentPage*
			   $this->grid->dataProvider->pagination->pagesize + ($row+1)',
			   'htmlOptions'=>array('width'=>'3%',
			   	'style'=>'text-align:center'),
			),
		array(
               'name'=>'nm_kota',
               'header'=>'NAMA KOTA',
               'type'=>'raw',
               'value'=>'CHtml::encode($data->nm_kota)',
               'htmlOptions'=>array('width'=>''),
			),
		array(
			'class'=>'CButtonColumn',
		),
	),
)); ?>
