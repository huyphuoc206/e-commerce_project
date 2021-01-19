<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chỉnh sửa sản phẩm</title>
</head>
<body>
    <div class="content mt-3">
        <div class="animated fadeIn">
            <div class="row">
                <div class="col-md-12">
                    <div class="card">
                        <div class="card-header">
                            <strong class="card-title">Chỉnh sửa sản phẩm</strong>
                        </div>
                        <div class="card-body card-block">
                            <form action="" method="post" enctype="multipart/form-data" class="form-horizontal">
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="text-input"
                                                                     class=" form-control-label">Tên sản phẩm</label></div>
                                    <div class="col-12 col-md-9"><input type="text" id="text-input"
                                                                        name="text-input" class="form-control"></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="text-input"
                                                                     class=" form-control-label">Giá (VNĐ)</label></div>
                                    <div class="col-12 col-md-9"><input type="number" id="text-input"
                                                                        name="text-input" class="form-control"></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="text-input"
                                                                     class=" form-control-label">Giảm giá (%)</label></div>
                                    <div class="col-12 col-md-9"><input type="number" id="text-input"
                                                                        name="text-input" class="form-control"></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="textarea-input"
                                                                     class=" form-control-label">Mô tả</label></div>
                                    <div class="col-12 col-md-9"><textarea name="textarea-input" id="textarea-input"
                                                                           rows="9" class="form-control"></textarea></div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="select" class=" form-control-label">Thể
                                        loại</label></div>
                                    <div class="col-12 col-md-9">
                                        <select name="category" id="category" class="form-control">
                                            <option value="0">Lựa chọn</option>
                                            <option value="1">Ti vi</option>
                                            <option value="2">Tủ lạnh</option>
                                            <option value="3">Máy giặt</option>
                                        </select>
                                    </div>
                                </div>
                                <div class="row form-group">
                                    <div class="col col-md-3"><label for="select" class=" form-control-label">Nhà
                                        cung cấp</label></div>
                                    <div class="col-12 col-md-9">
                                        <select name="supplier" id="supplier" class="form-control">
                                            <option value="0">Lựa chọn</option>
                                            <option value="1">LG</option>
                                            <option value="2">Panasonic</option>
                                            <option value="3">Samsung</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="row form-group justify-content-start">
                                    <div class="col col-md-3"><label for="image" class="form-control-label">Hình
                                        ảnh</label></div>
                                    <div class="col-sm-12 col-md-2">
                                        <div class="custom-input-file"
                                             style="background-image: url('images/product/m4.jpg');">
                                            <label class="uploadPhoto">
                                                Chọn
                                                <input type="file" class="change-image" name="image" id="image">
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-2">
                                        <div class="custom-input-file"
                                             style="background-image: url('images/product/m8.jpg');">
                                            <label class="uploadPhoto">
                                                Chọn
                                                <input type="file" class="change-image" name="image" id="image">
                                            </label>
                                        </div>
                                    </div>
                                    <div class="col-sm-12 col-md-2">
                                        <div class="custom-input-file"
                                             style="background-image: url('images/product/mm2.jpg');">
                                            <label class="uploadPhoto">
                                                Chọn
                                                <input type="file" class="change-image" name="image" id="image">
                                            </label>
                                        </div>
                                    </div>
                                </div>
                                <!-- <div class="row form-group">
                                    <div class="col col-md-3"><label for="file-multiple-input"
                                            class=" form-control-label">Multiple File input</label></div>
                                    <div class="col-12 col-md-9"><input type="file" id="file-multiple-input"
                                            name="file-multiple-input" multiple="" class="form-control-file"></div>
                                </div> -->
                                <div class="mt-5 row justify-content-center">
                                    <button type="submit" class="btn btn-primary">
                                        <i class="fa fa-dot-circle-o"></i> Lưu
                                    </button>
                                    <button type="reset" class="btn btn-danger btn-sm">
                                        <i class="fa fa-ban"></i> Làm mới
                                    </button>
                                </div>
                            </form>
                        </div>


                    </div>
                </div>
            </div>
        </div><!-- .animated -->
    </div><!-- .content -->
</body>
</html>
