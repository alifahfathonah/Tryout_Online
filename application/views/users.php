<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        <i class="fa fa-users"></i> Buat Soal
       
      </h1>
    </section>
    <section class="content">
        <div class="row">
            <div class="col-xs-12 text-right">
                <div class="form-group">
                    <a class="btn btn-primary" href="<?php echo base_url(); ?>addNew"><i class="fa fa-plus"></i> Buat Baru</a>
                </div>
            </div>
        </div>
        
        <?php 
            if($this->session->flashdata('success') != null){
                echo '
                <div class="alert alert-success">
                '.$this->session->flashdata('success').'
                </div>
                ';
            }
        ?>
        
        <?php 
            if($this->session->flashdata('fail') != null){
                echo '
                <div class="alert alert-danger">
                '.$this->session->flashdata('fail').'
                </div>
                ';
            }
        ?>
        
        <div class="row">
            <div class="col-xs-12">
              <div class="box">
                <div class="box-header">
                    <h3 class="box-title">Daftar Soal</h3>
               
                              </div>
                            </div>
                        </form>
                    </div>
                </div><!-- /.box-header -->
                <div class="box-body table-responsive no-padding">
                  <table class="table table-hover">
                    <tr>
                        <th>Id Soal</th>
                        <th>Soal</th>
                        <th>A</th>
                        <th>B</th>
                        <th>C</th>
                        <th>Kunci Jawaban</th>
                        <th class="text-center">Aksi</th>
                    </tr>
                    <?php
                    if(!empty($soal))
                    {
                        foreach($soal as $record)
                        {
                    ?>
                    <tr>
                        <td><?php echo $record->id_soal ?></td>
                        <td><?php echo $record->soal ?></td>
                        <td><?php echo $record->a ?></td>
                        <td><?php echo $record->b ?></td>
                        <td><?php echo $record->c ?></td>
                        <td><?php echo $record->knc_jawaban ?></td>
                        <td class="text-center">
                            
                            <a class="btn btn-sm btn-info" data-toggle="modal" data-target="#exampleModal<?php echo $record->id_soal; ?>" title="Edit"><i class="fa fa-pencil"></i></a>
                            <a class="btn btn-sm btn-danger" href="<?php echo base_url(); ?>user/deleteSoal/<?php echo $record->id_soal; ?>" title="Delete"><i class="fa fa-trash"></i></a>
                        </td>
                    </tr>
                    <?php
                        }
                    }
                    ?>
                  </table>
                  
                </div><!-- /.box-body -->
                <div class="box-footer clearfix">
                    <?php echo $this->pagination->create_links(); ?>
                </div>
              </div><!-- /.box -->
            </div>
        </div>
    </section>
</div>

<?php
$this->load->helper("form");
foreach($soal as $record){
echo '

<!-- Modal -->
<div class="modal fade" id="exampleModal'.$record->id_soal.'" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Edit soal id '.$record->id_soal.'</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form role="form" id="addUser" action="'.base_url().'user/updateSoal/'.$record->id_soal.'" method="post" role="form">
          <div class="box-body">
              <div class="row">
                  <div class="col-md-8">                              
   
                      <div class="form-group">
                          <label for="email">Soal</label>
                          <input type="text" class="form-control required" id="email" name="soal" value="'.$record->soal.'">
                      </div>
                  
            
                      <div class="form-group">
                          <label for="password">Opsi A</label>
                          <input type="text" class="form-control required" id="password" name="a" value="'.$record->a.'">
                      </div>
                
                      <div class="form-group">
                          <label for="cpassword">Opsi B</label>
                          <input type="text" class="form-control required" id="cpassword" name="b" value="'.$record->b.'">
                      </div>

                      <div class="form-group">
                          <label for="password">Opsi C</label>
                          <input type="text" class="form-control required" id="password" name="c" value="'.$record->c.'">
                      </div>
                
             
                      <div class="form-group">
                          <label for="mobile">Kunci Jawaban </label>
                          <input type="text" class="form-control required" id="mobile" name="knc_jawaban" value="'.$record->knc_jawaban.'">
                      </div>
                  </div>
          </div><!-- /.box-body -->

          <div class="box-footer">
              <input type="submit" class="btn btn-primary" value="Submit" />
          </div>
      </form>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
</div>

';
}

?>



<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/common.js" charset="utf-8"></script>
<script type="text/javascript">
    jQuery(document).ready(function(){
        jQuery('ul.pagination li a').click(function (e) {
            e.preventDefault();            
            var link = jQuery(this).get(0).href;            
            var value = link.substring(link.lastIndexOf('/') + 1);
            jQuery("#searchList").attr("action", baseURL + "userListing/" + value);
            jQuery("#searchList").submit();
        });
    });
</script>
