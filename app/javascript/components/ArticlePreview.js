import React from 'react';
import PropTypes from 'prop-types';

const ArticlePreview = ({articles}) => {
  return(
    <div className="article-preview__container">
      {articles.map((article) =>
      <div className="article-preview__preview">
        <h3 className="article-preview__heading">{article.title}</h3>
        <div className="article-preview__publish">
          <p className="article-preview__publish--author" >{article.author}</p>
          {/* This is a sting => Need to get it to a date object to be able to manipulate it */}
          <p className="article-preview__publish--date">{article.published_date}</p>
          {console.log(article.published_date)}
        </div>
        <p className="article-preview__text">{article.article_text}</p>
        <p className="article-preview__article-link">Read More...</p>
      </div>
      )}
    </div>
  )
}

export default ArticlePreview;
