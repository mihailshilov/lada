<?php

use yii\helpers\Html;
use yii\grid\GridView;
use yii\widgets\Pjax;
/* @var $this yii\web\View */
/* @var $searchModel common\models\CarSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Автомобили';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="car-index">
    <?php Pjax::begin(); ?>
    <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
    <div class="row">
        <div class="col-md-12">
            <div class="box">
                <div class="box-header with-border">
                    <?= Html::a('Добавить автомобиль', ['create'], ['class' => 'btn btn-success']) ?>
                </div>
                <div class="box-body">

                    <?= GridView::widget([
                        'dataProvider' => $dataProvider,
                        'filterModel' => $searchModel,
                        'columns' => [
                            //['class' => 'yii\grid\SerialColumn'],

                            'id',
                            'title',
                            //'model_id',
                            [
                                'attribute' => 'model_id',
                                'value' => function($data){
                                    return $data->model->title ?? '-';
                                },
                                'format' => ['raw'],
                            ],
                            //'compl_id',
                            'vin',
                            //'compl_desc:ntext',
                            //'color_id',
                            //'color_name',
                            //'color_met',
                            //'year',
                            //'engine',
                            //'options:ntext',
                            //'gearbox',
                            //'status',
                            'price',

                            ['class' => 'yii\grid\ActionColumn'],
                        ],
                    ]); ?>
                    <?php Pjax::end(); ?>
                </div>
            </div>
        </div>
    </div>
