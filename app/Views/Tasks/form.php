<div class="field">

    <label class="label" for="description"><?= lang('Tasks.delete.description') ?></label>
    
    <div class="control">
       <input class="input" type="text" name="description" id="description">
    </div>  

</div>    
    
    value="<?= old('description', esc($task->description)) ?>">
</div>
