<?= $this->extend('layouts/default') ?>

<?= $this->section('title') ?><?= lang('Profileimage.delete_title') ?><?= $this->endSection() ?>

<?= $this->section('content') ?>

<hl class="title" ><?= lang('Profileimage.delete_title') ?></hl>

<p><?= lang('Profileimage.are_you_sure') ?></p>

<?= form_open("/profileimage/delete") ?>


<div class="field is-grouped mt-4">
    <div class="control">
    <button class="button is-danger"><?= lang('Profileimage.yes') ?></button>
    </div>
    
 <div class="control">   
    <a class="button is-danger" href="<?= site_url("/profile/show") ?>"><?= lang('Profileimage.cancel') ?></a>

</form>

<?= $this->endSection() ?>