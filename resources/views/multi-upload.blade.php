<html lang="en">

<head>
    <title>Laravel Multiple File Upload Example</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.js"></script>
</head>

<body>
    <div class="container mt-3">
        <h2>Laravel Multiple Image Upload</h2>
        @if(session('success'))
        <div class="alert alert-success">
            {{ session('success') }}
        </div>
        @endif
        <form method="post" action="{{ url('store-multiple') }}" enctype="multipart/form-data">
            {{ csrf_field() }}

            <div class="input-group control-group increment mt-2 mb-3">
                <input type="file" name="filename[]" class="form-control">
                <div class="input-group-btn">
                    <button class="btn btn-success" type="button"><i class="glyphicon glyphicon-plus"></i>Add</button>
                </div>
            </div>
            <div class="clone hide mt-2 mb-3">
                <div class="control-group input-group" style="margin-top:10px">
                    <input type="file" name="filename[]" class="form-control">
                    <div class="input-group-btn">
                        <button class="btn btn-danger" type="button"><i class="glyphicon glyphicon-remove"></i>
                            Remove</button>
                    </div>
                </div>
            </div>

            <button type="submit" class="btn btn-success" style="margin-top:10px">Upload Images</button>

        </form>
    </div>

    <script type="text/javascript">
    $(document).ready(function() {

        $(".btn-success").click(function() {
            var html = $(".clone").html();
            $(".increment").after(html);
        });

        $("body").on("click", ".btn-danger", function() {
            $(this).parents(".control-group").remove();
        });

    });
    </script>
</body>

</html>