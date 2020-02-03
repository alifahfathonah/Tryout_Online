
<div class="content-wrapper">
    <section class="content">
        <div class="row">

        <div class="box box-primary">
            <div class="box-header with-border">
              <h3 class="box-title">Quick Example</h3>
            </div>
            <!-- /.box-header -->
            <!-- form start -->
            <form role="form" method="post" action="<?php echo base_url();?>ujian/profile" id="soalBox">
              <div class="box-body">
                <div class="form-group">
                  <p>
                    <?php
                        echo $soal->soal;
                    ?>
                  </p>
                </div>
                <div class="form-group">
                  <div class="radio">
                    <label>
                      <input type="radio" name="jawaban" id="optionsRadios1" value="a" checked="">
                      <?php
                        echo  $soal->a;
                      ?>
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="jawaban" id="optionsRadios2" value="b">
                      <?php
                        echo  $soal->b;
                      ?>
                    </label>
                  </div>
                  <div class="radio">
                    <label>
                      <input type="radio" name="jawaban" id="optionsRadios3" value="c">
                      <?php
                        echo  $soal->c;
                      ?>
                    </label>
                  </div>
                </div>
              </div>
              <!-- /.box-body -->

              <div class="box-footer">
                <?php
                  if($this->session->userdata('nomer') != 1){
                    echo '
                      <button type="submit" class="btn btn-primary" id="back">Back</button>
                    ';
                  }
                ?>

                <?php
                  if($this->session->userdata('nomer') == $last_number){
                    echo '
                    <button type="submit" class="btn btn-success" id="finish">Finish</button>
                    ';
                  } else {
                    echo '
                      <button type="submit" class="btn btn-primary" id="next">Next</button>
                    ';
                  }
                ?>
                

              </div>
            </form>
          </div>

        </div>    
    </section>
</div>

<script>

  $('#next').click(function(){
    event.preventDefault();
    $('#soalBox').attr('action', "<?php echo base_url(); ?>ujian/next").submit();
  });


  $('#back').click(function(){
    $('#soalBox').attr('action', "<?php echo base_url(); ?>ujian/back").submit();
  });

  $('#finish').click(function(){
    $('#soalBox').attr('action', "<?php echo base_url(); ?>topup/finish").submit();
  });
</script>