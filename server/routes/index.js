var express = require('express');
var router = express.Router();
var pool = require('../db')


router.get("/categories", function(req, res, next) {
  const sql = "SELECT c1.id, c1.name, c1.slug, c2.name as parentName, c2.id as parentId, c2.slug as parentSlug FROM categories c1 LEFT JOIN categories c2 ON c1.parent_id = c2.id"
  pool.query(sql,  (err, results, fields) => {
    const cats = results.filter(category => category.parentId === null)
      .map(parent => {
        return {
          id: parent.id,
          slug: parent.slug,
          name: parent.name,
          child_categories: results.filter(child => {
            return child.parentId === parent.id
          }).map(child => {
            return {
              id: child.id,
              slug: child.slug,
              name: child.name,
            }
          })
        }
      })
    res.json(cats)
  })
})

router.get('/category/:slug', (req, res, next) => {
  const sql = 'SELECT id, name FROM categories WHERE slug = ?'

  pool.query(sql, [req.params.slug], (err, results, fields) => {
    res.json(results[0])
  })
})

router.get('/listings/:categoryId', (req, res, next) =>{
  const sql = 'SELECT l.id, l.name, l.listing FROM listings l LEFT JOIN categories c ON l.category_id = c.id WHERE c.id=?'

  pool.query(sql, [req.params.categoryId], (err, results, fields) => {
    res.json(results)
  })
})

router.get('/listing/:id', (req, res, next) => {
  const sql = 'SELECT l.id, l.name, l.listing, c.slug FROM listings l LEFT JOIN categories c ON l.category_id = c.id WHERE l.id = ?'

  pool.query(sql, [req.params.id], (err, results, fields) => {
    res.json(results[0])
  })
})

router.post('/listing', (req, res, next) => {
  const sql = 'INSERT INTO listings (name, listing, category_id) VALUES (?, ?, ?)'

  pool.query(sql, [req.body.name, req.body.listing, req.body.category_id], (err, results, fields) => {
    res.json({
      id: results.insertID,
      name: req.body.name,
      listing: req.body.listing
    })
  })
})

module.exports = router