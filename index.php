<?php
    require_once(__DIR__."/config/config.php");
    require_once(__DIR__."/config/function.php");
    $title = 'HOME | '.$ĐGB->site('tenweb');
    require_once(__DIR__."/public/client/Header.php");
    require_once(__DIR__."/public/client/Nav.php");


if(empty($_SESSION['ref']))
{
    $_SESSION['ref'] = NULL;
}

if(isset($_POST['timthecao'])){
        if(!empty($_POST['value'])){
            $baodz = " SELECT * FROM `card_auto` WHERE seri = '".$_POST['value']."' OR pin = '".$_POST['value']."' ORDER BY id DESC LIMIT 1 ";
        }
    }
    else {
        $baodz = " SELECT * FROM `card_auto` ORDER BY id DESC LIMIT 50 ";
    }

?>


<div class="main-content">

            <div class="page-content">
                <div class="container-fluid">
                        <div class="row mt-10">
                            <div class="col-lg-12">
                                <div class="card border border-danger">
                                    <div class="card-body pt-2 pb-1 pl-1 pr-1">
                                        <marquee>
                                            <span class="text-danger font-size-15"><h5><strong><span style="color: #e03e2d;"><?=$ĐGB->site('thongbao_chay');?></span></strong></h5></span>
                                        </marquee>
                                    </div>
                                </div>
                            </div>
                        </div>


<div class="card border border-danger">
    <div class="card-header bg-transparent border-danger">
        <h5 class="my-0 text-danger"><b><i class="mdi mdi-information-outline me-2"></i>THÔNG BÁO</b></h5>
    </div>
    <div class="card-body py-1">
        <p><?=$ĐGB->site('thongbao');?></p>
    </div>
</div>

<div class="card border border-danger">
    <div class="card-header bg-transparent border-danger">
        <h5 class="my-0 text-danger"><b><i class="mdi mdi-cards-outline me-2"></i>ĐỔI THẺ CÀO</b></h5>
    </div>
    <div class="card-body row py-1">
        <div class="col-lg-12">
            <div class="form-group">
                <div id="notification-field"></div>
            </div>
        </div>
       
        						
					 <div id="thongbao"></div>						
        <div class="col-lg-12" id="divGachthecao">
           <div class="gachthe row mt-1" data-row="1">
                <div class="col-lg-3 mb-3">
                    <select id="loaithe" class="telco form-control" data-row="1"></select>
                </div>
                <div class="col-lg-3 mb-3">
                        <select id="menhgia" class="charging-amount form-control" data-row="1"><option value="">Vui lòng chọn loại thẻ</option></select>
                </div>
                <div class="col-lg-3 mb-3">
                    <input type="text" id="pin" class="pin form-control" data-row="1" placeholder="Nhập mã thẻ cào">
                </div>
                <div class="col-lg-3 mb-3">
                    <div class="input-group">
                        <input type="text" id="seri" class="serial form-control" data-row="1" placeholder="Nhập số serial thẻ">
                       
                        <button class="btn btn-danger" type="button" id="btnAddChild" data-toggle="tooltip" title="Thêm dòng mới">
                            <i class="mdi mdi-card-plus-outline"></i>
                        </button>
                    </div>
                </div>
            </div>
             </div>
        <input type="hidden" id="token" value="<?=$getUser['token'];?>">
        	 <div class="col-lg-12 mb-3 text-center">
                <button class="btn btn-danger" type="submit" id="NapTheAuto">Đổi thẻ cào</button>
                </div>
    </div>
