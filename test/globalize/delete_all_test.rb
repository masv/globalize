# encoding: utf-8
require File.expand_path('../../test_helper', __FILE__)

class DeleteAllTest < MiniTest::Spec
  describe '.where.delete_all' do
    it "finds and deletes records" do
      post = Post.create(:title => 'title 1')
      Post.where(:title => 'title 1').delete_all
      assert_equal [], Post.all.load
    end
  end

  describe '.delete_all' do
    it "finds and deletes records" do
      post = Post.create(:title => 'title 1')
      Post.delete_all(:title => 'title 1')
      assert_equal [], Post.all.load
    end
  end
end
