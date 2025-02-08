# What is an SVG?
- ***Explains Scalable Vector Graphics (SVGs), their advantages, and how to create them. The lesson includes coding snippets for SVG creation and highlights their use in NFTs for on-chain storage.***

### What is an SVG?
- To understand what an `SVG` is, we'll dive right into a helpful tutorial from our friends at [W3Schools](https://www.w3schools.com/graphics/svg_intro.asp). SVG stands for `Scalable Vector Graphics`. In 'simple' terms, SVG is a way to define images in a two-dimensional space using XML coded tags with specific parameters.

**SVG Example:**

```js
<html>
  <body>
    <h1>My first SVG</h1>

    <svg width="100" height="100" xmlns="http://www.w3.org/2000/svg">
      <circle
        cx="50"
        cy="50"
        r="40"
        stroke="green"
        stroke-width="4"
        fill="yellow"
      />
    </svg>
  </body>
</html>
```

- SVGs are awesome because they maintain their quality, no matter what size you make them. If you stretch a traditional image file like a .jpg or .png, they become pixelated and lose clarity. SVGs don’t suffer from this issue because they’re scalable. They’re defined within an exact parameter, thus maintaining their quality regardless of scale.
- I encourage you to play with editing the parameters in the **[W3Schools SVG Demo](https://www.w3schools.com/graphics/tryit.asp?filename=trysvg_myfirst)**. Experiment with how the different parameters can change your image! There's lots of documentation on that website detailing all the tags and features one could add to an SVG.

## Creating Your Own SVG
0 Let's look at how we can create our own simple SVG, right in our IDE. Create the file `img/example.svg`. We can use the `<svg>` tag to define what our simple image will look like.

```js
<svg xmlns="http://www.w3.org/2000/svg" width="500" height="500">
  <text x="200" y="250" fill="white">
    Hi! You decoded this!{" "}
  </text>
</svg>
```
