<?php


namespace backend\controllers;


use common\models\Car;
use Yii;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

class ImportController extends Controller
{
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


        $compls = [
            '21901' => 1,
            '21902' => 1,
            '21907' => 1,
            '21911' => 2,
            '21912' => 2,
            '21917' => 2,
            '21921' => 3,
            '21922' => 3,
            '21927' => 3,
            '21941' => 4,
            '21942' => 4,
            '21947' => 4,
            '21941Cross' => 5,
            '21947Cross' => 5,
            '21901Y' => 6,
            '21902Y' => 6,
            '21907Y' => 6,
            '21907D' => 7,
            'GFL11' => 8,
            'GFL33' => 8,
            'GFL44' => 8,
            'GFL11Cross' => 9,
            'GFL33Cross' => 9,
            'GFL44Cross' => 9,
            'GFK11' => 10,
            'GFK33' => 10,
            'GFK44' => 10,
            'GFK11Cross' => 11,
            'GFK33Cross' => 11,
            'GFK44Cross' => 11,
            'GFLА1' => 12,
            'GFLS3' => 13,
            'GAB11' => 14,
            'GAB32' => 14,
            'GAB33' => 14,
            'GAB33Cross' => 15,
            'GAB44Cross' => 15,
            'KS035' => 16,
            'KS045' => 16,
            'RS035' => 16,
            'RS045' => 16,
            'KS045Cross' => 17,
            'RS045Cross' => 17,
            'FS035' => 18,
            'FS045' => 18,
            'KSA45' => 19,
            'KSA45Cross' => 20,
            'FSA45' => 21,
            '21230' => 22,
            '21230Off-road' => 23,
        ];



        foreach ($data as $k => $v)
        {

            if (!in_array($v['A'], $cars)){

                $car = new Car();

                $car->vin = $v['A'];
                $car->title = 'Lada' . $v['C'];



                $model_id = 1;

                $car->model_id = $model_id;
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
                //$car->model_id = $v['B'];
                $car->title = 'Lada' . $v['C'];
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
