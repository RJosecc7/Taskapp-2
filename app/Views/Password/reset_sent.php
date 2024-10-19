<?= $this->extend('layouts/default') ?>

<?= $this->section('title') ?><?= lang('Password.title_reset') ?><?= $this->endSection() ?>

<?= $this->section('content') ?>

<hl class="title" ><?= lang('Password.title_reset') ?></hl>

<p><?= lang('Password.reset_requested') ?></p>

<?= $this->endSection() ?>