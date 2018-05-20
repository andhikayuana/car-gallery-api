<?php
// Routes

// $app->get('/[{name}]', function ($request, $response, $args) {
//     // Sample log message
//     $this->logger->info("Slim-Skeleton '/' route");
//
//     // Render index view
//     return $this->renderer->render($response, 'index.phtml', $args);
// });

// TODO: pengembangan menggunakan authorization, group, pakai NotORM ::Yuana 9-1-2015
// penambahan tabel user, penambahan token

$app->get('/', function ($request, $response, $args) {
    $res = $response->withHeader('Content-type','application/json');
    $res->write(json_encode([
            'name'      => 'Cars API',
            'version'   => '1.0.0'
    ]));
    return $res;
});

//list all car
$app->get('/cars', function($request, $response, $args){
    $res = $response->withHeader('Content-type', 'application/json');
    try {
        $db = $this->db;
        $st = $db->query('SELECT * FROM tb_car');
        $dt = $st->fetchAll(PDO::FETCH_OBJ);
        $res->write(json_encode([
            'status' => 'success',
            'data'   => $dt
        ]));
    } catch (Exception $e) {
        $res->write(json_encode([
            'status' => 'failed',
            'msg'    => $e->getMessage()
        ]));
    }
    return $res;
});

//get single car
$app->get('/cars/{id}', function($request, $response, $args){
    $res = $response->withHeader('Content-type', 'application/json');
    try {
        $db = $this->db;
        $id = $args['id'];
        $st = $db->query('SELECT * FROM tb_car WHERE id='.$id);
        $dt = $st->fetch(PDO::FETCH_OBJ);
        if (empty($dt)) {
            $dt = "Tidak ada data";
        }
        $res->write(json_encode([
            'status' => 'success',
            'data'   => $dt
        ]));
    } catch (Exception $e) {
        $res->write(json_encode([
            'status' => 'failed',
            'msg'    => $e->getMessage()
        ]));
    }
    return $res;
});

//insert new car
$app->post('/cars', function($request, $response, $args){
    $res = $response->withHeader('Content-type', 'application/json')
                    ->withHeader('Access-Control-Allow-Origin', '*')
                    ->withHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE')
                    ->withHeader('Access-Control-Allow-Headers', 'Authorization, Content-Type, Accept, X-Requested-With')
                    ->withHeader('Access-Control-Allow-Credentials','true');;
    try {
        $db = $this->db;
        $input = $request->getParsedBody();
        $st = $db->prepare('INSERT INTO tb_car (year, make, model) VALUES (:year, :make, :model)');
        $st->bindParam(':year', $input['year']);
        $st->bindParam(':make', $input['make']);
        $st->bindParam(':model', $input['model']);
        $st->execute();
        $res->write(json_encode([
            'status' => 'success',
            'data'   => $input
        ]));
    } catch (Exception $e) {
        $res->write(json_encode([
            'status' => 'failed',
            'msg'    => $e->getMessage()
        ]));
    }
    return $res;
});

//update car
$app->put('/cars/{id}', function($request, $response, $args){
    $res = $response->withHeader('Content-type', 'application/json');
    try {
        $db = $this->db;
        $input = $request->getParsedBody();
        $st = $db->prepare('UPDATE tb_car SET year=:year, make=:make, model=:model WHERE id=:id');
        $st->bindParam(':year', $input['year']);
        $st->bindParam(':make', $input['make']);
        $st->bindParam(':model', $input['model']);
        $st->bindValue(':id', $args['id']);
        $st->execute();
        $res->write(json_encode([
            'status' => 'success',
            'data'   => $input
        ]));
    } catch (Exception $e) {
        $res->write(json_encode([
            'status' => 'failed',
            'msg'    => $e->getMessage()
        ]));
    }
    return $res;
});

//delete car
$app->delete('/cars/{id}', function($request, $response, $args){
    $res = $response->withHeader('Content-type', 'application/json');
    try {
        $db = $this->db;
        $st = $db->prepare('DELETE FROM tb_car WHERE id=:id');
        $st->bindValue(':id', $args['id']);
        $st->execute();
        $res->write(json_encode([
            'status'=>'success'
        ]));
    } catch (Exception $e) {
        $res->write(json_encode([
            'status' => 'failed',
            'msg'    => $e->getMessage()
        ]));
    }
    return $res;
});

//test koneksi
$app->get('/koneksi', function($request, $response, $args){
    $res = $response->withHeader('Content-type', 'application/json')
            ->withHeader('Access-Control-Allow-Origin', '*')
            ->withHeader('Access-Control-Allow-Methods', 'GET, POST, PUT, DELETE')
            ->withHeader('Access-Control-Allow-Headers', 'Authorization, Content-Type, Accept, X-Requested-With')
            ->withHeader('Access-Control-Allow-Credentials','true');
    try {
        if ($this->db) {
            $res->write(json_encode([
                'success'   => true,
                'msg'       => 'Berhasil koneksi ke database'
            ]));
        }
    } catch (Exception $e) {
        $res->write(json_encode([
            'success'   => false,
            'msg'       => 'Gagal koneksi ke database',
            'error'     => $e->getMessage()
        ]));
    }
    return $res;
});

$app->get('/uploader/test', function($request, $response, $args) {
    var_dump($this->uploader);
    return 'hai';
});
