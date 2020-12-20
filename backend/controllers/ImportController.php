<?php


namespace backend\controllers;


use common\models\Car;
use common\models\Carmodel;
use Yii;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

class ImportController extends Controller
{

    public function behaviors()
    {
        return [
            'access' => [
                'class' => AccessControl::className(),
                'rules' => [
                    [
                        'actions' => ['login', 'error'],
                        'allow' => true,
                    ],
                    [
                        'actions' => ['logout', 'index'],
                        'allow' => true,
                        'roles' => ['@'],
                    ],
                ],
            ],
            'verbs' => [
                'class' => VerbFilter::className(),
                'actions' => [
                    'logout' => ['post'],
                ],
            ],
        ];
    }



    public function actionIndex()
    {
        set_time_limit(600);

        $oldcars = Car::find()->all();

        foreach ($oldcars as $car)
        {
            $cars[$car->id] = $car->vin;
        }

        $fileName = Yii::getAlias('@app/import/report.xls');
        $data = \moonland\phpexcel\Excel::import($fileName, [
            'setFirstRecordAsKeys' => false,
            'setIndexSheetByName' => false,
        ]);

        unset($data[1]);

        $n = $u = $d = 0;

        $models = Carmodel::find()->asArray()->all();

        foreach ($models as $model)
        {
            if(strpos($model['code'], ',') !== false){
                $codes = explode(', ', $model['code']);

                foreach($codes as $code)
                {
                    $complectations[$code] = [
                        'title' => $model['title'],
                        'modelId' => $model['id']
                    ];
                }

            } else {
                $complectations[$model['code']] = [
                    'title' => $model['title'],
                    'modelId' => $model['id']
                ];
            }

        }

//        echo "<pre>";
//        print_r($complectations);
//        echo "<pre>";

//        $complectations = [
//            '21901' => 1,
//            '21902' => 1,
//            '21907' => 1,
//            '21911' => 2,
//            '21912' => 2,
//            '21917' => 2,
//            '21921' => 3,
//            '21922' => 3,
//            '21927' => 3,
//            '21941' => 4,
//            '21942' => 4,
//            '21947' => 4,
//            '21941Cross' => 5,
//            '21947Cross' => 5,
//            '21901Y' => 6,
//            '21902Y' => 6,
//            '21907Y' => 6,
//            '21907D' => 7,
//            'GFL11' => 8,
//            'GFL33' => 8,
//            'GFL44' => 8,
//            'GFL11Cross' => 9,
//            'GFL33Cross' => 9,
//            'GFL44Cross' => 9,
//            'GFK11' => 10,
//            'GFK33' => 10,
//            'GFK44' => 10,
//            'GFK11Cross' => 11,
//            'GFK33Cross' => 11,
//            'GFK44Cross' => 11,
//            'GFLA1' => 12,
//            'GFLS3' => 13,
//            'GAB11' => 14,
//            'GAB32' => 14,
//            'GAB33' => 14,
//            'GAB33Cross' => 15,
//            'GAB44Cross' => 15,
//            'KS035' => 16,
//            'KS045' => 16,
//            'RS035' => 16,
//            'RS045' => 16,
//            'KS045Cross' => 17,
//            'RS045Cross' => 17,
//            'FS035' => 18,
//            'FS045' => 18,
//            'KSA45' => 19,
//            'KSA45Cross' => 20,
//            'FSA45' => 21,
//            '21230' => 22,
//            '21230Off-road' => 23,
//            '21214' => 24,
//            //'21214' => 25,
//        ];

        $err = [];

        foreach ($data as $k => $v)
        {

            if (!in_array($v['A'], $cars)){

                $car = new Car();

                $car->vin = $v['A'];

                $c_id = $v['C'];
                if (strpos($v['E'], 'Cross') !== false || strpos($v['E'], 'Кросс') !== false) $c_id = $v['C'] . 'Cross';
                if (strpos($v['E'], 'Off-road') !== false) $c_id = $v['C'] . 'Off-road';

                if (isset($complectations[$c_id])){
                    $car->model_id = $complectations[$c_id]['modelId'];
                    $car->title = 'Lada ' . $complectations[$c_id]['title'];
                } else {
                    $car->model_id = 28;
                    $car->title = 'Lada ' . 'no name';
                }

                $car->compl_id = $v['D'];
                $car->compl_desc = $v['E'];
                $car->color_id = $v['F'];
                $car->color_name = $v['G'];
                if($v['H'] == 'Да') $car->color_met = 1;
                $car->year = str_replace(',', '', $v['I']);
                $car->gearbox = $v['J'];
                $car->engine = $v['K'];
                $car->options = $v['L'];
                $car->status = $v['M'];
                $car->price = str_replace(',', '', $v['N']);

                if ($car->save()) $n++;

            } else {

//                $car = Car::find()
//                    ->where(['vin' => $v['A']])
//                    ->with('')
//                    ->one();

                $carId = array_search($v['A'], $cars);

                $car = Car::findOne($carId);

                //$car->vin = $v['A'];
                $c_id = $v['C'];
                if (strpos($v['E'], 'Cross') !== false || strpos($v['E'], 'Кросс') !== false) $c_id = $v['C'] . 'Cross';
                if (strpos($v['E'], 'Off-road') !== false) $c_id = $v['C'] . 'Off-road';

                if (isset($complectations[$c_id])){
                    $car->model_id = $complectations[$c_id]['modelId'];
                    $car->title = 'Lada ' . $complectations[$c_id]['title'];
                } else {
                    $car->model_id = 28;
                    $car->title = 'Lada ' . 'no name';
                }


                $car->compl_id = $v['D'];
                $car->compl_desc = $v['E'];
                $car->color_id = $v['F'];
                $car->color_name = $v['G'];
                if($v['H'] == 'Да') $car->color_met = 1;
                $car->year = str_replace(',', '', $v['I']);
                $car->gearbox = $v['J'];
                $car->engine = $v['K'];
                $car->options = $v['L'];
                $car->status = $v['M'];
                $car->price = str_replace(',', '', $v['N']);

                if ($car->save()){
                    $u++;
                } else {
                    $err[] = $car->errors;
                }


            }

            //sleep(1);
            $newcars[] = $v['A'];

        }

        foreach ($cars as $k0 => $v0)
        {
            if(!in_array($v0, $newcars)){

                $this->findModel($k0)->delete();
                $d++;
            }
        }

        return $this->render('index', [
            'new' => $n,
            'up' => $u,
            'del' => $d,
            'xls' => $err
        ]);

    }

    protected function findModel($id)
    {
        if (($model = Car::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}

