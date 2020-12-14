<?php

/* @var $this yii\web\View */

$this->title = 'Статистика';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="row">

    <div class="col-md-3 col-sm-6 col-xs-12">
        <div class="info-box">
            <span class="info-box-icon bg-aqua"><i class="fa fa-car"></i></span>

            <div class="info-box-content">
                <span class="info-box-text">Автомобилей</span>
                <span class="info-box-number"><?= $cars ?><small></small></span>
            </div>

        </div>

    </div>
</div>
