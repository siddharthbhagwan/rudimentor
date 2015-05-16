require 'test_helper'

class BatchesControllerTest < ActionController::TestCase
  setup do
    @batch = batches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:batches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create batch" do
    assert_difference('Batch.count') do
      post :create, batch: { ability_beat: @batch.ability_beat, ability_bpm: @batch.ability_bpm, endurance_beat: @batch.endurance_beat, endurance_bpm: @batch.endurance_bpm, rudiment_number: @batch.rudiment_number, user_id: @batch.user_id }
    end

    assert_redirected_to batch_path(assigns(:batch))
  end

  test "should show batch" do
    get :show, id: @batch
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @batch
    assert_response :success
  end

  test "should update batch" do
    patch :update, id: @batch, batch: { ability_beat: @batch.ability_beat, ability_bpm: @batch.ability_bpm, endurance_beat: @batch.endurance_beat, endurance_bpm: @batch.endurance_bpm, rudiment_number: @batch.rudiment_number, user_id: @batch.user_id }
    assert_redirected_to batch_path(assigns(:batch))
  end

  test "should destroy batch" do
    assert_difference('Batch.count', -1) do
      delete :destroy, id: @batch
    end

    assert_redirected_to batches_path
  end
end
