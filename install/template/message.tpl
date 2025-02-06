<?php if(count($message_types) > 0) { ?>
    <script type="text/javascript">
    $(document).ready(function(){
        $("#messages").find("div").each(function (i) {
              $(this).click(function() {
                $(this).fadeOut("slow");
              });
        });
    });
    </script>
    <?php foreach($message_types as $type=>$messages) { ?>
        <div class="alert alert-<?php echo $type; ?>">
            <button type="button" class="close" data-dismiss="alert">&times;</button>
            <?php if(count($messages) > 1) { ?>
                <?php foreach($messages AS $message) { ?>
                    <p><?php echo $message; ?></p>
                <?php } ?>
            <?php } else { ?>
                <?php foreach($messages AS $message) { ?>
                    <?php echo $message; ?>
                <?php } ?>
            <?php } ?>
        </div>
    <?php } ?>
<?php } ?>