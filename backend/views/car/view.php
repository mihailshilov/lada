<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model common\models\Car */

$this->title = $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Cars', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
\yii\web\YiiAsset::register($this);
?>
<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">
                <?= Html::a('Изменить', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
                <?= Html::a('Удалить', ['delete', 'id' => $model->id], [
                    'class' => 'btn btn-danger',
                    'data' => [
                        'confirm' => 'Вы действительно хотите удалить товар?',
                        'method' => 'post',
                    ],
                ]) ?>
            </div>
            <div class="box-body">
                <div class="product-view">

                    <?= DetailView::widget([
                        'model' => $model,
                        'attributes' => [
                            'id',
                            'title',
                            'model_id',
                            [
                                'attribute' => 'model_id',
                                'value' => $model->model->title ?? '-',
                                'format' => ['raw'],
                            ],
                            'compl_id',
                            'compl_desc:ntext',
                            'color_id',
                            'color_name',
                            'color_met',
                            'year',
                            'engine',
                            'options:ntext',
                            'gearbox',
                            'status',
                            'price',
                        ],
                    ]) ?>

                </div>
            </div>
        </div>
    </div>
</div>

