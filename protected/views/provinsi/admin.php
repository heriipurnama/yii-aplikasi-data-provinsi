<?php
/* @var $this ProvinsiController */
/* @var $model Provinsi */



$this->menu=array(
	array('label'=>'List Provinsi', 'url'=>array('index')),
	array('label'=>'Create Provinsi', 'url'=>array('create')),
);

Yii::app()->clientScript->registerScript('search', "
$('.search-button').click(function(){
	$('.search-form').toggle();
	return false;
});
$('.search-form form').submit(function(){
	$('#provinsi-grid').yiiGridView('update', {
		data: $(this).serialize()
	});
	return false;
});
");
?>
<?php 
 $this->beginWidget('zii.widgets.jui.CJuiDialog',array(
    'id'=>'helpdialog',
    'options'=>array(
    	'title'=>'Petunjuk',
    	'auotoOpen'=>'false',
    	'modal'=>'true',
    	'show'=>'slide',
    	'hide'=>'slide',
    	),
    ));
    echo $this->renderPartial('_help');
    $this->endWidget(); 
?>

<h2>Pemeliharaan Tabel Provinsi</h2>
<div class="row-button-2">
	<?php echo CHtml::link(CHtml::image(Yii::app()->request->baseUrl.'/images/search.png'),'#',
	    array('class'=>'search-button','title'=>'Pencarian Data')); ?>
	<?php echo CHtml::link(CHtml::image(Yii::app()->request->baseUrl.'/images/info.png'),'#',
         array('title'=>'Petunjuk','onclick'=>"$('#helpdialog').dialog('open')",)); ?>
     <?php echo  CHtml::link(CHtml::image(Yii::app()->request->baseUrl.'/images/pencil.png'),array('create'),array('title'=>'Menambah Data')) ;?>
</div>

<?php echo CHtml::link('Cari','#',array('class'=>'search-button')); ?>
	<div class="search-form" style="display:none">
<?php $this->renderPartial('_search',array(
	'model'=>$model,
)); ?>
</div>

<div class="search-form" style="display:none">
	<?php $this->renderPartial('_search',array(
	      'model'=>$model,)); ?>
</div>

<?php 
	echo CHtml::link('Tambah Provinsi',array('provinsi/create'));
?>

<?php $this->widget('zii.widgets.grid.CGridView', array(
	'id'=>'provinsi-grid',
	'dataProvider'=>$model->search(),
	'filter'=>$model,
	'columns'=>array(
		array(
			'header'=>'NO',
			'value'=>'$this->grid->dataProvider->pagination->currentPage*
			   $this->grid->dataProvider->pagination->pagesize + ($row+1)',
			   'htmlOptions'=>array('width'=>'3%',
			   	'style'=>'text-align:center'),
			),
		'provinsi',
		array(
			'header'=>'Aksi',
			'class'=>'CButtonColumn',
		),
	),
)); ?>
