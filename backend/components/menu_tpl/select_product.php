<option
    value="<?= $category['id']?>"
    <?php if($category['id'] == $this->model->model_id) echo ' selected'; ?>
>
    <?= ' '.$tab.' '.$category['title']?>
</option>
<?php if(isset($category['children'])):?>

    <?= $this->getMenuHtml($category['children'], $tab . '-'); ?>

<?php endif; ?>