require 'rails_helper'

RSpec.describe UsersController do
  describe 'PUT /users/1/upload' do
    subject { put '/users/1/upload', params: params }

    let(:params) { { user: { avatar: avatar } } }
    let(:avatar) { fixture_file_upload('avatar.png') }

    context 'valid request' do
      it 'returns status success' do
        subject
        expect(response).to have_http_status :success
      end

      it 'returns a JSON response' do
        subject
        expect(JSON.parse(response.body)).to eql(
          'user' => {
            'id' => User.last.id,
            'username' => 'Test User',
            'pwd' => '',
            'token' => '',
          }
        )
      end

      # it 'create a avatar' do
      #   expect { subject }.to change { User.count }.from(0).to(1)
      # end

      it 'creates a blob ' do
        expect { subject }.to change { ActiveStorage::Blob.count }.from(0).to(1)
      end
    end
  end
end