</div>
 <?php if(isset($_SESSION['username'])) { ?>
<div class="card border border-danger">
        <div class="card-header bg-transparent border-danger">
            <h5 class="my-0 text-danger"><b><i class="mdi mdi-history me-2"></i>LỊCH SỬ ĐỔI THẺ CÀO</b></h5>
        </div>
         <form action="" method="POST">
        <div class="card-body row py-1">
           
            
            <div class="col-lg-2">
                <div class="form-group mb-3">
                    <input type="text" class="form-control" name="value" placeholder="Mã thẻ cào/Serial...">
                </div>
            </div>
            <div class="col-lg-2 col-md-12 col-xs-12">
                <div class="form-group mb-3">
                    <div class="input-group text-right">
                        <button class="btn btn-danger" type="submit" name="timthecao"><i class="mdi mdi-clipboard-text-search-outline"></i> Tìm kiếm</button>
                        
                    </div>
                </div>
                </div>
            <div class="col-lg-12 col-md-12 col-xs-12 table-responsive">
                <div class="form-group mb-3">
                    <table id="datatable2" class="table table-bordered table-striped table-hover">
                                                                      <br>

                                <thead>
                                    <tr>
                                        <th>STT</th>
                                            <th>LOẠI THẺ</th>
                                            <th>MỆNH GIÁ</th>
                                            <th>THỰC NHẬN</th>
                                            <th>SERI</th>
                                            <th>PIN</th>
                                            <th>THỜI GIAN</th>
                                            <th>CẬP NHẬT</th>
                                            <th>TRẠNG THÁI</th>
                                    </tr>
                                </thead>
                                <tbody>
                                                                   
                                       <?php
                                    $i = 0;
                                    foreach($ĐGB->get_list(" SELECT * FROM `card_auto` WHERE `username` = '".$getUser['username']."' ORDER BY id DESC ") as $row){
                                    ?>
                                        <tr>
                                            <td><?=$i++;?></td>
                                            <td><?=$row['loaithe'];?></td>
                                            <td><b style="color: green;"><?=format_cash($row['menhgia']);?></b></td>
                                            <td><b style="color: red;"><?=format_cash($row['thucnhan']);?></b></td>
                                            <td><?=$row['seri'];?></td>
                                            <td><?=$row['pin'];?></td>
                                            <td><span class="label label-danger"><?=$row['thoigian'];?></span></td>
                                            <td><span class="label label-primary"><?=$row['capnhat'];?></span></td>
                                            <td><?=status($row['trangthai']);?></td>
                                        </tr>
                                         <?php }?>
                                                                    </tbody>
                                                                    
                            </table>
                        </div>
    </div>
</div>
    
</div>

<?php }?>
<div class="card border border-danger">
    <div class="card-header bg-transparent border-danger">
        <h5 class="my-0 text-danger"><b><i class="mdi mdi-cash-multiple me-2"></i>CHIẾT KHẤU ĐỔI THẺ NGÀY <?php echo date("d-m-Y");?></b></h5>
    </div>
    <div class="card-body py-1">
        <!-- Nav tabs -->
									<ul class="nav nav-pills nav-justified" role="tablist">
