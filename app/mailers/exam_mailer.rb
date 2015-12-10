class ExamMailer < ApplicationMailer

  def exam_notification category, user
    if (Lesson.search_by_category(category.id).search_by_user(user.id)).size < 1
      mail to: user.email, subject: t(:exam_notification)
    end
  end
end
