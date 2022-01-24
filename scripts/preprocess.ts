import split from "split";
import fs from "fs";

const trails = "data/S_USA.TrailNFS_Publish/S_USA.TrailNFS_Publish.geojson";
const roads = "data/S_USA.RoadCore_FS/S_USA.RoadCore_FS.geojson";

const trailsOut = fs.createWriteStream("data/trails.geojson");
const roadsOut = fs.createWriteStream("data/roads.geojson");

fs.createReadStream(trails)
  .pipe(split(JSON.parse))
  .on("data", (feat) => {
    trailsOut.write(
      `${JSON.stringify({
        ...feat,
        properties: {},
      })}\n`
    );
  });

fs.createReadStream(roads)
  .pipe(split(JSON.parse))
  .on("data", (feat) => {
    roadsOut.write(
      `${JSON.stringify({
        ...feat,
        properties: {},
      })}\n`
    );
  });
