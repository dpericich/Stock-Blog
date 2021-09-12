import React from 'react';

const deleteArticle = (id) => {
    fetch(`/articles/${id}`, {method: 'DELETE' })
    .then(data => console.log(response));
    console.log("I was hit")
}

const printHello = () => {
  alert("Hello World!")
}

const Article = ({title, author, date, text, id}) => {
  return(
    <div>
      <h1>{title}</h1>
      <p>{author}</p>
      <p>{date}</p>
      <p>{text}</p>
      <a href={`${id}/edit`}>Edit</a> |
      {/* <a href='/articles' onClick={deleteArticle(id)}> Delete</a> */}
      <button onClick={(id) => deleteArticle(id)}>Delete Article</button>
      {/* <a href={`/articles/${id}`} onClick={deleteArticle()}> Delete</a> */}
      <button onClick={printHello}>Click me!</button>
      <button onClick={console.log("I am me")}>Test</button>
    </div>
  )
}

export default Article;
