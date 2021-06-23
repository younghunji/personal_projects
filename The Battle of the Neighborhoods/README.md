# The Battle of the Neighborhoods

I used *k*-means clustering to **determine the optimal location(s) within Helsinki, the capital of Finland, for opening a new café**.

The criteria used to determine the "optimal" neighborhood cluster was based on several business assumptions. Namely, I made the assumption that the optimal location has the following neighborhood characteristics:

* High median income among inhabitants
* High population density
* High proportion of people between the ages of 18 to 34
* High concentration of restaurants
* Low concentration of pre-existing cafés


Population-related data was obtained from the **Tilastokeskus** (or **Statistics Finland**) website, and venue-related data was obtained using the **Foursquare API**. After gathering neighborhood data regarding each of the above, I used *k*-means clustering to segment the neighborhoods into four clusters. The decision to use *k* = 4 clusters was based on a comparison of *inertia* and *silhouette* scores across a range of *k* values.

Finally, I ranked the emerging clusters based on the **new café's estimated annual revenue in each cluster**. The annual revenue estimated were computed using a formula based on a set of mathematical assumptions regarding each of the features' impact on revenue. According to the results, the neighborhood cluster consisting of **Sörnäinen** and **Punavuori** are the optimal new café locations in Helsinki.

A more detailed discussion of the problem background, assumptions (business and mathematical), limitations, and future directions are included in a separate report.

Click to view: [ *[notebook](https://nbviewer.jupyter.org/github/bloonsinthesky/Data-Science-Portfolio/blob/main/The%20Battle%20of%20the%20Neighborhoods/The%20Battle%20of%20the%20Neighborhoods.ipynb) | [report](https://bloonsinthesky.github.io/pdf/The%20Battle%20of%20Neighborhoods%20-%20Report.pdf) | [slides](https://bloonsinthesky.github.io/pdf/The%20Battle%20of%20the%20Neighborhoods%20-%20Slides.pdf)* ]
