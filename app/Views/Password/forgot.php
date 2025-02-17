<?= $this->extend('layouts/default') ?>

<?= $this->section('title') ?><?= lang('Password.title') ?><?= $this->endSection() ?>

<?= $this->section('content') ?>

<hl class="title"><?= lang('Password.title') ?></hl>

<?= form_open("/$locale/password/processforgot/") ?>

<div class="container">

<div class="fields">
    <div> 
        <label class="label" for="email"><?= lang('Password.email') ?></label>     
        <input class="input" type="text" name="email" id="email" value="<?= old('email') ?>">

    </div>
    
<div class="field is-grouped">    
    <div class="control">
    <button class="button is-success"><?= lang('Password.send') ?></button>
    </div>
</form>

<?= $this->endSection() ?>