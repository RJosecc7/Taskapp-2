<?= $this->extend('layouts/default') ?>

<?= $this->section('title') ?><?= lang('Password.title_reset') ?><?= $this->endSection() ?>

<?= $this->section('content') ?>

<hl class="title"><?= lang('Password.title_reset') ?></hl>

<?php if (session()->has('errors')): ?>
    <ul>
       <?php foreach(session('errors') as $error): ?>
           <li>><?= $error ?></li>
        <?php endforeach; ?>
    </ul>
<?php endif ?>    

<?= form_open("/password/processreset/$token") ?>

<div class="field">
       <label class="label" for="password"><?= lang('Password.password') ?></label>
       <input class="input" type="password" name="password">
</div>

       

<div class="field">>
       <label for="password_confirmation"><?= lang('Password.repeat.password') ?></label>
       <input type="password" name="password_confirmation">



<div class="field is-grouped">
       <div class="control">
       <button class="button is-success"><?= lang('Password.reset_password') ?></button>
      
      

       </form>

</div>

<?= $this->endSection() ?>