require 'test_helper'

class TestimonialsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @testimonial = testimonials(:one)
  end

  test "should get index" do
    get testimonials_url, as: :json
    assert_response :success
  end

  test "should create testimonial" do
    assert_difference('Testimonial.count') do
      post testimonials_url, params: { testimonial: { body_text: @testimonial.body_text, client_name: @testimonial.client_name, image_url: @testimonial.image_url, service_id: @testimonial.service_id } }, as: :json
    end

    assert_response 201
  end

  test "should show testimonial" do
    get testimonial_url(@testimonial), as: :json
    assert_response :success
  end

  test "should update testimonial" do
    patch testimonial_url(@testimonial), params: { testimonial: { body_text: @testimonial.body_text, client_name: @testimonial.client_name, image_url: @testimonial.image_url, service_id: @testimonial.service_id } }, as: :json
    assert_response 200
  end

  test "should destroy testimonial" do
    assert_difference('Testimonial.count', -1) do
      delete testimonial_url(@testimonial), as: :json
    end

    assert_response 204
  end
end
