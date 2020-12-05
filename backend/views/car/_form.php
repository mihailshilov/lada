<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model common\models\Car */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="car-form">

    <?php $form = ActiveForm::begin(); ?>

    <?= $form->field($model, 'title')->textInput(['maxlength' => true]) ?>

    <?//= $form->field($model, 'model_id')->textInput() ?>

    <div class="form-group field-product-category_id has-success">
        <label class="control-label" for="product-category_id">Модель</label>
        <select id="product-category_id" class="form-control" name="Car[model_id]" aria-invalid="false">

            <?= \app\components\MenuWidget::widget([
                'tpl' => 'select_product',
                'model' => $model,
                'cache_time' => 0,
            ]) ?>

        </select>
        <div class="help-block"></div>
    </div>

    <?= $form->field($model, 'compl_id')->textInput() ?>

    <?= $form->field($model, 'compl_desc')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'color_id')->textInput() ?>

    <?= $form->field($model, 'color_name')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'color_met')->textInput() ?>

    <?= $form->field($model, 'year')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'engine')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'options')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'gearbox')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'status')->textInput(['maxlength' => true]) ?>

    <?= $form->field($model, 'description')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'keywords')->textarea(['rows' => 6]) ?>

    <?= $form->field($model, 'price')->textInput(['maxlength' => true]) ?>

    <div class="form-group">
        <?= Html::submitButton('Сохранить', ['class' => 'btn btn-success']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
