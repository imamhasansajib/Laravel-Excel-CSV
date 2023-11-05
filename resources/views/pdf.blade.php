<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
    <title>Download PDF</title>
</head>

<body>
    <div class="container mt-3">
        <h2>{{ $title }}</h2>
        <h3>{{ $date }}</h3>
        <h4>Hello, I am <b>Imam Hasan Sajib</b>, student at <em><b>Premier University</b></em>. Currently in 6th
            semester.
        </h4>

        <p class="text-justify">Lorem ipsum dolor sit amet consectetur adipisicing elit. Quam nobis alias soluta cumque
            commodi sapiente illo tempore, voluptates eius consequatur incidunt iste quasi cupiditate eligendi aut
            ratione dolore? Praesentium iure, iste nulla alias porro a distinctio accusantium illo natus asperiores
            consequatur nisi sunt necessitatibus! Dolore, consectetur cumque. Magnam, nisi quasi. Eveniet, accusamus
            ipsum. Quisquam saepe vel odit commodi hic voluptatem! Facere exercitationem molestiae veniam obcaecati
            similique saepe nihil quasi, illum reprehenderit iste sit, necessitatibus earum. Culpa laborum ipsam ipsa
            iusto inventore perferendis sapiente, fugit obcaecati atque, magnam facilis quaerat libero enim ad aliquid
            maxime eius debitis earum error amet unde ex. Placeat quis illo sequi ab natus fugit, delectus corporis
            nihil necessitatibus quia veritatis, eligendi cupiditate aliquam! Odio est dolor placeat! Ab dignissimos,
            totam neque cupiditate sint accusantium voluptatum incidunt adipisci enim sit quod natus pariatur vel,
            assumenda odio. Repellendus sint exercitationem excepturi magni hic, quasi perferendis? Distinctio iusto
            aliquam veritatis nostrum illum cupiditate sint blanditiis atque, dicta numquam repellat repellendus
            provident fugiat fuga laborum aliquid non odit aspernatur maxime delectus. Quidem nesciunt a mollitia quos
            voluptas impedit quam atque pariatur, sapiente est ea commodi autem officiis? Laudantium, facilis
            consequatur nostrum neque in nobis et accusamus laboriosam voluptatibus labore, culpa tempora perferendis
            consequuntur debitis dignissimos placeat nulla? Praesentium mollitia velit nostrum, exercitationem expedita
            eos excepturi saepe deleniti eaque quas aperiam animi dolorum, nam culpa est eligendi! Voluptate minima hic
            beatae, quae dolores voluptas porro ipsa illum est odio modi ex officia ullam expedita sit nisi
            reprehenderit, aut natus obcaecati id.</p>

        <h5>You can download PDF from this page by just clicking on the button below!!!</h5>

        <a class="my-3 btn btn-success" href="{{ url('generate-pdf') }}">Download PDF</a>
    </div>
</body>


</html>
