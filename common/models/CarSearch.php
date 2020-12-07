<?php

namespace common\models;

use yii\base\Model;
use yii\data\ActiveDataProvider;
use common\models\Car;

/**
 * CarSearch represents the model behind the search form of `common\models\Car`.
 */
class CarSearch extends Car
{
    /**
     * {@inheritdoc}
     */
    public function rules()
    {
        return [
            [['id', 'model_id', 'compl_id', 'color_id', 'color_met'], 'integer'],
            [['title', 'compl_desc', 'color_name', 'year', 'engine', 'options', 'gearbox', 'status', 'vin'], 'safe'],
            [['price'], 'number'],
        ];
    }

    /**
     * {@inheritdoc}
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = Car::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
        ]);

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'id' => $this->id,
            'model_id' => $this->model_id,
            'compl_id' => $this->compl_id,
            'color_id' => $this->color_id,
            'color_met' => $this->color_met,
            'vin' => $this->vin,
            'price' => $this->price,
        ]);

        $query->andFilterWhere(['like', 'title', $this->title])
            ->andFilterWhere(['like', 'compl_desc', $this->compl_desc])
            ->andFilterWhere(['like', 'color_name', $this->color_name])
            ->andFilterWhere(['like', 'year', $this->year])
            ->andFilterWhere(['like', 'vin', $this->vin])
            ->andFilterWhere(['like', 'engine', $this->engine])
            ->andFilterWhere(['like', 'options', $this->options])
            ->andFilterWhere(['like', 'gearbox', $this->gearbox])
            ->andFilterWhere(['like', 'status', $this->status]);

        return $dataProvider;
    }
}
