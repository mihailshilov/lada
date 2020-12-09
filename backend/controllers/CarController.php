<?php

namespace backend\controllers;

use Yii;
use common\models\Car;
use common\models\CarSearch;
use yii\web\Controller;
use yii\web\NotFoundHttpException;
use yii\filters\VerbFilter;

/**
 * CarController implements the CRUD actions for Car model.
 */
class CarController extends Controller
{
    /**
     * {@inheritdoc}
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::class,
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
        ];
    }

    /**
     * Lists all Car models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new CarSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Car model.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Car model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Car();

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('create', [
            'model' => $model,
        ]);
    }

    /**
     * Updates an existing Car model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->save()) {
            return $this->redirect(['view', 'id' => $model->id]);
        }

        return $this->render('update', [
            'model' => $model,
        ]);
    }

    /**
     * Deletes an existing Car model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     * @throws NotFoundHttpException if the model cannot be found
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }


    public function actionImport()
    {
        set_time_limit(600);

        $oldcars = Car::find()->all();

        foreach ($oldcars as $car)
        {
            $cars[$car->id] = $car->vin;
        }

        $fileName = Yii::getAlias('@app/import/report.xlsx');
        $data = \moonland\phpexcel\Excel::import($fileName, [
            'setFirstRecordAsKeys' => false,
            'setIndexSheetByName' => false,
        ]);

        unset($data[1]);

        $n = $u = 0;

        foreach ($data as $k => $v)
        {

            if (!in_array($v['A'], $cars)){

                $car = new Car();

                $car->vin = $v['A'];
                $car->title = 'Lada' . $v['B'];
                $car->model_id = 1;
                $car->compl_id = $v['C'];
                $car->compl_desc = $v['D'];
                $car->color_id = $v['E'];
                $car->color_name = $v['F'];
                if($v['G'] == 'Да') $car->color_met = 1;
                $car->year = str_replace(',', '', $v['H']);
                $car->gearbox = $v['I'];
                $car->engine = $v['J'];
                $car->options = $v['K'];
                $car->status = $v['L'];
                $car->price = str_replace(',', '', $v['M']);

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
                $car->title = 'Lada' . $v['B'];
                $car->compl_id = $v['C'];
                $car->compl_desc = $v['D'];
                $car->color_id = $v['E'];
                $car->color_name = $v['F'];
                if($v['G'] == 'Да') $car->color_met = 1;
                $car->year = str_replace(',', '', $v['H']);
                $car->gearbox = $v['I'];
                $car->engine = $v['J'];
                $car->options = $v['K'];
                $car->status = $v['L'];
                $car->price = str_replace(',', '', $v['M']);

                if ($car->save()){
                    $u++;
                } else {
                    $err[] = $car->errors;
                }


            }

            //sleep(1);

        }

        return $this->render('import', [
            'new' => $n,
            'up' => $u,
            'xls' => $err
        ]);

    }

    /**
     * Finds the Car model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Car the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Car::findOne($id)) !== null) {
            return $model;
        }

        throw new NotFoundHttpException('The requested page does not exist.');
    }
}
