<div class="container">
    <h1>Обновление завершено!</h1>
    <p>Добавлено: <?= $new ?></p>
    <p>Обновлено: <?= $up ?></p>
    <p>Удалено: <?= $del ?></p>
    <?php if($xls): ?>
    <pre>
        <?php print_r($xls); ?>
    </pre>
    <?php endif; ?>
</div>