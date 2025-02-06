<select multiple="multiple" name="<?php echo $name; ?>[]" class="select_multiple <?php echo $class; ?>"<?php echo $attributes; ?>>
    <?php echo $options; ?>
</select>
<?php if(isset($limit)) { ?>
    <p class="help-block"><?php echo $lang['limit']; ?>: <span id="<?php echo $name; ?>_tree_check_limit">0</span> / <?php echo $limit; ?></p>
    <script type="text/javascript">
    $(document).ready(function() {
        var last_valid_selection = null;
        $("#<?php echo $name; ?>").change(function(event) {
            if($(this).val().length > <?php echo $limit; ?>) {
                $("#<?php echo $name; ?>_tree_check_limit").addClass("text-error");
                alert("<?php echo $limit_over; ?>");
                $(this).val(last_valid_selection);
            } else {
                $("#<?php echo $name; ?>_tree_check_limit").removeClass("text-error");
                last_valid_selection = $(this).val();
            }
            $("#<?php echo $name; ?>_tree_check_limit").text($(this).val().length);
        });
    });
    </script>
<?php } ?>
