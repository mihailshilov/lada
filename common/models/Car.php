<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "car".
 *
 * @property int $id
 * @property string $title
 * @property int $model_id
 * @property int $compl_id
 * @property string $compl_desc
 * @property int $color_id
 * @property string $color_name
 * @property int $color_met
 * @property string $year
 * @property string $engine
 * @property string $options
 * @property string $gearbox
 * @property string $status
 * @property string $price
 */
class Car extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'car';
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title', 'model_id', 'compl_id', 'compl_desc', 'color_id', 'year', 'engine', 'options'], 'required'],
            [['model_id', 'compl_id', 'color_id', 'color_met'], 'integer'],
            [['compl_desc', 'options'], 'string'],
            [['price'], 'number'],
            [['title', 'color_name', 'gearbox', 'status'], 'string', 'max' => 255],
            [['year'], 'string', 'max' => 4],
            [['engine'], 'string', 'max' => 128],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function attributeLabels()
    {
        return [
            'id' => 'ID',
            'title' => 'Заголовок',
            'model_id' => 'Model ID',
            'compl_id' => 'Compl ID',
            'compl_desc' => 'Описание комплектации',
            'color_id' => 'Color ID',
            'color_name' => 'Цвет',
            'color_met' => 'Металик',
            'year' => 'Год выпуска',
            'engine' => 'Двигатель',
            'options' => 'Опции',
            'gearbox' => 'Коробка передач',
            'status' => 'Статус',
            'price' => 'Цена',
        ];
    }
}