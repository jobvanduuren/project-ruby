require 'rails_helper'

describe "Viewing an individual student" do
  let(:student) { create :student }

  it "shows the student's information" do
    visit student_url(student)

    expect(page).to have_text(student.first_name)
    expect(page).to have_text(student.last_name)
    expect(page).to have_text(student.image_url)
    
  end
end