<?php foreach($list_loaithe as $loaithe) { ?>
                    <li class="nav-item mx-1 mb-1 waves-light">
                                <li class="<?=$loaithe == 'VIETTEL' ? 'active' : '';?>">
                                                                 <li class="active">
                                    <a data-bs-toggle="tab" href="#discount-<?=$loaithe;?>"  class="nav-link ">
                                                <span class="title"><?=$loaithe;?></span>
                                    </a>
                                </li>
                                <?php }?>
                            </ul>
                            <div class="tab-content" style="padding-top: 20px;">
                                <?php foreach($list_loaithe as $loaithe) { ?>
                                <div class="table-responsive tab-pane fadess in <?=$loaithe == 'VIETTEL' ? 'active' : '';?>"
                                    id="discount-<?=$loaithe;?>">
                                    <table class="table table-bordered table-striped">
                                        <thead>
                                            <tr>
                                               <th>Nhóm thành viên</th>
                                                    <th style="text-align: center">10.000đ</th>
                                                    <th style="text-align: center">20.000đ</th>
                                                    <th style="text-align: center">30.000đ</th>
                                                    <th style="text-align: center">50.000đ</th>
                                                    <th style="text-align: center">100.000đ</th>
                                                    <th style="text-align: center">200.000đ</th>
                                                    <th style="text-align: center">300.000đ</th>
                                                    <th style="text-align: center">500.000đ</th>
                                                    <th style="text-align: center">1.000.000đ</th>
                                             </tr>
                                    </thead>
                                    <tbody>
                                                <tr>
                                                    <th>Đại lý</th>
                                                        <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '10000' ")['ck'];?>%
                                                        </td>
                                                        <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '20000' ")['ck'];?>%
                                                        </td>
                                                        <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '30000' ")['ck'];?>%
                                                        </td>
                                                        <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '50000' ")['ck'];?>%
                                                        </td>
                                                        <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '100000' ")['ck'];?>%
                                                        </td>
                                                        <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '200000' ")['ck'];?>%
                                                        </td>
                                                        <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '300000' ")['ck'];?>%
                                                        </td>
                                                        <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '500000' ")['ck'];?>%
                                                        </td>
                                                        <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto_platinum` WHERE `loaithe` = '$loaithe' AND `menhgia` = '1000000' ")['ck'];?>%
                                                       </td>
                                                </tr>
                                                <tr>
                                                    <th>Thành viên</th>
                                               <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '10000' ")['ck'];?>%
                                                </td>
                                                <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '20000' ")['ck'];?>%
                                                </td>
                                                <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '30000' ")['ck'];?>%
                                                </td>
                                                <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '50000' ")['ck'];?>%
                                                </td>
                                                <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '100000' ")['ck'];?>%
                                                </td>
                                                <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '200000' ")['ck'];?>%
                                                </td>
                                                <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '300000' ")['ck'];?>%
                                                </td>
                                                <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '500000' ")['ck'];?>%
                                                </td>
                                                <td style="text-align: center;"><?=$ĐGB->get_row("SELECT * FROM `ck_card_auto` WHERE `loaithe` = '$loaithe' AND `menhgia` = '1000000' ")['ck'];?>%
                                                </td>
                                            </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <?php }?>
                                        
                                    </div>
                                </div>
                            </div>
                            
<script src="https://code.jquery.com/jquery-3.6.0.min.js" integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4=" crossorigin="anonymous"></script><script type="text/javascript">
                         $(document).ready(function() {
                            setTimeout(e => {
                                GetCard24()
                            }, 0)
                        });
                        $('#btnAddChild').click(function() {
                            getchildordercardbuy();
                        });

                        function getchildordercardbuy() {
                            var totalRow = $('#divGachthecao .gachthe').length;
                            if (totalRow > 10) {
                                alert('Bạn chỉ có thể gửi lên hệ thống tối đa 10 thẻ 1 lần');
                            } else {
                                $.ajax({
                                    url: "<?=BASE_URL('assets/ajaxs/divGachthecao.php');?>",
                                    method: "GET",
                                    success: function(response) {
                                        $('#divGachthecao').append(response);
                                    }
                                });
                            }
                        }

                        $(document).on('change', '.telco', function() {
                            var dataRow = $(this).data('row');
                            $('.charging-amount[data-row="' + dataRow + '"]').empty();
                            $.ajax({
                                url: "<?=BASE_URL('assets/ajaxs/menhgia.php');?>",
                                method: "GET",
                                data: {
                                    loaithe: $(this).val(),
                                    type: $(this).find(':selected').data('type')
                                },
                                success: function(response) {
                                    $('.charging-amount[data-row="' + dataRow + '"]').html(
                                        response);
                                }
                            });
                        });
                        $("#NapTheAuto").click(function() {
                            proccessListOrderCardBuy();
                        });

                        function proccessListOrderCardBuy() {
                            var lstDataSubmit = [];
                            var i = 1;
                            $('#divGachthecao .gachthe').each(function() {
                                var dataRow = $(this).data('row');
                                var dataOne = {
                                    loaithe: $('select.telco[data-row="' + dataRow + '"] :selected').val(),
                                    menhgia: $('select.charging-amount[data-row="' + dataRow +
                                            '"] :selected').val() != undefined ?
                                        $('select.charging-amount[data-row="' + dataRow + '"] :selected')
                                        .val() : '',
                                    type: $('select.telco[data-row="' + dataRow + '"] :selected').data(
                                        'type'),
                                    pin: $('input.pin[data-row="' + dataRow + '"]').val(),
                                    serial: $('input.serial[data-row="' + dataRow + '"]').val(),
                                };
                                lstDataSubmit.push(dataOne);
                            });
                            if (lstDataSubmit.length > 0) {
                                $("#loading_box").show();
                                $.ajax({
                                    url: "<?=BASE_URL('assets/ajaxs/NapThe2.php');?>",
                                    type: 'POST',
                                    data: {
                                        data: lstDataSubmit,
                                        type: 'NapTheAuto',
                                        token: $("#token").val(),
                                    },
                                    beforeSend: function() {
                                        $('#NapTheAuto').html('<i class="fa fa-spinner fa-spin"></i> Loading...');
                                        $('#NapTheAuto').prop('disabled', true);
                                    },
                                    success: function(res) {
                                        $('#NapTheAuto').html(
                                            'Đổi thẻ cào'
                                        );
                                        $('#NapTheAuto').prop('disabled', false);
                                        $("#thongbao").html(res);
                                        var str2 = "alert-success";
                                        if (res.indexOf(str2) != -1) {
                                            setTimeout(function() {
                                                window.location.href =
                                                    '<?=BASE_URL('');?>';
                                            }, 3000);
                                        }
                                        $("#loading_box").hide();
                                    }
                                });
                            }
                        }

                        function GetCard24() {
                            $.ajax({
                                url: "<?=BASE_URL('api/loaithe.php');?>",
                                method: "GET",
                                success: function(response) {
                                    $("#loaithe").html(response);
                                }
                            });
                        }
                        </script>


                



<script>
$(function() {
    $("#datatable").DataTable({
        "responsive": false,
        "autoWidth": false,
    });
});
</script>


<?php 
    require_once(__DIR__."/public/client/Footer.php");
?>