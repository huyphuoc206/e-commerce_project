package com.ecostore.service;

import com.ecostore.model.CommentModel;

import java.util.List;

public interface ICommentService {
    List<CommentModel> findOneByStatus(int status);

    List<CommentModel> findAll();

    CommentModel findOneById(long id);

    CommentModel insert(CommentModel commentModel);

    CommentModel update(CommentModel commentModel);

    boolean delete(long [] ids);
}
