<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model common\models\Carmodel */

$this->title = 'Изменить модель: ' . $model->title;
$this->params['breadcrumbs'][] = ['label' => 'Модели', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->title, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Изменить';
?>
<div class="row">
    <div class="col-md-12">
        <div class="box">
            <div class="box-header with-border">

            </div>
            <div class="box-body">
                <div class="category-update">

                <?= $this->render('_form', [
                    'model' => $model,
                ]) ?>

                </div>
            </div>
        </div>
    </div>
</div>

