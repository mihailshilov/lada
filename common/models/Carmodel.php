<?php

namespace common\models;

use Yii;

/**
 * This is the model class for table "model".
 *
 * @property int $id
 * @property string $title
 * @property string $description
 * @property string $keywords
 * @property string $img
 */
class Carmodel extends \yii\db\ActiveRecord
{
    /**
     * {@inheritdoc}
     */
    public static function tableName()
    {
        return 'model';
    }

    public function getCar()
    {
        return $this->hasMany(Car::class, ['model_id' => 'id']);
    }

    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['title'], 'required'],
            [['title', 'description', 'keywords', 'img', 'code'], 'string', 'max' => 255],
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
            'img' => 'Изображение',
            'code' => 'Код модели',
            'description' => 'Description',
            'keywords' => 'Keywords',
            'count' => 'Количество машин',
        ];
    }
}
