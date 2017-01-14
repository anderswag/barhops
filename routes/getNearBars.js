"use strict";
const request = require('request');
const express = require('express');
const router  = express.Router();


function getTheStuff(queryParams){

  let data = {
    location: '-33.8670522,151.1957362',
    radius:'500',
    type:'bar'
  }

  let url = `https://maps.googleapis.com/maps/api/place/nearbysearch/json?location=${data.location}&radius=${data.radius}&type=${data.type}&key=AIzaSyCYzKfH2z2nEiecJN5m0fhiEGayUxnKFMM`;

  request(url, function (error, response, body) {
    if (!error && response.statusCode == 200) {
      console.log(body) // Show the HTML for the Google homepage.
    }
  })

}

//stuff//

module.exports = (knex) => {

  router.get("/", (req, res) => {
    res.json(getTheStuff('test'));
  });

  return router;
}