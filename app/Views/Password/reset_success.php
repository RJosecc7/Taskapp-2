<?= $this->extend('layouts/default') ?>

<?= $this->section('title') ?><?= lang('Password.title_reset') ?><?= $this->endSection() ?>

<?= $this->section('content') ?>

<hl class="title"><?= lang('Password.reset') ?></hl>

<p><?= lang('Password.reset_success') ?></p>

<p><a href="<?= site_url("/$locale/login") ?>"><?= lang('Login.title') ?></p>

<?= $this->endSection() ?>